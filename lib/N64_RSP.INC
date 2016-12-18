//==============================
// N64 Reality Signal Processor
//==============================
// RSP CP2 Control Registers (CFC2/CTC2):
vco equ 0 // RSP CP2 Control Register 0: Vector Carry Out
vcc equ 1 // RSP CP2 Control Register 1: Vector Compare Code
vce equ 2// RSP CP2 Control Register 2: Vector Compare Extension

// RSP Status Read Flags:
RSP_HLT equ 0x0001 // SP_STATUS: Halt (Bit 0)
RSP_BRK equ 0x0002 // SP_STATUS: Break (Bit 1)
RSP_BSY equ 0x0004 // SP_STATUS: DMA Busy (Bit 2)
RSP_FUL equ 0x0008 // SP_STATUS: DMA Full (Bit 3)
RSP_IOF equ 0x0010 // SP_STATUS: IO Full (Bit 4)
RSP_STP equ 0x0020 // SP_STATUS: Single Step (Bit 5)
RSP_IOB equ 0x0040 // SP_STATUS: Interrupt On Break (Bit 6)
RSP_SG0 equ 0x0080 // SP_STATUS: Signal 0 Set (Bit 7)
RSP_SG1 equ 0x0100 // SP_STATUS: Signal 1 Set (Bit 8)
RSP_SG2 equ 0x0200 // SP_STATUS: Signal 2 Set (Bit 9)
RSP_SG3 equ 0x0400 // SP_STATUS: Signal 3 Set (Bit 10)
RSP_SG4 equ 0x0800 // SP_STATUS: Signal 4 Set (Bit 11)
RSP_SG5 equ 0x1000 // SP_STATUS: Signal 5 Set (Bit 12)
RSP_SG6 equ 0x2000 // SP_STATUS: Signal 6 Set (Bit 13)
RSP_SG7 equ 0x4000 // SP_STATUS: Signal 7 Set (Bit 14)

// RSP Status Write Flags:
CLR_HLT equ 0x0000001 // SP_STATUS: Clear Halt (Bit 0)
SET_HLT equ 0x0000002 // SP_STATUS:   Set Halt (Bit 1)
CLR_BRK equ 0x0000004 // SP_STATUS: Clear Broke (Bit 2)
CLR_INT equ 0x0000008 // SP_STATUS: Clear Interrupt (Bit 3)
SET_INT equ 0x0000010 // SP_STATUS:   Set Interrupt (Bit 4)
CLR_STP equ 0x0000020 // SP_STATUS: Clear Single Step (Bit 5)
SET_STP equ 0x0000040 // SP_STATUS:   Set Single Step (Bit 6)
CLR_IOB equ 0x0000080 // SP_STATUS: Clear Interrupt On Break (Bit 7)
SET_IOB equ 0x0000100 // SP_STATUS:   Set Interrupt On Break (Bit 8)
CLR_SG0 equ 0x0000200 // SP_STATUS: Clear Signal 0 (Bit 9)
SET_SG0 equ 0x0000400 // SP_STATUS:   Set Signal 0 (Bit 10)
CLR_SG1 equ 0x0000800 // SP_STATUS: Clear Signal 1 (Bit 11)
SET_SG1 equ 0x0001000 // SP_STATUS:   Set Signal 1 (Bit 12)
CLR_SG2 equ 0x0002000 // SP_STATUS: Clear Signal 2 (Bit 13)
SET_SG2 equ 0x0004000 // SP_STATUS:   Set Signal 2 (Bit 14)
CLR_SG3 equ 0x0008000 // SP_STATUS: Clear Signal 3 (Bit 15)
SET_SG3 equ 0x0010000 // SP_STATUS:   Set Signal 3 (Bit 16)
CLR_SG4 equ 0x0020000 // SP_STATUS: Clear Signal 4 (Bit 17)
SET_SG4 equ 0x0040000 // SP_STATUS:   Set Signal 4 (Bit 18)
CLR_SG5 equ 0x0080000 // SP_STATUS: Clear Signal 5 (Bit 19)
SET_SG5 equ 0x0100000 // SP_STATUS:   Set Signal 5 (Bit 20)
CLR_SG6 equ 0x0200000 // SP_STATUS: Clear Signal 6 (Bit 21)
SET_SG6 equ 0x0400000 // SP_STATUS:   Set Signal 6 (Bit 22)
CLR_SG7 equ 0x0800000 // SP_STATUS: Clear Signal 7 (Bit 23)
SET_SG7 equ 0x1000000 // SP_STATUS:   Set Signal 7 (Bit 24)

// RDP Status Read Flags:
RDP_XBS equ 0x0001 // DPC_STATUS: Use XBUS DMEM DMA Or DRAM DMA (Bit 0)
RDP_FRZ equ 0x0002 // DPC_STATUS: RDP Frozen (Bit 1)
RDP_FLS equ 0x0004 // DPC_STATUS: RDP Flushed (Bit 2)
RDP_GCL equ 0x0008 // DPC_STATUS: GCLK Alive (Bit 3)
RDP_TMB equ 0x0010 // DPC_STATUS: TMEM Busy (Bit 4)
RDP_PLB equ 0x0020 // DPC_STATUS: RDP PIPELINE Busy (Bit 5)
RDP_CMB equ 0x0040 // DPC_STATUS: RDP COMMAND Unit Busy (Bit 6)
RDP_CMR equ 0x0080 // DPC_STATUS: RDP COMMAND Buffer Ready (Bit 7)
RDP_DMA equ 0x0100 // DPC_STATUS: RDP DMA Busy (Bit 8)
RDP_CME equ 0x0200 // DPC_STATUS: RDP COMMAND END Register Valid (Bit 9)
RDP_CMS equ 0x0400 // DPC_STATUS: RDP COMMAND START Register Valid (Bit 10)

