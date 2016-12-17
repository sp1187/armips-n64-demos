//=============
// N64 Include
//=============

// Memory Map
RDRAM equ 0xA000 // 0x00000000..0x003FFFFF RDRAM Memory 4MB  equ 0x00000000..0x007FFFFF 8MB With Expansion Pak)

RDRAM_BASE equ 0xA3F0       // 0x03F00000..0x03F00027 RDRAM Base Register
RDRAM_DEVICE_TYPE equ 0x00  // 0x03F00000..0x03F00003 RDRAM: Device Type Register
RDRAM_DEVICE_ID equ 0x04    // 0x03F00004..0x03F00007 RDRAM: Device ID Register
RDRAM_DELAY equ 0x08        // 0x03F00008..0x03F0000B RDRAM: Delay Register
RDRAM_MODE equ 0x0C         // 0x03F0000C..0x03F0000F RDRAM: Mode Register
RDRAM_REF_INTERVAL equ 0x10 // 0x03F00010..0x03F00013 RDRAM: Ref Interval Register
RDRAM_REF_ROW equ 0x14      // 0x03F00014..0x03F00017 RDRAM: Ref Row Register
RDRAM_RAS_INTERVAL equ 0x18 // 0x03F00018..0x03F0001B RDRAM: Ras Interval Register
RDRAM_MIN_INTERVAL equ 0x1C // 0x03F0001C..0x03F0001F RDRAM: Minimum Interval Register
RDRAM_ADDR_SELECT equ 0x20  // 0x03F00020..0x03F00023 RDRAM: Address Select Register
RDRAM_DEVICE_MANUF equ 0x24 // 0x03F00024..0x03F00027 RDRAM: Device Manufacturer Register

SP_MEM_BASE equ 0xA400 // 0x04000000..0x04000FFF SP MEM Base Register
SP_DMEM equ 0x0000     // 0x04000000..0x04000FFF SP: RSP DMEM (4096 Bytes)
SP_IMEM equ 0x1000     // 0x04001000..0x04001FFF SP: RSP IMEM (4096 Bytes)

SP_BASE equ 0xA404    // 0x04040000..0x0404001F SP Base Register
SP_MEM_ADDR equ 0x00  // 0x04040000..0x04040003 SP: Master, SP Memory Address Register
SP_DRAM_ADDR equ 0x04 // 0x04040004..0x04040007 SP: Slave, SP DRAM DMA Address Register
SP_RD_LEN equ 0x08    // 0x04040008..0x0404000B SP: Read DMA Length Register
SP_WR_LEN equ 0x0C    // 0x0404000C..0x0404000F SP: Write DMA Length Register
SP_STATUS equ 0x10    // 0x04040010..0x04040013 SP: Status Register
SP_DMA_FULL equ 0x14  // 0x04040014..0x04040017 SP: DMA Full Register
SP_DMA_BUSY equ 0x18  // 0x04040018..0x0404001B SP: DMA Busy Register
SP_SEMAPHORE equ 0x1C // 0x0404001C..0x0404001F SP: Semaphore Register

SP_PC_BASE equ 0xA408 // 0x04080000..0x04080007 SP PC Base Register
SP_PC equ 0x00        // 0x04080000..0x04080003 SP: PC Register
SP_IBIST_REG equ 0x04 // 0x04080004..0x04080007 SP: IMEM BIST Register

DPC_BASE equ 0xA410   // 0x04100000..0x0410001F DP Command (DPC) Base Register
DPC_START equ 0x00    // 0x04100000..0x04100003 DPC: CMD DMA Start Register
DPC_END equ 0x04      // 0x04100004..0x04100007 DPC: CMD DMA End Register
DPC_CURRENT equ 0x08  // 0x04100008..0x0410000B DPC: CMD DMA Current Register
DPC_STATUS equ 0x0C   // 0x0410000C..0x0410000F DPC: CMD Status Register
DPC_CLOCK equ 0x10    // 0x04100010..0x04100013 DPC: Clock Counter Register
DPC_BUFBUSY equ 0x14  // 0x04100014..0x04100017 DPC: Buffer Busy Counter Register
DPC_PIPEBUSY equ 0x18 // 0x04100018..0x0410001B DPC: Pipe Busy Counter Register
DPC_TMEM equ 0x1C     // 0x0410001C..0x0410001F DPC: TMEM Load Counter Register

DPS_BASE equ 0xA420       // 0x04200000..0x0420000F DP Span (DPS) Base Register
DPS_TBIST equ 0x00        // 0x04200000..0x04200003 DPS: Tmem Bist Register
DPS_TEST_MODE equ 0x04    // 0x04200004..0x04200007 DPS: Span Test Mode Register
DPS_BUFTEST_ADDR equ 0x08 // 0x04200008..0x0420000B DPS: Span Buffer Test Address Register
DPS_BUFTEST_DATA equ 0x0C // 0x0420000C..0x0420000F DPS: Span Buffer Test Data Register

