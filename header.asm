//============
// N64 Header
//============
// PI_BSB_DOM1
  db $80 // Initial PI_BSB_DOM1_LAT_REG Value
  db $37 // Initial PI_BSB_DOM1_PGS_REG Value
  db $12 // Initial PI_BSB_DOM1_PWD_REG Value
  db $40 // Initial PI_BSB_DOM1_PGS_REG Value

// CLOCK RATE
  dw $0F // Initial Clock Rate

// VECTOR
  dw Start // Boot Address Offset
  dw $1449 // Release Offset

// COMPLEMENT CHECK & CHECKSUM
  dw $CA12B547 // CRC1: COMPLEMENT CHECK
  dw $71FA4EE4 // CRC2: CHECKSUM

  dd 0 // UNUSED

// PROGRAM TITLE (27 Byte ASCII String, Use Spaces For Unused Bytes)
  db "POKEMON SNAP        "
  rpt(0,7)

// DEVELOPER ID CODE 
  db "N" // "N" = Nintendo

// CARTRIDGE ID CODE
  db "PF"
  
// COUNTRY CODE 
  db "E" // "E" = USA

  db 0 // UNUSED