// RDP Status Write Flags:
CLR_XBS equ 0x001 // DPC_STATUS: Clear XBUS DMEM DMA (Bit 0)
SET_XBS equ 0x002 // DPC_STATUS:   Set XBUS DMEM DMA (Bit 1)
CLR_FRZ equ 0x004 // DPC_STATUS: Clear FREEZE (Bit 2)
SET_FRZ equ 0x008 // DPC_STATUS:   Set FREEZE (Bit 3)
CLR_FLS equ 0x010 // DPC_STATUS: Clear FLUSH (Bit 4)
SET_FLS equ 0x020 // DPC_STATUS:   Set FLUSH (Bit 5)
CLR_TMC equ 0x040 // DPC_STATUS: Clear TMEM COUNTER (Bit 6)
CLR_PLC equ 0x080 // DPC_STATUS: Clear PIPELINE COUNTER (Bit 7)
CLR_CMC equ 0x100 // DPC_STATUS: Clear COMMAND COUNTER (Bit 8)
CLR_CLK equ 0x200 // DPC_STATUS: Clear CLOCK COUNTER (Bit 9)

// CPU DMA
.macro DMASPRD, start, end, dest // DMA Data Read DRAM->RSP MEM: Start Address, End Address, Destination RSP MEM Address
  lui a0, SP_BASE // A0 = SP Base Register (0xA4040000)
  lui t0, SP_MEM_BASE // T0 = SP Memory Base Register (0xA4000000)
  ori t0, dest & 0x1FFF // T0 = SP Memory Address Offset (0xA4000000..0xA4001FFF 8KB)
  sw t0, SP_MEM_ADDR(a0) // Store Memory Offset To SP Memory Address Register (0xA4040000)
  la t0, start & 0x7FFFFFF // T0 = Aligned DRAM Physical RAM Offset (0x00000000..0x007FFFFF 8MB)
  sw t0, SP_DRAM_ADDR(a0) // Store RAM Offset To SP DRAM Address Register (0xA4040004)
  la t0, (end - start) - 1 // T0 = Length Of DMA Transfer In Bytes - 1
  sw t0, SP_RD_LEN(a0) // Store DMA Length To SP Read Length Register (0xA4040008)
.endmacro

.macro DMASPWR, start, end, source // DMA Data Write RSP MEM->DRAM: Start Address, End Address, Source RSP MEM Address
  lui a0, SP_BASE // A0 = SP Base Register (0xA4040000)
  lui t0, SP_MEM_BASE // T0 = SP Memory Base Register (0xA4000000)
  ori t0, source & 0x1FFF // T0 = SP Memory Address Offset (0xA4000000..0xA4001FFF 8KB)
  sw t0, SP_MEM_ADDR(a0) // Store Memory Offset To SP Memory Address Register (0xA4040000)
  la t0, start & 0x7FFFFFF // T0 = Aligned DRAM Physical RAM Offset (0x00000000..0x007FFFFF 8MB)
  sw t0, SP_DRAM_ADDR(a0) // Store RAM Offset To SP DRAM Address Register (0xA4040004)
  la t0, (end - start) - 1 // T0 = Length Of DMA Transfer In Bytes - 1
  sw t0, SP_WR_LEN(a0) // Store DMA Length To SP Write Length Register (0xA404000C)
.endmacro

// RSP DMA
.macro RSPDMASPRD, start, end, dest // DMA Data Read DRAM->RSP MEM: Start Address, End Address, Destination RSP MEM Address
  li a0, dest & 0x1FFF // A0 = SP Memory Address Offset (0xA4000000..0xA4001FFF 8KB)
  mtc0 a0, $0 // Store Memory Offset To SP Memory Address Register (0xA4040000)
  la a0, start & 0x7FFFFFF // A0 = Aligned DRAM Physical RAM Offset (0x00000000..0x007FFFFF 8MB)
  mtc0 a0, $1 // Store RAM Offset To SP DRAM Address Register (0xA4040004)
  la a0, (end - start) - 1 // A0 = Length Of DMA Transfer In Bytes - 1
  mtc0 a0, $2 // Store DMA Length To SP Read Length Register (0xA4040008)
.endmacro

.macro RSPDMASPWR, start, end, source // DMA Data Write RSP MEM->DRAM: Start Address, End Address, Source RSP MEM Address
  li a0, source & 0x1FFF // A0 = SP Memory Address Offset  equ 0xA4000000..0xA4001FFF 8KB)
  mtc0 a0, $0 // Store Memory Offset To SP Memory Address Register  equ 0xA4040000)
  la a0, start & 0x7FFFFFF // A0 = Aligned DRAM Physical RAM Offset  equ 0x00000000..0x007FFFFF 8MB)
  mtc0 a0, $1 // Store RAM Offset To SP DRAM Address Register  equ 0xA4040004)
  la a0, (end - start) -1 // A0 = Length Of DMA Transfer In Bytes - 1
  mtc0 a0, $3 // Store DMA Length To SP Write Length Register  equ 0xA404000C)
.endmacro

.macro RSPDPC, start, end // Run DPC Command Buffer: Start Address, End Address
  la a0, start // A0 = DPC Command Start Address
  mtc0 a0, $8 // Store DPC Command Start Address To DP Start Register  equ 0xA4100000)
  addi a0, end - start // A0 = DPC Command End Address
  mtc0 a0, $9 // Store DPC Command End Address To DP End Register  equ 0xA4100004)
.endmacro