MI_BASE equ 0xA430    // 0x04300000..0x0430000F MIPS Interface (MI) Base Register
MI_INIT_MODE equ 0x00 // 0x04300000..0x04300003 MI: Init Mode Register
MI_VERSION equ 0x04   // 0x04300004..0x04300007 MI: Version Register
MI_INTR equ 0x08      // 0x04300008..0x0430000B MI: Interrupt Register
MI_INTR_MASK equ 0x0C // 0x0430000C..0x0430000F MI: Interrupt Mask Register

VI_BASE equ 0xA440         // 0x04400000..0x04400037 Video Interface (VI) Base Register
VI_STATUS equ 0x00         // 0x04400000..0x04400003 VI: Status/Control Register
VI_ORIGIN equ 0x04         // 0x04400004..0x04400007 VI: Origin Register
VI_WIDTH equ 0x08          // 0x04400008..0x0440000B VI: Width Register
VI_V_INTR equ 0x0C         // 0x0440000C..0x0440000F VI: Vertical Interrupt Register
VI_V_CURRENT_LINE equ 0x10 // 0x04400010..0x04400013 VI: Current Vertical Line Register
VI_TIMING equ 0x14         // 0x04400014..0x04400017 VI: Video Timing Register
VI_V_SYNC equ 0x18         // 0x04400018..0x0440001B VI: Vertical Sync Register
VI_H_SYNC equ 0x1C         // 0x0440001C..0x0440001F VI: Horizontal Sync Register
VI_H_SYNC_LEAP equ 0x20    // 0x04400020..0x04400023 VI: Horizontal Sync Leap Register
VI_H_VIDEO equ 0x24        // 0x04400024..0x04400027 VI: Horizontal Video Register
VI_V_VIDEO equ 0x28        // 0x04400028..0x0440002B VI: Vertical Video Register
VI_V_BURST equ 0x2C        // 0x0440002C..0x0440002F VI: Vertical Burst Register
VI_X_SCALE equ 0x30        // 0x04400030..0x04400033 VI: X-Scale Register
VI_Y_SCALE equ 0x34        // 0x04400034..0x04400037 VI: Y-Scale Register

AI_BASE equ 0xA450    // 0x04500000..0x04500017 Audio Interface (AI) Base Register
AI_DRAM_ADDR equ 0x00 // 0x04500000..0x04500003 AI: DRAM Address Register
AI_LEN equ 0x04       // 0x04500004..0x04500007 AI: Length Register
AI_CONTROL equ 0x08   // 0x04500008..0x0450000B AI: Control Register
AI_STATUS equ 0x0C    // 0x0450000C..0x0450000F AI: Status Register
AI_DACRATE equ 0x10   // 0x04500010..0x04500013 AI: DAC Sample Period Register
AI_BITRATE equ 0x14   // 0x04500014..0x04500017 AI: Bit Rate Register

PI_BASE equ 0xA460       // 0x04600000..0x04600033 Peripheral Interface (PI) Base Register
PI_DRAM_ADDR equ 0x00    // 0x04600000..0x04600003 PI: DRAM Address Register
PI_CART_ADDR equ 0x04    // 0x04600004..0x04600007 PI: Pbus (Cartridge) Address Register
PI_RD_LEN equ 0x08       // 0x04600008..0x0460000B PI: Read Length Register
PI_WR_LEN equ 0x0C       // 0x0460000C..0x0460000F PI: Write length register
PI_STATUS equ 0x10       // 0x04600010..0x04600013 PI: Status Register
PI_BSD_DOM1_LAT equ 0x14 // 0x04600014..0x04600017 PI: Domain 1 Latency Register
PI_BSD_DOM1_PWD equ 0x18 // 0x04600018..0x0460001B PI: Domain 1 Pulse Width Register
PI_BSD_DOM1_PGS equ 0x1C // 0x0460001C..0x0460001F PI: Domain 1 Page Size Register
PI_BSD_DOM1_RLS equ 0x20 // 0x04600020..0x04600023 PI: Domain 1 Release Register
PI_BSD_DOM2_LAT equ 0x24 // 0x04600024..0x04600027 PI: Domain 2 Latency Register
PI_BSD_DOM2_PWD equ 0x28 // 0x04600028..0x0460002B PI: Domain 2 Pulse Width Register
PI_BSD_DOM2_PGS equ 0x2C // 0x0460002C..0x0460002F PI: Domain 2 Page Size Register
PI_BSD_DOM2_RLS equ 0x30 // 0x04600030..0x04600033 PI: Domain 2 Release Register

