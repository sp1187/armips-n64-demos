// N64 'Bare Metal' RSP Gradient Demo by krom (Peter Lemon):
.create "RSPGradient.N64", 0x80000000
.n64
.fill 1052672 // Set ROM Size

.include "../../lib/N64.INC" // Include N64 Definitions
.include "../../lib/N64_GFX.INC" // Include Graphics Macros
.include "../../lib/N64_RSP.INC" // Include RSP Macros

.orga 0
.include "../../lib/N64_HEADER.ASM" // Include 64 Byte Header & Vector Table
.incbin "../../lib/N64_BOOTCODE.BIN" // Include 4032 Byte Boot Code

Start:
  N64_INIT // Run N64 Initialisation Routine

  ScreenNTSC 320, 240, BPP32, 0xA0100000 // Screen NTSC: 320x240, 32BPP, DRAM Origin 0xA0100000

  // Load RSP Code To IMEM
  DMASPRD RSPCode, RSPCodeEnd, SP_IMEM  // DMA Data Read DRAM->RSP MEM: Start Address, End Address, Destination RSP MEM Address

  // Load RSP Data To DMEM
  DMASPRD RSPData, RSPDataEnd, SP_DMEM  // DMA Data Read DRAM->RSP MEM: Start Address, End Address, Destination RSP MEM Address

  // Set RSP Program Counter
  lui a0, SP_PC_BASE // A0 = SP PC Base Register (0xA4080000)
  li t0, RSPStart // T0 = RSP Program Counter Set To Start Of RSP Code
  sw t0, SP_PC(a0) // Store RSP Program Counter To SP PC Register (0xA4080000)

  // Set RSP Status (Start Execution)
  lui a0, SP_BASE // A0 = SP Base Register (0xA4040000)
  li t0, CLR_HLT|CLR_BRK|CLR_INT|CLR_STP|CLR_IOB // T0 = RSP Status: Clear Halt, Broke, Interrupt, Single Step, Interrupt On Break
  sw t0, SP_STATUS(a0) // Run RSP Code: Store RSP Status To SP Status Register (0xA4040010)

Loop:
  j Loop
  nop // Delay Slot

.align 8 // Align 64-Bit
RSPCode:
.rsp
.headersize 0x0000 - orga() // Set Base Of RSP Code Object To Zero

RSPStart:
  lqv v1, 0x00(r0) // V1 = 128-Bit DMEM 0x000(R0), Load Quad To Vector: LQV VT[ELEMENT],0xOFFSET(BASE)
  li t0, 3840-16 // T0 = 3 Scanlines Quad Count
  li t1, 3839 // T1 = Length Of DMA Transfer In Bytes - 1
  li a1, SP_DMEM+16 // A1 = SP Memory Address Offset DMEM 0x010 (0xA4000000..0xA4001FFF 8KB)
  lui a2, 0x10 // A2 = Aligned DRAM Physical RAM Offset (0x00000000..0x007FFFFF 8MB)
  li a3, 0x100000 + (320 * 237 * 4) // A3 = Aligned DRAM Physical RAM Offset (0x00000000..0x007FFFFF 8MB)
LoopVRAM:
  move a0, r0 // A0 = 0
LoopScanline:
  lqv v0, 0x10(a0) // V0 = 128-Bit DMEM 0x010(A0), Load Quad To Vector: LQV VT[ELEMENT],0xOFFSET(BASE)
  vsubc v0, v1 // V0 = V0 - V1[0], Vector Subtract Short Elements With Carry: VSUBC VD,VS,VT[ELEMENT]
  sqv v0, 0x10(a0) // 128-Bit DMEM 0x010(A0) = V0, Store Vector To Quad: SQV VT[ELEMENT],0xOFFSET(BASE)
  bne a0, t0, LoopScanline
  addi a0, 16 // A0 += 16 (Delay Slot)

  mtc0 a1, $0 // Store Memory Offset To SP Memory Address Register (0xA4040000)
  mtc0 a2, $1 // Store RAM Offset To SP DRAM Address Register (0xA4040004)
  mtc0 t1, $3 // Store DMA Length To SP Write Length Register (0xA404000C)

  DMABusy:
    mfc0 t2, $4 // T2 = RSP Status Register (0xA4040010)
    andi t2, RSP_BSY|RSP_FUL // AND RSP Status Status With 0xC (Bit 2 = DMA Is Busy, Bit 3 = DMA Is Full)
    bnez t2, DMABusy // IF TRUE DMA Is Busy
    nop // Delay Slot

  bne a2, a3, LoopVRAM
  addi a2, 3840 // A2 += 3840 (Delay Slot)

  break // Set SP Status Halt, Broke & Check For Interrupt, Set SP Program Counter To 0x0000
.align 8 // Align 64-Bit

.headersize 0x80000000 // Set End Of RSP Code Object
.n64
RSPCodeEnd:

RSPData:
  .dw 0x11111111,0x11111111,0x11111111,0x11111111 // 4*32B Subtract Vector

  .fill 320 * 3 * 4, 0xFF

RSPDataEnd:
.close
