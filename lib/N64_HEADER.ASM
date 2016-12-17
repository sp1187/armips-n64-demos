//============
// N64 Header
//============
// PI_BSB_DOM1
  .db 0x80 // Initial PI_BSB_DOM1_LAT_REG Value
  .db 0x37 // Initial PI_BSB_DOM1_PGS_REG Value
  .db 0x12 // Initial PI_BSB_DOM1_PWD_REG Value
  .db 0x40 // Initial PI_BSB_DOM1_PGS_REG Value

// CLOCK RATE
  .dw 0x000F // Initial Clock Rate

// VECTOR
  .dw Start // Boot Address Offset
  .dw 0x1444 // Release Offset

// COMPLEMENT CHECK & CHECKSUM
  .db "CRC1" // CRC1: COMPLEMENT CHECK
  .db "CRC2" // CRC2: CHECKSUM

  .dd 0 // UNUSED

// PROGRAM TITLE (27 Byte ASCII String, Use Spaces For Unused Bytes)
  .db "N64 PROGRAM TITLE          "
//    "123456789012345678901234567"

// DEVELOPER ID CODE 
  .db 0x00 // "N" = Nintendo

// CARTRIDGE ID CODE
  .db 0x00, 0x00 // UNUSED

// COUNTRY CODE 
  .db 0x00 // "D" = Germany, "E" = USA, "J" = Japan, "P" = Europe, "U" = Australia

  .db 0x00 // UNUSED
