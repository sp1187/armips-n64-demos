// N64 'Bare Metal' 32BPP 320x240 Hello World Demo by krom (Peter Lemon):

.create  "HelloWorldCPU32BPP320X240.N64", 0x80000000
.n64
.fill 1052672 // Set ROM Size

.include "../lib/N64.INC" // Include N64 Definitions
.include "../lib/N64_GFX.INC" // Include Graphics Macros

// Setup Frame Buffer
SCREEN_X equ 320
SCREEN_Y equ 240
BYTES_PER_PIXEL equ 4

// Setup Characters
CHAR_X equ 8
CHAR_Y equ 8

.macro PrintString, vram, xpos, ypos, fontfile, string, length // Print Text String To VRAM Using Font At X,Y Position
  li a0, vram + (xpos * BYTES_PER_PIXEL) + (SCREEN_X * BYTES_PER_PIXEL * ypos) // A0 = Frame Buffer Pointer (Place text at XY Position)
  la a1, fontfile // A1 = Characters
  la a2, string // A2 = Text Offset
  li t0, length // T0 = Number of Text Characters to Print
  @@DrawChars:
    li t1, CHAR_X-1 // T1 = Character X Pixel Counter
    li t2, CHAR_Y-1 // T2 = Character Y Pixel Counter

    lb t3, 0(a2) // T3 = Next Text Character
    addi a2, 1

    sll t3, 8 // Add Shift to Correct Position in Font (*256: CHAR_X*CHAR_Y*BYTES_PER_PIXEL)
    add t3, a1

    @@DrawCharX:
      lw t4, 0(t3) // Load Font Text Character Pixel
      addi t3, BYTES_PER_PIXEL
      sw t4, 0(a0) // Store Font Text Character Pixel into Frame Buffer
      addi a0, BYTES_PER_PIXEL

      bnez t1, @@DrawCharX // IF (Character X Pixel Counter != 0) DrawCharX
      subi t1, 1 // Decrement Character X Pixel Counter

      addi a0, (SCREEN_X * BYTES_PER_PIXEL) - CHAR_X * BYTES_PER_PIXEL // Jump Down 1 Scanline, Jump Back 1 Char
      li t1, CHAR_X-1 // Reset Character X Pixel Counter
      bnez t2, @@DrawCharX // IF (Character Y Pixel Counter != 0) DrawCharX
      subi t2, 1 // Decrement Character Y Pixel Counter

    subi a0, ((SCREEN_X * BYTES_PER_PIXEL) * CHAR_Y) - CHAR_X * BYTES_PER_PIXEL // Jump To Start Of Next Char
    bnez t0, @@DrawChars // Continue to Print Characters
    subi t0, 1 // Subtract Number of Text Characters to Print
.endmacro

.orga 0
.include "../lib/N64_HEADER.ASM" // Include 64 Byte Header & Vector Table
.incbin "../lib/N64_BOOTCODE.BIN" // Include 4032 Byte Boot Code

Start:
  N64_INIT // Run N64 Initialisation Routine

  ScreenNTSC 320, 240, BPP32, 0xA0100000  // Screen NTSC: 320x240, 32BPP, DRAM Origin = 0xA0100000

  PrintString 0xA0100000, 128, 32, FontBlack, Text, 11 // Print Text String To VRAM Using Font At X,Y Position
  PrintString 0xA0100000, 192, 96, FontRed, Text, 11 // Print Text String To VRAM Using Font At X,Y Position

Loop:
  j Loop
  nop // Delay Slot

Text:
  .db "Hello World!"

.align 4 // Align 32-Bit
FontBlack:
.incbin "FontBlack8x8.bin"
FontRed:
.incbin "FontRed8x8.bin"

.close
