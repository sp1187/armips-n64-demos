//==============
// N64 Graphics
//==============
BPP0 equ 0x0000  // VI Status/Control: Color Depth Blank (No Data Or Sync) (Bit 0..1)
//*RESERVED* equ 0x0001   // VI Status/Control: Color Depth Reserved (Bit 0..1)
BPP16 equ 0x0002 // VI Status/Control: Color Depth 16BPP R5/G5/B5/A1 (Bit 0..1)
BPP32 equ 0x0003 // VI Status/Control: Color Depth 32BPP R8/G8/B8/A8 (Bit 0..1)
GAMMA_DITHER_EN equ 0x00004 // VI Status/Control: Gamma Dither Enable (Requires: Gamma Enable) (Bit 2)
GAMMA_EN equ 0x00008        // VI Status/Control: Gamma Enable (Gamma Boost For YUV Images) (Bit 3)
DIVOT_EN equ 0x00010    // VI Status/Control: Divot Enable (Used With Anti-alias) (Bit 4)
VBUS_CLK_EN equ 0x00020 // VI Status/Control: Video Bus Clock Enable (Bit 5)
INTERLACE equ 0x00040 // VI Status/Control: Interlace/Serrate (Used With Interlaced Display) (Bit 6)
TST_MODE equ 0x00080  // VI Status/Control: Test Mode (Bit 7)
AA_MODE_0 equ 0x00000 // VI Status/Control: AA Mode 0 = Anti­-alias & Resample (Always Fetch Extra Lines) (Bit 8..9)
AA_MODE_1 equ 0x00100 // VI Status/Control: AA Mode 1 = Anti­-alias & Resample (Fetch Extra Lines When Needed) (Bit 8..9)
AA_MODE_2 equ 0x00200 // VI Status/Control: AA Mode 2 = Resample Only (Bit 8..9)
AA_MODE_3 equ 0x00300 // VI Status/Control: AA Mode 3 = Replicate Pixels & No Interpolation (Bit 8..9)
DIAG_0 equ 0x00400 // VI Status/Control: Diagnotic 0 (Bit 10..11)
DIAG_1 equ 0x00800 // VI Status/Control: Diagnotic 1 (Bit 10..11)
PIXEL_ADV_0 equ 0x00000 // VI Status/Control: Pixel Advance 0 (Bit 12..15)
PIXEL_ADV_1 equ 0x01000 // VI Status/Control: Pixel Advance 1 (Bit 12..15)
PIXEL_ADV_2 equ 0x02000 // VI Status/Control: Pixel Advance 2 (Bit 12..15)
PIXEL_ADV_3 equ 0x03000 // VI Status/Control: Pixel Advance 3 (Bit 12..15)
PIXEL_ADV_4 equ 0x04000 // VI Status/Control: Pixel Advance 4 (Bit 12..15)
PIXEL_ADV_5 equ 0x05000 // VI Status/Control: Pixel Advance 5 (Bit 12..15)
PIXEL_ADV_6 equ 0x06000 // VI Status/Control: Pixel Advance 6 (Bit 12..15)
PIXEL_ADV_7 equ 0x07000 // VI Status/Control: Pixel Advance 7 (Bit 12..15)
PIXEL_ADV_8 equ 0x08000 // VI Status/Control: Pixel Advance 8 (Bit 12..15)
PIXEL_ADV_9 equ 0x09000 // VI Status/Control: Pixel Advance 9 (Bit 12..15)
PIXEL_ADV_A equ 0x0A000 // VI Status/Control: Pixel Advance A (Bit 12..15)
PIXEL_ADV_B equ 0x0B000 // VI Status/Control: Pixel Advance B (Bit 12..15)
PIXEL_ADV_C equ 0x0C000 // VI Status/Control: Pixel Advance C (Bit 12..15)
PIXEL_ADV_D equ 0x0D000 // VI Status/Control: Pixel Advance D (Bit 12..15)
PIXEL_ADV_E equ 0x0E000 // VI Status/Control: Pixel Advance E (Bit 12..15)
PIXEL_ADV_F equ 0x0F000 // VI Status/Control: Pixel Advance F (Bit 12..15)
DITHER_FILTER_EN equ 0x10000 // VI Status/Control: Dither Filter Enable (Used With 16BPP Display) (Bit 16)

