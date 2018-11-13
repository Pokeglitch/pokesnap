//----------
// SETUP
//----------

arch n64.cpu
endian msb // N64 MIPS requires Big-Endian Encoding (Most Significant Bit)

// Initialize the baserom
origin $00000000
insert "baserom.z64"

// Include N64 Definitions
include "LIB/N64.INC"

// Macros
include "macros/macros.asm"

// ROM
origin $00000000
base $A4000000
include "header.asm"
include "bootcode.asm"

// Game Code
base $80100400
Start: