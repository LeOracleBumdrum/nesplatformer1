; my very first NES program

.segment "HEADER"
.byte "NES", $1A
.byte $02
.byte $01
.byte $00
.byte $00

.segment "CODE"
RESET:
SEI
CLD
LDA #$00
STA $2000
STA $2001

forever:
JMP forever

.segment "VECTORS"
.word $0000
.word RESET
.word $0000

.segment "CHARS"
.res 8192, $00