.macro ScreenNTSC, width, height, status, origin
  lui a0, VI_BASE      // A0 = VI Base Register (0xA4400000)
  li t0, status        // T0 = Status/Control
  sw t0, VI_STATUS(a0) // Store Status/Control To VI Status Register (0xA4400000)
  la t0, origin        // T0 = Origin (Frame Buffer Origin In Bytes)
  sw t0, VI_ORIGIN(a0) // Store Origin To VI Origin Register (0xA4400004)
  li t0, width         // T0 = Width (Frame Buffer Line Width In Pixels)
  sw t0, VI_WIDTH(a0)  // Store Width To VI Width Register (0xA4400008)
  li t0, 0x200         // T0 = Vertical Interrupt (Interrupt When Current Half-Line 0x200)
  sw t0, VI_V_INTR(a0) // Store Vertical Interrupt To VI Interrupt Register (0xA440000C)
  li t0, 0                     // T0 = Current Vertical Line (Current Half-Line, Sampled Once Per Line = 0)
  sw t0, VI_V_CURRENT_LINE(a0) // Store Current Vertical Line To VI Current Register (0xA4400010)
  li t0, 0x3E52239             // T0 = Video Timing (Start Of Color Burst In Pixels from H-Sync = 3, Vertical Sync Width In Half Lines = 229, Color Burst Width In Pixels = 34, Horizontal Sync Width In Pixels = 57)
  sw t0, VI_TIMING(a0) // Store Video Timing To VI Burst Register (0xA4400014)
  li t0, 0x20D         // T0 = Vertical Sync (Number Of Half-Lines Per Field = 525)
  sw t0, VI_V_SYNC(a0) // Store Vertical Sync To VI V Sync Register (0xA4400018)
  li t0, 0xC15         // T0 = Horizontal Sync (5-bit Leap Pattern Used For PAL only = 0, Total Duration Of A Line In 1/4 Pixel = 3093)
  sw t0, VI_H_SYNC(a0) // Store Horizontal Sync To VI H Sync Register (0xA440001C)
  li t0, 0xC150C15           // T0 = Horizontal Sync Leap (Identical To H Sync = 3093, Identical To H Sync = 3093)
  sw t0, VI_H_SYNC_LEAP(a0) // Store Horizontal Sync Leap To VI Leap Register (0xA4400020)
  li t0, 0x6C02EC        // T0 = Horizontal Video (Start Of Active Video In Screen Pixels = 108, End Of Active Video In Screen Pixels = 748)
  sw t0, VI_H_VIDEO(a0) // Store Horizontal Video To VI H Start Register (0xA4400024)
  li t0, 0x2501FF        // T0 = Vertical Video (Start Of Active Video In Screen Half-Lines = 37, End Of Active Video In Screen Half-Lines = 511)
  sw t0, VI_V_VIDEO(a0) // Store Vertical Video To VI V Start Register (0xA4400028)
  li t0, 0xE0204         // T0 = Vertical Burst (Start Of Color Burst Enable In Half-Lines = 14, End Of Color Burst Enable In Half-Lines = 516)
  sw t0, VI_V_BURST(a0) // Store Vertical Burst To VI V Burst Register (0xA440002C)
  li t0, (0x100 * (width / 160)) // T0 = X-Scale (Horizontal Subpixel Offset In 2.10 Format = 0, 1/Horizontal Scale Up Factor In 2.10 Format)
  sw t0, VI_X_SCALE(a0)        // Store X-Scale To VI X Scale Register (0xA4400030)
  li t0, (0x100 * (height / 60)) // T0 = Y-Scale (Vertical Subpixel Offset In 2.10 Format = 0, 1/Vertical Scale Up Factor In 2.10 Format)
  sw t0, VI_Y_SCALE(a0)        // Store Y-Scale To VI Y Scale Register (0xA4400034)
.endmacro