RI_BASE equ 0xA470       // 0x04700000..0x0470001F RDRAM Interface (RI) Base Register
RI_MODE equ 0x00         // 0x04700000..0x04700003 RI: Mode Register
RI_CONFIG equ 0x04       // 0x04700004..0x04700007 RI: Config Register
RI_CURRENT_LOAD equ 0x08 // 0x04700008..0x0470000B RI: Current Load Register
RI_SELECT equ 0x0C       // 0x0470000C..0x0470000F RI: Select Register
RI_REFRESH equ 0x10      // 0x04700010..0x04700013 RI: Refresh Register
RI_LATENCY equ 0x14      // 0x04700014..0x04700017 RI: Latency Register
RI_RERROR equ 0x18       // 0x04700018..0x0470001B RI: Read Error Register
RI_WERROR equ 0x1C       // 0x0470001C..0x0470001F RI: Write Error Register

SI_BASE equ 0xA480         // 0x04800000..0x0480001B Serial Interface (SI) Base Register
SI_DRAM_ADDR equ 0x00      // 0x04800000..0x04800003 SI: DRAM Address Register
SI_PIF_ADDR_RD64B equ 0x04 // 0x04800004..0x04800007 SI: Address Read 64B Register
//*RESERVED* equ 0x08               // 0x04800008..0x0480000B SI: Reserved Register
//*RESERVED* equ 0x0C               // 0x0480000C..0x0480000F SI: Reserved Register
SI_PIF_ADDR_WR64B equ 0x10 // 0x04800010..0x04800013 SI: Address Write 64B Register
//*RESERVED* equ 0x14               // 0x04800014..0x04800017 SI: Reserved Register
SI_STATUS equ 0x18         // 0x04800018..0x0480001B SI: Status Register

CART_DOM2_ADDR1 equ 0xA500 // 0x05000000..0x0507FFFF Cartridge Domain 2(Address 1) SRAM
CART_DOM1_ADDR1 equ 0xA600 // 0x06000000..0x07FFFFFF Cartridge Domain 1(Address 1) 64DD
CART_DOM2_ADDR2 equ 0xA800 // 0x08000000..0x0FFFFFFF Cartridge Domain 2(Address 2) SRAM
CART_DOM1_ADDR2 equ 0xB000 // 0x10000000..0x18000803 Cartridge Domain 1(Address 2) ROM

PIF_BASE equ 0xBFC0 // 0x1FC00000..0x1FC007BF PIF Base Register
PIF_ROM equ 0x000   // 0x1FC00000..0x1FC007BF PIF: Boot ROM
PIF_RAM equ 0x7C0   // 0x1FC007C0..0x1FC007FF PIF: RAM (JoyChannel)
PIF_HWORD equ 0x7C4 // 0x1FC007C4..0x1FC007C5 PIF: HWORD
PIF_XBYTE equ 0x7C6 // 0x1FC007C6 PIF: Analog X Byte
PIF_YBYTE equ 0x7C7 // 0x1FC007C7 PIF: Analog Y Byte

CART_DOM1_ADDR3 equ 0xBFD0 // 0x1FD00000..0x7FFFFFFF Cartridge Domain 1 (Address 3)

EXT_SYS_AD equ 0x8000 // 0x80000000..0xFFFFFFFF External SysAD Device

VI_NTSC_CLOCK equ 48681812 // NTSC: Hz = 48.681812 MHz
VI_PAL_CLOCK equ 49656530  // PAL:  Hz = 49.656530 MHz
VI_MPAL_CLOCK equ 48628316 // MPAL: Hz = 48.628316 MHz

.macro N64_INIT // Initialise N64 (Stop N64 From Crashing 5 Seconds After Boot)
  lui a0, PIF_BASE // A0 = PIF Base Register (0xBFC00000)
  li t0, 8
  sw t0, PIF_RAM+0x3C(a0)
.endmacro

.macro DMA, start, end, dest // DMA Data Copy Cart->DRAM: Start Cart Address, End Cart Address, Destination DRAM Address
  lui a0, PI_BASE // A0 = PI Base Register (0xA4600000)
  @@1:
    lw t0, PI_STATUS(a0) // T0 = Word From PI Status Register (0xA4600010)
    andi t0, 3 // AND PI Status With 3
    bnez t0, @@1 // IF TRUE DMA Is Busy
    nop // Delay Slot

  la t0, dest & 0x7FFFFF // T0 = Aligned DRAM Physical RAM Offset (0x00000000..0x007FFFFF 8MB)
  sw t0, PI_DRAM_ADDR(a0) // Store RAM Offset To PI DRAM Address Register (0xA4600000)
  la t0, 0x10000000 | (start & 0x3FFFFFF) // T0 = Aligned Cart Physical ROM Offset (0x10000000..0x13FFFFFF 64MB)
  sw t0, PI_CART_ADDR(a0) // Store ROM Offset To PI Cart Address Register (0xA4600004)
  la t0, ({end} - {start}) - 1 // T0 = Length Of DMA Transfer In Bytes - 1
  sw t0, PI_WR_LEN(a0) // Store DMA Length To PI Write Length Register (0xA460000C)
.endmacro
