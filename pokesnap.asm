//----------
// SETUP
//----------

arch n64.cpu
endian msb // N64 MIPS requires Big-Endian Encoding (Most Significant Bit)
output "pokesnap.z64", create

// Initialize the baserom
origin $00000000
insert "baserom.z64"

//----------
// MACROS
//----------

// Place repeating data
macro rpt(value, size) {
  while {size} > 0 {
    db {value}
    evaluate size({size} - 1)
  }
}

//----------
// ROM
//----------

// ROM Header
origin $00000000
dw $80371240              // ROM Validate
dw $0000000F              // Clock Rate
dw $80100400              // Game Offset
dw $00001449              // Release
dw $CA12B547              // CRC1
dw $71FA4EE4              // CRC2
rpt(0,8)
db "POKEMON SNAP        " // ROM Name
rpt(0,7)
db $4E                    // Manufacturer ID
db $50, $46               // Cartridge ID
db $45, $00               // Country Code

// Boot Code
// TODO