.macro ScreenPAL, width, height, status, origin
  lui a0, VI_BASE // A0 = VI Base Register (0xA4400000)
  li t0, status        // T0 = Status/Control
  sw t0, VI_STATUS(a0) // Store Status/Control To VI Status Register (0xA4400000)
  la t0, origin        // T0 = Origin (Frame Buffer Origin In Bytes)
  sw t0, VI_ORIGIN(a0) // Store Origin To VI Origin Register (0xA4400004)
  li t0, width         // T0 = Width (Frame Buffer Line Width In Pixels)
  sw t0, VI_WIDTH(a0)  // Store Width To VI Width Register (0xA4400008)
  li t0, 0x200         // T0 = Vertical Interrupt (Interrupt When Current Half-Line 0x200)
  sw t0, VI_V_INTR(a0) // Store Vertical Interrupt To VI Interrupt Register (0xA440000C)
  li t0, 0            // T0 = Current Vertical Line (Current Half-Line, Sampled Once Per Line = 0)
  sw t0, VI_V_CURRENT_LINE(a0) // Store Current Vertical Line To VI Current Register (0xA4400010)
  li t0, 0x404233A      // T0 = Video Timing (Start Of Color Burst In Pixels from H-Sync = 4, Vertical Sync Width In Half Lines = 04, Color Burst Width In Pixels = 35, Horizontal Sync Width In Pixels = 58)
  sw t0, VI_TIMING(a0) // Store Video Timing To VI Burst Register (0xA4400014)
  li t0, 0x271         // T0 = Vertical Sync (Number Of Half-Lines Per Field = 625)
  sw t0, VI_V_SYNC(a0) // Store Vertical Sync To VI V Sync Register (0xA4400018)
  li t0, 0x150C69       // T0 = Horizontal Sync (5-bit Leap Pattern Used For PAL only = 21: %10101, Total Duration Of A Line In 1/4 Pixel = 3177)
  sw t0, VI_H_SYNC(a0) // Store Horizontal Sync To VI H Sync Register (0xA440001C)
  li t0, 0xC6F0C6E           // T0 = Horizontal Sync Leap (Identical To H Sync = 3183, Identical To H Sync = 3182)
  sw t0, VI_H_SYNC_LEAP(a0) // Store Horizontal Sync Leap To VI Leap Register (0xA4400020)
  li t0, 0x800300        // T0 = Horizontal Video (Start Of Active Video In Screen Pixels = 128, End Of Active Video In Screen Pixels = 768)
  sw t0, VI_H_VIDEO(a0) // Store Horizontal Video To VI H Start Register (0xA4400024)
  li t0, 0x5F0239        // T0 = Vertical Video (Start Of Active Video In Screen Half-Lines = 95, End Of Active Video In Screen Half-Lines = 569)
  sw t0, VI_V_VIDEO(a0) // Store Vertical Video To VI V Start Register (0xA4400028)
  li t0, 0x9026B         // T0 = Vertical Burst (Start Of Color Burst Enable In Half-Lines = 9, End Of Color Burst Enable In Half-Lines = 619)
  sw t0, VI_V_BURST(a0) // Store Vertical Burst To VI V Burst Register (0xA440002C)
  li t0, (0x100 * (width / 160)) // T0 = X-Scale (Horizontal Subpixel Offset In 2.10 Format = 0, 1/Horizontal Scale Up Factor In 2.10 Format)
  sw t0, VI_X_SCALE(a0)        // Store X-Scale To VI X Scale Register (0xA4400030)
  lli t0, (0x100 * (height /60)) // T0 = Y-Scale (Vertical Subpixel Offset In 2.10 Format = 0, 1/Vertical Scale Up Factor In 2.10 Format)
  sw t0, VI_Y_SCALE(a0)        // Store Y-Scale To VI Y Scale Register (0xA4400034)
.endmacro

.macro WaitScanline, scanline // Wait For RDP To Reach Scanline
  lui a0, VI_BASE // A0 = VI Base Register (0xA4400000)
  li t0, scanline  // T0 = Scan Line
  @@L0:
    lw t1, VI_V_CURRENT_LINE(a0) // T1 = Current Scan Line
    bne t1, t0, @@L0 // IF (Current Scan Line != Scan Line) Wait
    nop // ELSE Continue (Delay Slot)
.endmacro

// RDP Commands
.macro DPC, start, end // Run DPC Command Buffer: Start Address, End Address
  lui a0, DPC_BASE // A0 = Reality Display Processer Control Interface Base Register (0xA4100000)
  la a1, start // A1 = DPC Command Start Address
  sw a1, DPC_START(a0) // Store DPC Command Start Address To DP Start Register (0xA4100000)
  la a1, end // A1 = DPC Command End Address
  sw a1, DPC_END(a0) // Store DPC Command End Address To DP End Register (0xA4100004)
.endmacro
