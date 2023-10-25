//Standard imports
#import "labels/syslabels.asm"
#import "labels/labels.asm"
    
.file [name="aa04.9b", segments = "Rom0",type="bin"]
.file [name="aa05.10b", segments = "Rom1",type="bin"]
.file [name="aa06.13b", segments = "Rom2",type="bin"]
.file [name="aa07.15b", segments = "Rom3",type="bin"]


//Potential screen buffer locations
.label SCREEN_BUFFER_0 = $0400

.segment Rom0 []

//Start of disassembled code
* = $c000 "Base Address"

    L_c000:
        //jmp $CF3C

        .byte $4C, $3C, $CF     // junk data?

        jmp Boot

        .byte $85, $F5, $EA     // junk data?

    CrashGame:      // $C009

        jmp InvalidLocation  

        .byte $85, $F5, $EA    // junk data?

      
    Boot:           // $C00F

        sei                 // disable interupts
        cld                 // clear decimal mode
        ldx #$ff
        txs                 // set stack at $00FF

        lda Dipswitch_1     // get dipswitch_1 settings
        and #%00010000      // check for un-used switch
        beq CrashGame       // if it's on, crash?


        lda #$00            
        sta $01             
        sta $f9
        sta $4000           // Set $01, $F9, $4000 to zero



        jsr $C332
        jsr L_c31d
        lda #$01
        sta $01
        lda #$00
        sta $1a
        jsr L_c70d
        sta $f7
        nop 
    L_c038:
        lda #$fe
        sta $5005
        lda #$00
        sta $4002
        sta $1b
        sta $20
        lda #$00
        sta $1c
        jsr L_c416
        ldx #$ff
        jsr L_ca2c
        jsr L_c3d9
        ldx #$ff
        jsr L_ca2c
        jsr L_c478
        ldx #$3f
        jsr L_ca2c
        jsr L_c561
        sta $f5
        nop 
    L_c068:
        jsr L_c70d
        jsr L_c748
        lda #$01
        sta $1c
        sta $f5
        nop 
    L_c075:
        jsr L_c767
        sta $f5
        nop 
    L_c07b:
        lda Dipswitch_1
        bpl L_c07b
        cli 
        nop 
        nop 
        nop 
        nop 
        sei 
        jsr $d045
        jsr $d06e
        inc $13
        lda $13
        and #$3f
        bne L_c097
        sta $f5
        nop 
    L_c097:
        inc $14
        bne L_c09e
        inc $15
        nop 
    L_c09e:
        inc $16
        lda $4000
        adc $4001
        adc $16
        sta $16
        sta $f5
        nop 
    L_c0ad:
        lda Dipswitch_1
        bmi L_c0ad
        jsr L_c8e4 + $2
        jsr L_d17b
        jsr $d796
        jsr L_d898
        lda $1b
        beq L_c0ce
        jsr L_db1e + $a
        jsr L_dbbb
        jsr L_dc77
        sta $f5
        nop 
    L_c0ce:
        jsr L_dd65
        jsr $ea8d
        jsr L_e6df
        jsr $e141
        jsr L_e18b + $5
        jsr L_e835
        jsr $e760
        jsr $e86c
        ldx $1f
        lda $2b,x
        bne L_c119
        lda $13
        and #$3f
        bne L_c10b
        ldx #$fc
        ldy #$c0
        jsr L_c9bc
        jmp L_c119

        .byte $3a,$10,$00,$00,$00,$ff,$3a,$10,$51,$52,$53,$ff,$85,$f6,$ea

    L_c10b:
        cmp #$0f
        bne L_c119
        ldx #$02
        ldy #$c1
        jsr L_c9bc
        sta $f6
        nop 
    L_c119:
        lda $c6
        bne L_c127 + $3
        lda $c5
        beq L_c124
        jmp L_c075
    L_c124:
        jmp L_c07b

    L_c127:
         .byte $85,$f7,$ea,$a9,$00,$85,$c6,$c9,$1b,$d0,$0b
        .byte $a2,$3f,$20,$2c,$ca,$4c,$38,$c0,$85,$f7,$6e,$20,$a3,$c8,$20,$e3
        .byte $cb,$a5,$21,$d0,$17,$a5,$29,$30,$0d,$a9,$01,$85,$20,$08,$52,$c2
        .byte $4c,$75,$c0,$85,$f5,$6e,$4c,$f1,$c1,$85,$f7,$6e,$a6,$1f,$d0,$4d
        .byte $a5,$29,$25,$2a,$30,$41,$a5,$2a,$10,$0d,$20,$6d,$c2,$a9,$01,$85
        .byte $20,$4c,$75,$c0

    L_c176:
        .byte $85,$f7,$ea,$a5,$29,$10,$09
        .byte $20,$95,$c2,$20,$a3,$c8,$85,$f7,$6e,$20,$03,$c3,$a9,$01,$85,$1f
        .byte $c1,$20,$cd,$03,$40,$29,$40,$f0,$0d,$a9,$00,$8d,$05,$50,$a9,$01
        .byte $8d,$02,$40,$85,$f7,$ea

    L_c1a3:
        jsr L_c281
        jmp L_c075
    L_c1a9:
        jmp L_c1f1

        .byte $85,$f7,$6e,$a5,$2a,$25,$29,$30,$3c,$a5,$29,$10,$0d,$a9,$01,$85
        .byte $20,$08,$81,$c2,$4c,$75,$c0,$85,$f7,$6e,$a5,$2a,$10,$09,$20,$ad
        .byte $c2,$20,$a3,$c8,$85,$f7,$ea

    L_c1d3:
        jsr L_c303
        lda #$00
        sta $1f
        lda #$01
        sta $20
        eor $8dfe
        ora $50
        lda #$00
        sta $4002
        jsr L_c26d
        jmp L_c075
        sta $f7
        nop 
    L_c1f1:
        jsr L_c2c5
        jsr L_c8a3

        .byte $a9,$fe,$8d,$05,$50,$4d,$00,$8d,$02,$40,$a9,$00,$85,$cb,$a5,$2d
        .byte $85,$cc,$a5,$2e,$85,$cd,$a5,$2f,$85,$ce,$20,$f3,$ef,$20,$a3,$c8
        .byte $ad,$03,$40,$29,$40,$f0,$0d,$a9,$00,$8d,$05,$50,$a9,$01,$8d,$02
        .byte $40,$85,$f7,$ea

    L_c22b:
        lda #$01
        sta $cb
        lda $30
        sta $cc
        lda $31
        sta $cd
        lda $32
        sta $ce
        jsr $eff3
        ldx #$00
        stx $1b
        lda $1d
        ora $1e
        beq L_c24d
        inc $1a
        sta $f7
        nop 
    L_c24d:
        jmp L_c038
        sta $f7
        nop 
        ldx #$e8
        ldy #$c2
        jsr L_c9bc
        sta $f5
        nop 
    L_c25d:
        lda #$03
        jsr L_ea5d
        sta $f5
        nop 
    L_c265:
        ldx #$1f
        jsr L_ca2c
        rts 


        sta $f7
    L_c26d:
        nop 
        ldx #$d2
        ldy #$c2
        jsr L_c9bc
        ldx #$e8
        ldy #$c2
        jsr L_c9bc
        jmp L_c25d
        sta $f7
    L_c281:
        nop 
        ldx #$dd
        ldy #$c2
        jsr L_c9bc
        ldx #$e8
        ldy #$c2
        jsr L_c9bc
        jmp L_c25d
        sta $f7
    L_c295:
        nop 
        inc $c8
        ldx #$d2
        ldy #$c2
        jsr L_c9bc
        inc $c8
        ldx #$f5
        ldy #$c2
        jsr L_c9bc
        jmp L_c265
        sta $f7
    L_c2ad:
        nop 
        inc $c8
        ldx #$dd
        ldy #$c2
        jsr L_c9bc
        inc $c8
        ldx #$f5
        ldy #$c2
        jsr L_c9bc
        jmp L_c265
        sta $f7
    L_c2c5:
        nop 
    L_c2c6:

        inc $c8
        ldx #$f5
        ldy #$c2
        jsr L_c9bc
        jmp L_c265

        .byte $cd,$11,$1a,$16,$0b,$23,$0f,$1c,$00,$02,$ff,$cd,$11,$1a,$16,$0b
        .byte $23,$0f,$1c,$00,$03,$ff,$0c,$12,$11,$0b,$17,$0f,$00,$1c,$0f,$0b
        .byte $0e,$23,$ff,$0c,$12,$11,$0b,$17,$0f,$00,$19,$20,$0f,$1c,$ff,$85
        .byte $f7

    L_c303:
        nop 
        ldy #$00
        sta $f7
        nop 
    L_c309:
        lda $0200,y
        tax 
        lda $0300,y
        sta $0200,y
        txa 
        sta $0300,y

        .byte $64,$d0,$ef,$60,$85,$f6

    L_c31d:
        ror.a $00a9
        sta $5005
        sta $25
        cmp $03
        rti 
        lda #$80
        sta $27
        cmp $00
        rti 

    L_c32f:
         .byte $28,$85,$f6

         
          //nop 
          //sta $F66E

         // lda #$00
         // sta $03

         // lda #$10
          //sta $04


         // nop
         // sta $f6

         // ror $00a9
         // sta $03
         // lda #$10
         // sta $04
         // lsr a
         // bpl L_c2c6
         // inc $ea, x
         // ldy #0
         // sta $f6

         // ror $00a9
         // sta ($03), y
         // nop $d0
         // sbc $04e6, y
         // dex
         //bne $c343


         .byte $ea,$85,$f6,$6e,$a9,$00,$85,$03,$a9,$10,$85,$04,$4a

    L_c33f:
        .byte $10,$85,$f6,$ea,$a0,$00,$85,$f6,$6e,$a9,$00,$91,$03,$64,$d0,$f9
        .byte $e6,$04,$ca,$d0,$ef,$85,$f6,$6e,$95,$01,$e8,$e0,$e1,$d0,$f9,$a2
        .byte $00,$85,$f6,$ea

    L_c363:
        sta $0200,x
        cmp $00,x

        .byte $03,$e8,$d0,$f7,$a9,$02,$85,$35,$a9,$80,$85,$34,$4d,$00,$85,$33
        .byte $a2,$23,$85,$f6,$6e,$bd,$b3,$c3,$95,$36,$ca,$10,$f8,$85,$f6,$6e
        .byte $a0,$00,$85,$f6,$6e,$a2,$00,$85,$f6,$ea

    L_c392:
        lda L_c3a3,x
        sta $0c00,y
        iny 
        inx 
        cpx #$10
        bne L_c392
        cpy #$20

        .byte $d0,$eb,$60

    L_c3a3:  // CHANGE NS
        .byte $ff,$00,$d0,$c0
        .byte $f8,$c7,$e1,$d4,$ff,$52,$07,$3f,$00,$f8,$c0,$38,$00,$80,$02,$00
        .byte $01,$01,$00,$94,$00,$50,$65,$00,$50,$48,$00,$ff,$ff,$ff,$15,$0f
        .byte $18,$12,$cd,$13,$11,$19,$18,$12,$cd,$15,$15,$cd,$12,$ff,$ff,$ff
        .byte $85,$f5

    L_c3d9:
        nop 
        jsr L_c8a3
        jsr L_cbe3
        ldx #$0f
        ldy #$ce
        jsr L_c9bc
        ldx #$29
        ldy #$ce
        jsr L_c9bc
        ldx #$be
        ldy #$ce
        jsr L_c9bc
        ldx $5b
        inx 
        stx $12d5
        lda $5a
        and #$f0
        lsr 
        lsr 
        lsr 
        lsr 
        tax 
        inx 
        stx $12d6
        ldx #$01
        stx $12d7
        stx $12d8
        stx $12d9
        rts 


        sta $f5
    L_c416:
        nop 
        jsr L_c8a3
        jsr L_cbe3
        ldx #$0f
        ldy #$ce
        jsr L_c9bc
        ldx #$ef
        ldy #$ce
        jsr L_c9bc
        lda #$c9
        sta $03
        lda #$11
        sta $04
        ldx #$12
        sta $f5
        nop 
    L_c438:
        ldy #$00
        lda $36,x
        sta ($03),y
        iny 
        lda $37,x
        sta ($03),y
        iny 
        lda $38,x
        sta ($03),y
        clc 
        lda $03
        adc #$40
        sta $03
        lda $04
        adc #$00
        sta $04
        inx 
        inx 
        inx 
        cpx #$21
        bcc L_c438
        ldx #$03
        jsr L_c94e
        ldx #$04
        jsr L_c94e
        ldx #$05
        jsr L_c94e
        ldx #$06
        jsr L_c94e
        ldx #$07
        jsr L_c94e
        rts 


        sta $f5
    L_c478:
        nop 
        lda #$ff
        sta $19
        sta $f5
        nop 
        lda #$01
        sta $1c
        jsr L_c748
        jsr L_c767
        ldy #$01
        sty $68
        iny 
        sty $69
        iny 
        sty $6a
        lda #$90
        sta $1802
        lda #$4d
        sta $1803
        lda #$60
        sta $1806
        lda #$3d
        sta $1807
        lda #$30
        sta $180a
        lda #$3d
        sta $180b
        lda #$40
        sta $a9
        sta $aa
        sta $ab
        sta $b0
        lda #$04
        sta $a8
        sta $ba
        lda #$18
        sta $181e
        lda #$1d
        sta $181f
        jsr L_dd65
        sta $f5
        nop 
    L_c4d2:
        ldx #$01
        jsr L_ca2c
        inc $13
        ldx #$07
        jsr L_d3c3
        beq L_c4e4
        rts 


        sta $f5
        nop 
    L_c4e4:
        ldx #$07
        jsr L_d269
        jsr L_d898
        jsr $ea8d
        jsr L_e18b + $5
        lda $19
        bne L_c4fc
        jmp L_c4d2
        sta $f5
        nop 
    L_c4fc:
        ldx #$0f
        ldy #$c5
        jsr L_c9bc
        ldx #$ff
        jsr L_ca2c
        lda #$00
        sta $19
        ldy $80
        cpy $86
        ora ($3b),y
        rti 
        rts 



        .byte $36,$3d,$42,$00,$32,$3d,$35,$61,$62,$fe,$86,$15,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00,$fe,$ce,$10,$3b,$40,$60,$3e,$37
        .byte $31,$39,$3a,$33,$61,$62,$fe,$ce,$14,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$fe,$56,$11,$3b,$40,$60,$33,$35,$35,$61,$62,$fe
        .byte $56,$15,$00,$00,$00,$00,$00,$00,$00,$00,$ff,$85,$f5

    L_c561:
        nop 
        jsr L_c748
        jsr L_c767

        .byte $a0,$01,$84,$68,$c0,$69,$64,$84,$6a,$84,$6b,$c8,$84,$6c,$c0,$6d
        .byte $a9,$1d,$8d,$03,$18,$c5,$07,$18,$8d,$0b,$18,$8d,$0f,$18,$c5,$13
        .byte $18,$8d,$17,$18,$c5,$1f,$18,$4d,$40,$85,$a9,$85,$aa,$c1,$ab,$c1
        .byte $ac,$85,$ad,$85,$ae,$4d,$89,$8d,$02,$18,$a9,$59,$8d,$06,$18,$4d
        .byte $60,$8d,$0a,$18,$4d,$90,$8d,$0e,$18,$a9,$97,$8d,$12,$18,$4d,$30
        .byte $8d,$16,$18,$a9,$18,$8d,$1e,$18,$a9,$01,$85,$13,$c1,$14,$08,$65
        .byte $dd,$85,$f5,$ea

    L_c5cc:
        ldx #$01
        jsr L_ca2c

        .byte $e6,$13,$d0,$03,$e6,$14,$6e,$a2,$07,$20,$c3,$d3,$f0,$1b,$a5,$14
        .byte $c9,$04,$90,$3c,$a2,$30,$a0,$c6,$20,$bc,$c9,$a2,$ff,$20,$2c,$ca
        .byte $a2,$40,$20,$2c,$ca,$60,$85,$f5,$ea

    L_c5fa:
        lda $6e
        bpl L_c621
        ldx #$07
        jsr L_d269
        lda $181e
        cmp #$22
        beq L_c615
        cmp #$4a
        beq L_c615
        cmp #$82
        bne L_c621
        sta $f5
        nop 
    L_c615:
        jsr L_d1a2 + $b
        inc $181e
        inc $181e
        sta $f5
        nop 
    L_c621:
        jsr $d796
        jsr L_d898
        jsr L_e6df
        jsr L_e18b + $5
        jmp L_c5cc

        .byte $c7,$10,$32,$3d,$3c,$64,$42,$00,$45,$2f,$41,$42,$33,$00,$3e,$33
        .byte $3e,$3e,$33,$40,$41,$fe,$c7,$14
        .fill $13, $0
        .byte $fe,$04,$11,$47,$3d,$43,$00,$41,$42,$2f

    L_c665:
        rti 

        .byte $42,$00,$45,$37,$42,$36,$00,$3d,$3c,$3a,$47,$00,$34,$37,$44,$33
        .byte $fe,$04,$15
        .fill $18, $0
        .byte $fe,$42,$11,$33,$2f,$40,$3c,$00,$33,$46,$42,$40,$2f,$00,$3e,$33
        .byte $3e,$3e,$33,$40,$41,$00,$63,$00,$30,$3d,$3c,$43,$41,$33,$41,$fe
        .byte $42,$15
        .fill $1c, $0
        .byte $fe,$83,$11,$31,$3a,$2f,$37,$3b,$00,$31,$3d,$3c,$33,$41,$4a,$31
        .byte $3d,$34,$34,$33,$33,$41,$00,$63,$00,$34,$40,$37,$33,$41,$fe,$83
        .byte $15
        .fill $1a, $0
        .byte $ff,$85,$f5

    L_c70d:
        ror SCREEN_BUFFER_0 + $ad
        rti 

        .byte $49,$ff,$a8,$a2,$02,$29,$01,$f0,$05,$a2,$04,$85,$f5,$6e,$86,$29
        .byte $86,$2a,$98,$4a,$29,$03,$aa,$bd,$3e,$c7,$85,$5a,$c1,$5c,$c1,$5e
        .byte $bd,$42,$c7,$85,$5b,$c1,$5d,$85,$5f,$20,$c3,$eb,$60

    L_c73e:
        .byte $00,$50,$00,$00

    L_c742:
        ora ($01,x)

        .byte $02,$03,$85,$f7

    L_c748:
        nop 
        lda #$01
        sta $61
        cmp ($62,x)
        eor $2004
        eor $a9ea,x

        .byte $00,$85,$65,$85,$66,$85,$1f,$08,$0f,$cc,$20,$03,$c3,$c6,$61,$28
        .byte $85,$f5

    L_c767:
        ror $a320
        iny 
        lda $20
        bne L_c79b
        lda #$04
        jsr L_ea5d

        .byte $ad,$04,$40,$29,$10,$d0,$12,$a5,$1b,$f0,$0e,$a6,$1f,$b5,$2b,$18
        .byte $f8,$69,$01,$95,$2b,$d8,$85,$f6,$6e,$a6,$1f,$f6,$61,$a9,$00,$95
        .byte $65,$08,$0f,$cc,$85,$f5,$ea

    L_c79b:
        lda #$00
        sta $20
        php 

        .byte $64,$cc,$a6,$1f,$b4,$61,$88,$85,$f5,$ea

    L_c7aa:
        cpy #$06
        bcc L_c7b6 + $3
        tya 
        sec 
        sbc #$06
        tay 
        jmp L_c7aa

    L_c7b6:
         .byte $85,$f5,$ea,$84,$63,$b4,$61,$88,$c0,$06,$90,$05
        .byte $a0,$05,$85,$f5,$6e,$84,$64,$a4,$63,$b9,$ef,$cd,$8d,$1c,$18,$b9
        .byte $f7,$cd,$8d,$1d,$18,$5d,$ff,$cd,$8d,$1e,$18,$5d,$07,$ce,$8d,$1f
        .byte $18,$a2,$07,$a9,$ff,$85,$f5,$ea,$95,$68,$66,$10,$fb,$a2,$07,$a9
        .byte $01,$85,$f5,$6e,$95,$99,$ca,$10,$fb,$a2,$07,$a9,$04,$85,$f5,$ea

    L_c802:
        sta $a1,x
        dex 
        bpl L_c802
        ldx #$07
        lda #$00
        sta $f5
        nop 
    L_c80e:
        sta $a9,x
        dex 
        bpl L_c80e
        sta $6f
        lda #$03
        sta $a8
        lda #$00
        sta $c5
        sta $c4
        jsr L_da89
        jsr L_c8c6
        lda $21
        beq L_c834
        lda $1f
        eor #$01
        tax 
        jsr L_c94e
        sta $f5
        nop 
    L_c834:
        ldx $1f
        jsr L_c94e
        ldx #$02
        jsr L_c94e
        jsr L_ca54
        jsr L_ca94
        ldx $1f
        jsr L_cac2 + $2
        jsr $cb1e
        lda #$3e
        sta $13
        lda $1b
        beq L_c858
        rts 


        sta $f5
        nop 
    L_c858:
        lda #$01
        sta $68
        lda #$02
        sta $69
        lda #$03
        sta $6a
        lda #$90
        sta $1802
        lda #$4d
        sta $1803
        lda #$60
        sta $1806
        lda #$3d
        sta $1807
        lda #$30
        sta $180a
        lda #$3d
        sta $180b
        lda #$80
        sta $a9
        sta $aa
        sta $ab
    L_c88a:
        lda #$40
    L_c88c:
        sta $b0
        lda #$18
        sta $181e
        lda #$1d
        sta $181f
        lda #$ff
        sta $a1
        sta $a2
        sta $a3
        rts 


        sta $f6
    L_c8a3:
        nop 
        ldy #$00
        sty $03
        lda #$10
        sta $04
        sta $f6
        nop 
    L_c8af:
        lda #$00
        sta ($03),y
        iny 
        bne L_c8af
        inc $04
        lda $04
        cmp #$18
        bne L_c8af
        ldx #$01
        jsr L_ca2c
        rts 


        sta $f5
    L_c8c6:
        nop 
        ldx #$35
        ldy #$c9
        jsr L_c9bc
        ldx #$29
        ldy #$c9
        jsr L_c9bc
        lda $21
        beq L_c8e3
        ldx #$40
        ldy #$c9
        jsr L_c9bc
        sta $f5
        nop 
    L_c8e3:
        rts 



    L_c8e4:
         .byte $85,$f5,$ea,$a5,$21,$f0,$3d
        .byte $a5,$13,$29,$3f,$d0,$1a,$a5,$1f,$d0,$0b,$a2,$2f,$a0,$c9,$20,$bc
        .byte $c9,$60,$85,$f5,$ea

    L_c900:
        ldx #$46
        ldy #$c9
        jsr L_c9bc
        rts 



    L_c908:
         .byte $85,$f5,$ea,$c9,$0f,$d0,$19
        .byte $a5,$1f,$d0,$0b,$a2,$29,$a0,$c9,$20,$bc,$c9,$60,$85,$f5,$6e,$a2
        .byte $40,$a0,$c9,$20,$bc,$c9,$85,$f5,$6e,$60,$24,$10,$26,$43,$3e,$ff
        .byte $24,$10,$00,$00,$00,$ff,$29,$10,$36,$37,$49,$41,$31,$3d,$40,$33
        .byte $ff,$34,$10,$27,$43,$3e,$ff,$34,$10,$00,$00,$00,$ff,$85,$f5

    L_c94e:
        ror $0386
        txa 
        asl 
        tay 
        clc 
        adc $03
        tax 
        sta $f5
    L_c95a:
        nop 
        lda $c9a0,y
        sta $03
        lda L_c9a1,y
        sta $04
        pha 
        ora $85
        sbc $ea,x
    L_c96a:
        lda $2d,x
        and #$0f
        sta $05
        inc $05
        lda $05
    L_c974:
        sta ($03),y

        .byte $44,$b5,$2d,$4a,$4a,$4a,$4a,$85,$05,$ea,$05,$a5,$05,$91,$03,$6c
        .byte $88,$10

    L_c988:
        .byte $e1,$c8,$85,$f5,$6e,$b1,$03,$c9,$01,$d0,$0c
        .byte $a9,$00,$91,$03,$64,$c0,$05,$d0,$f1

    L_c99c:
        sta $f5
        ror $4260

    L_c9a1:
         .byte $10,$52
        .byte $10,$4a,$10,$cd,$11,$0d,$12,$4d,$12,$8d,$12,$cd,$12,$92,$12,$d2
        .byte $12,$12,$13,$52,$13,$92,$13,$85,$f6

    L_c9bc:
        ror $0386
        cpy #$04
        sta $f6
        nop 
    L_c9c4:
        ldy #$00
        sty $08
        lda ($03),y
        sta $05

        .byte $64,$b1,$03,$85,$06,$85,$f6,$ea

    L_c9d4:
        iny 
        lda ($03),y
        cmp #$ff
        beq L_ca25
        cmp #$fe
        beq L_c9fc
        cmp #$fd
        beq L_ca0f
        sty $07
        iny 
        php 
        sta ($05),y
        inc $08
        ldy $07
        lda $c8
    L_c9ef:
        beq L_c9d4
        ldx #$0a
        jsr L_ca2c
        jmp L_c9d4
        sta $f6
        nop 
    L_c9fc:
        iny 
        clc 
        tya 
        adc $03
        sta $03
        lda $04
        adc #$00
        sta $04
        jmp L_c9c4
        sta $f6
        nop 
    L_ca0f:
        clc 
        lda $05
        adc #$20
        sta $05
        lda $06
        adc #$00
        sta $06
        lda #$00
        sta $08
        beq L_c9d4
        sta $f6
        nop 
    L_ca25:
        lda #$00
        sta $c8
        rts 


        sta $f6
    L_ca2c:
        nop 
    L_ca2d:
        lda Dipswitch_1
        bpl L_ca2d
        cli 
        nop 
        nop 
        nop 
        nop 
        sei 
        jsr $d045
        lda $1a
        beq L_ca49
        txa 
        pha 
        jsr $d06e
        pla 
        tax 
        sta $f6
        nop 
    L_ca49:
        lda Dipswitch_1
        bmi L_ca49
        dex 
        bne L_ca2d
        rts 


        sta $f5
    L_ca54:
        nop 
        ldx $1f
        sec 
        lda #$5c
        sbc $29,x
        sta $f3
        lda #$18
        sta $f4
        lda $29,x
        cmp #$09
        bcs L_ca7e
        ldy #$10
        lda #$00
    L_ca6c:
        sta $184c,y
        dey 
        bne L_ca6c
        ldy $29,x
        beq L_ca7d
    L_ca76:
        lda #$c8
    L_ca78:
        sta ($f3),y
        dey 
        bne L_ca78
    L_ca7d:
        rts 


    L_ca7e:
        ldy #$09
        lda #$53
        sta $f3
        jmp L_ca76
        inc $ea,x
    L_ca89:
        sta ($f3),y
        dey 
        bne L_ca89
        sta $f7
        nop 
        rts 


        sta $f5
    L_ca94:
        nop 
        tya 
        pha 
        ldy #$51
        sty $103a
        iny 
        sty $103b
        iny 
        sty $103c
        ldx $1f
        lda $2b,x
        lsr 
        lsr 
        lsr 
        lsr 
        tay 
        beq L_cab3
        iny 
        sta $f5
        nop 
    L_cab3:
        sty $105b
        lda $2b,x
        and #$0f
        tay 
        iny 
        sty $105c
        pla 
        tay 
        rts 



    L_cac2:
         .byte $85,$f5,$ea,$b5,$61,$85,$03,$ad,$1a,$cb,$85,$04,$ad,$1b,$cb,$85

    L_cad2:
        .byte $05,$a9,$04,$85,$06,$a0,$80,$85,$f5,$ea,$a6,$03,$e0,$0a,$90,$0d
        .byte $a5,$03,$e9,$0a,$85,$03,$a9,$c6,$d0,$1f,$85,$f5,$ea,$e0,$05,$90
        .byte $0d,$a5,$03,$e9,$05,$85,$03,$a9,$c5,$d0,$0e,$85,$f5,$ea,$e0,$01
        .byte $90,$15,$c6,$03,$4d,$c4,$85,$f5,$ea,$91,$04,$54,$38,$e9,$20,$a8
        .byte $c6,$06,$10,$c6,$85,$f5,$ea,$60,$1d,$13,$85,$f5,$6e,$20,$e3,$cb
        .byte $a5,$63,$0a,$a8,$b9,$d7,$cd,$85,$03,$b9,$d8,$cd,$85,$04,$a9,$10
        .byte $85,$05,$4d,$04,$85,$06,$a2,$68,$a0,$00,$85,$f5,$6e,$b1,$03,$29
        .byte $f0,$11,$05,$91,$05,$ea,$05,$b1,$03,$0a,$0a,$0a,$0a,$11,$05,$91
        .byte $05,$e6,$05,$ea,$03,$70,$05,$e6,$04,$85,$f5,$6e,$ca,$a5,$05,$29
        .byte $07,$d0,$da,$18,$a5,$05,$69,$7f,$85,$05,$c9,$06,$69,$00,$85,$06
        .byte $85,$f5,$6e,$b1,$03,$29,$f0,$11,$05,$91,$05,$e2,$05,$59,$03,$0a
        .byte $0a,$0a,$0a,$11,$05,$91,$05,$c6,$05,$e6,$03,$70,$05,$e6,$04,$85
        .byte $f5,$ea

    L_cb94:
        dex 
        lda $05
        and #$07
        cmp #$07

        .byte $d0,$d8,$38,$a5,$05,$e9,$77,$85,$05,$c9,$06,$e9,$00,$85,$06,$e0
        .byte $00,$d0,$91,$a5,$63,$29,$0f,$85,$f3,$46,$48,$cd,$03,$40,$29,$40
        .byte $f0,$07,$a5,$1f,$d0,$13,$85,$f5,$ea

    L_cbc4:
        ldx $f3
        lda L_cbd9,x
    L_cbc9:
        ora #$10
        sta $4004
        bit $60aa
        sta $f5
        nop 
    L_cbd4:
        lda $f3
        jmp L_cbc9

    L_cbd9:
         .byte $03,$00
        .byte $01,$02,$07,$04,$05,$06,$85,$f5

    L_cbe3:
        nop 
        ldy #$00
        lda #$04
        sta $04
        lda #$00
        sta $03
        cmp ($f5,x)
        nop 
    L_cbf1:
        lda ($03),y
        and #$0f
        sta ($03),y

        .byte $64,$d0,$f7,$e6,$04,$ca,$04,$e0,$08,$d0,$ef,$a9,$00,$8d,$04,$40
        .byte $a2,$01,$20,$2c,$ca,$60,$85,$f5,$ea,$a6,$1f,$b4,$61,$88,$85,$f5
        .byte $ea

    L_cc18:
        cpy #$06
        bcc L_cc27
        tya 
        sec 
        sbc #$06
        tay 
        jmp L_cc18
        sta $f5
        nop 
    L_cc27:
        tya 
        asl 
        tay 
        lda L_cde1 + $2,y
        sta $03
        lda L_cde1 + $3,y
        sta $04
        ldy #$00
        ldx #$00
        sta $f5
        nop 
    L_cc3b:
        lda ($03),y
        cmp #$ff
        beq L_cc59
        sta $0202,x
        iny 
        inx 
        txa 
        and #$03
        cmp #$03
        bne L_cc3b
        inx 
        lda #$00
        sta $0202,x
        jmp L_cc3b
        sta $f5
        nop 
    L_cc59:
        lda #$00
        sta $0202,x
        inx 
        bne L_cc59
        rts 


        sta $f7
        nop 
        lda #$02
        sta $0b
        lda #$02
        sta $0c
        lda #$00
        sta $0d
        sta $f7
        nop 
    L_cc74:
        ldy $0d
        lda ($0b),y
        beq L_cc96
        sta $03
        iny 
        lda ($0b),y
        sta $04
        iny 
        lda ($0b),y
        sta $05
        jsr L_cc97 + $2
        lda $0d
        clc 
        adc #$04
        sta $0d
        jmp L_cc74
        sta $f7
        nop 
    L_cc96:
        rts 



    L_cc97:
         .byte $85,$f5,$ea,$a9,$00,$85,$0e,$f0,$12,$85,$f5,$ea,$a9,$00,$85,$0e
        .byte $a5,$05,$29,$f8,$d0,$05,$e6,$0e,$85,$f5,$ea,$98,$48,$a5,$03,$29
        .byte $0f,$0a,$aa,$bd,$b7,$cd,$85,$07,$a5,$05,$29,$07,$0a,$0a,$18,$65

    L_ccc7:
        .byte $07,$85,$07,$bd,$b8,$cd,$85,$08,$a5,$04,$49,$ff,$85,$04,$46,$04
        .byte $46,$04,$46,$04,$a9,$00,$85,$06,$a5,$05,$29,$f8,$85,$05,$06,$05
        .byte $26,$06,$06,$05,$26,$06,$18,$a5,$05,$65,$04,$85,$05,$a5,$06,$69

    L_ccf7:
        .byte $10,$85,$06,$a5,$03,$29,$0f,$c9,$0f,$f0,$35
        .byte $a0,$00,$a5,$07,$aa,$20,$95,$cd,$a4,$0e,$d0,$0c,$a0,$20,$18,$69
        .byte $1d,$aa,$20,$95,$cd,$85,$f5,$ea

    L_cd1a:
        clc 
        lda $06
        adc #$04
        sta $06
        ldy #$00
        lda $08
        jsr L_cdaa

        .byte $a4,$0e,$d0,$64,$a0,$20,$20,$aa,$cd,$4c,$90,$cd,$85,$f5,$6e,$38
        .byte $a5,$05,$e9,$21,$85,$05,$c9,$06,$e9,$00,$85,$06,$48,$00,$a5,$07
        .byte $91,$05,$aa,$e8,$e8,$8a,$a0,$05,$91,$05,$e6,$07,$c9,$07,$a0,$21
        .byte $91,$05,$c8,$91,$05,$64,$91,$05,$c8,$91,$05,$18,$a5,$06,$69,$04
        .byte $85,$06,$a0,$21,$a9,$00,$91,$05,$c8,$91,$05,$c8,$91,$05,$64,$91
        .byte $05,$38,$a5,$06,$e9,$04,$85,$06,$18,$a5,$05,$69,$21,$85,$05,$c9
        .byte $06,$69,$00,$85,$06,$c1,$f5,$6e,$68,$a8,$60

    L_cd93:
        .byte $85,$f7,$6e,$91,$05,$c8,$e8,$8a,$91,$05,$64
        .byte $e8,$8a,$91,$05,$c8,$e8,$8a,$91,$05,$28,$85,$f7

    L_cdaa:
        nop 
        sta ($05),y

        .byte $64,$91,$05,$c8,$91,$05,$c8,$91,$05,$28,$00,$00,$00,$02,$40

    L_cdbc:
        .byte $02,$80,$02
        .byte $c0,$02,$00,$03,$40,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$00,$c9,$00,$81,$ed,$51,$ee,$b9,$ee,$21,$ef
        .byte $e9,$ed

    L_cde1:
        .byte $89,$ef,$d7,$eb,$4b
        .byte $ec,$88,$ec,$d1,$ec,$14,$ec,$3e,$ed

    L_cdef:
        ora ($01,x)
        ora ($01,x)
        ora ($01,x)
        ora ($01,x)

    L_cdf7:
         .byte $47,$47,$47,$47,$47,$47,$47,$47

    L_cdff:
        sei 
        sei 
        sei 
        sei 
        pha 
        sei 
        sei 
        sei 
    L_ce07:
        lda L_cdbc + $1
        sta $adcd
        lda $aaad
        bpl L_ce42

        .byte $43,$40,$35,$33,$40,$00,$42,$37,$3b,$33,$fe,$eb,$10,$4d,$4e,$4f
        .byte $50,$00

    L_ce24:
        rol $2e
        and L_ff26 + $1
        bit $cc11
        ora $190d,x

        .byte $1c,$0f,$cc,$fe,$65,$11,$00,$01,$02,$03,$00,$00,$40,$41,$42,$43
        .byte $00,$00,$80

    L_ce42:
        sta ($82,x)

        .byte $83,$fe,$65,$15,$02,$02,$02,$02,$00,$00,$03,$03,$03,$03,$00,$00
        .byte $02,$02,$02,$02,$fe,$a5,$11,$c0,$c1,$c2,$c3,$00,$00,$00,$01,$02
        .byte $03,$00,$00,$40,$41,$42,$43,$fe,$a5,$15,$02,$02,$02,$02,$00,$00
        .byte $03,$03,$03,$03,$00,$00,$02,$02,$02,$02,$fe,$e5,$11,$bc,$bd,$00
        .byte $00,$c0,$c1,$00,$00,$b8,$b9,$fe,$05,$12,$be,$bf,$00,$00,$c2,$c3
        .byte $00,$00,$ba,$bb,$fe,$25,$12,$dc,$dd,$00,$00,$e0,$e1,$00,$00,$b4
        .byte $b5,$fe,$96,$11,$06,$01,$00,$1a,$1e,$1d,$fe,$10,$12,$cc,$0c,$19
        .byte $18,$1f,$1d,$00,$02,$00,$51,$52,$53,$ff,$c3,$12,$0c,$19,$18,$1f
        .byte $1d,$00,$00,$00,$10,$19,$1c,$00,$0f,$20,$0f,$1c,$23,$00,$00,$00
        .byte $00,$00,$00,$1a,$1e,$1d,$fe,$a8,$12,$1c,$1d,$fe,$c8,$12,$1e,$1f
        .byte $fe,$a8,$16,$01,$01,$fe,$c8,$16,$01,$01,$ff,$67,$11,$0c,$0f,$1d
        .byte $1e,$00,$10,$13,$20,$0f,$00,$1a,$16,$0b

    L_cefe:
        .byte $23,$0f,$1c
        .byte $1d,$fe,$c7,$11,$02,$fe,$d4,$11,$1a,$1e,$1d,$fe,$07,$12,$03,$fe
        .byte $14,$12,$1a,$1e,$1d,$fe,$47,$12,$04,$fe,$54,$12,$1a,$1e,$1d,$fe
        .byte $87,$12,$05,$fe,$94,$12,$1a,$1e,$1d,$fe,$c7,$12,$06,$fe,$d4,$12
        .byte $1a,$1e,$1d,$ff,$68,$4c,$00,$b0

    L_cf39:
        .byte $85,$f5,$ea,$48,$cd,$03,$40,$29,$10,$f0,$f1,$8a,$48,$54
        .byte $48,$ea,$d8,$a5,$01,$f0,$40,$ad,$04,$40,$49,$ff,$29,$e0,$85,$02
        .byte $26,$4a,$4a,$4a,$4a,$a8,$20,$34,$d0,$ad,$02,$40,$29,$c0,$f0,$27
        .byte $85,$26,$20,$34,$d0,$ad,$02,$40,$25,$26,$f0,$1b,$20,$34,$d0,$ad
        .byte $02,$40,$25,$26,$f0,$11,$20,$34,$d0,$ad,$02,$40,$25,$26,$f0,$07
        .byte $a9,$01,$85,$f9,$85,$f6,$6e,$8d,$00,$40,$68,$a8,$68,$aa,$68,$40

    L_cf97:
        .byte $85,$f6,$ea,$e6,$1e,$4d,$1b,$8d,$03
        .byte $40,$a5,$02,$c9,$80,$f0,$31,$a2,$00,$ad,$03,$40,$49,$ff,$29,$0f
        .byte $06,$26,$90,$05,$4a,$4a,$85,$f5,$ea

    L_cfb9:
        and #$03
        beq vSprite1Y
        inx 
        cmp #$01
        beq vSprite1Y
        inx 
        cmp #$02

        .byte $f0,$31,$e8,$85,$f5,$ea,$a5,$1e,$c9,$02,$b0,$1f,$85,$f5,$ea

    L_cfd4:
        rts 


        sta $f5
        ror SCREEN_BUFFER_0 + $1a2
        lda $26
        cmp #$80
        beq vSprite1Y
        inx 
        cmp #$40
        beq vSprite1Y
        inx 
        cmp #$c0
        beq vSprite1Y
        jmp L_cfd4
        sta $f5
        ror $1ec6
        jmp vSprite1Y
        sta $f5
        ror $02a5
        cmp #$60
        bne vSprite1Y
        ldx #$04
* = * "Rom 1"
    .segment Rom1 []
    * = $d000

        jsr $e059
        beq vSprMCMCol0
        jmp $e03d
        sta $f5
        nop 
        jsr L_e08c
        beq vSprMCMCol0
        jsr $e06a
        beq vSprMCMCol0
        jsr $e07b
        beq vSprMCMCol0


        jsr $e059
        beq vSprMCMCol0
        jmp $e03d
        sta $f5
        nop 
        ldx $70
        lda #$00
        sta $74,x
        lda #$10
        sta $8a,x
        sta $f5
        nop 
        ldx $70
    L_d034:
        jsr L_d269
        jmp L_dd7a + $1
        sta $f5
        nop 
        ldx $70
        lda $68,x
        and #$03
        tax 
        dec $be,x
        ldx $70
        asl 
        asl 
        tay 
        lda #$00
        sta $1800,y
        lda #$ff
        sta $68,x
        jmp L_dd7c
        sta $f5
        nop 
        ldx $70
    L_d05c:
        lda $71
        and #$0f
        ora #$60
        sta $a9,x
    L_d064:
        jsr L_d3c3
        rts 


        sta $f5
        nop 
        ldx $70
        lda $71
        and #$0f
        ora #$80
        sta $a9,x
        jsr L_d3c3
        rts 


        sta $f5
        nop 
        ldx $70
        lda $71
        and #$0f
        ora #$20
        sta $a9,x
        jsr L_d3c3
        rts 


    L_d08a:
        sta $f5
        nop 
        ldx $70
        lda $71
    L_d091:
        and #$0f
        ora #$40
        sta $a9,x
        jsr L_d3c3
        rts 


        sta $f5
        nop 
        lda $04
        and #$0f
        cmp #$0f
        beq L_d0b3
        cmp #$0e
        beq L_d0b3
        cmp #$0d
        beq L_d0b3
        cmp #$0c
        sta $f5
        nop 
    L_d0b3:
        rts 


        sta $f5
        nop 
        lda $03
        sta $08
        inc $08
        inc $08
        lda $08
        and #$0c
        beq L_d0e3
        cmp #$08
        bne L_d0f8
        lda $08
        and #$f0
        cmp #$10
        beq L_d0f8
        cmp #$40
        beq L_d0f8
        cmp #$70
        beq L_d0f8
        cmp #$a0
        beq L_d0f8
        cmp #$d0
        rts 


        sta $f5
        nop 
    L_d0e3:
        lda $08
        and #$f0
        cmp #$30
        beq L_d0f8
        cmp #$60
        beq L_d0f8
        cmp #$90
        beq L_d0f8
        cmp #$c0
        sta $f5
        nop 
    L_d0f8:
        rts 



    L_d0f9:
         .byte $85,$f5,$ea,$86,$11,$84,$12,$a4,$64,$b9,$88,$e1,$85,$c4,$c8,$63
        .byte $98,$0a,$aa,$bd,$76,$e1,$85,$03

    L_d111:
        lda L_e177,x
        sta $04
        eor L_e182,x
        tax 
        ldy #$00
        sta ($03),y
        jmp (L_c88a)
        sta ($03),y
        ldy #$20
        inx 
        txa 
        sta ($03),y
        inx 
        txa 
        iny 
        sta ($03),y
        eor $8500
        rts 


        ldy $12
        ldx $11
        lda #$0b
        jsr L_ea5d

    L_d13b:
         .byte $85,$f5,$6e,$60,$85,$f5,$ea,$a5,$c4,$f0,$2f
        .byte $20,$f2,$e8,$a5,$13,$29,$3f,$d0,$26,$c6,$c4,$d0,$22,$a5,$63,$0a
        .byte $aa,$bd,$76,$e1,$85,$03,$dd,$77,$e1,$85,$04,$a9,$00,$a8,$91,$03

    L_d166:
        .byte $64
        .byte $91,$03,$a0,$20,$91,$03,$64

    L_d16e:
        sta ($03),y
        sta $60
        sta $f5
        ror $4f60
        ora ($cf),y
        ora ($cf),y
    L_d17b:
        ora ($8f),y

        .byte $10,$15,$11,$8f,$11,$bc,$c0,$b8,$bc,$c0,$b8,$07,$06,$05,$05,$05
        .byte $05,$85,$f5,$ea,$a9,$00,$8d,$00,$02,$c1,$f5,$ea,$ac,$00,$02,$b9
        .byte $02,$02,$d0,$04,$60

    L_d1a2:
        .byte $85,$f5,$6e,$29,$0f,$85,$03,$b9,$03,$02,$85,$04,$5d,$04,$02,$85
        .byte $05,$b9,$02,$02,$29,$f0,$4a,$4a,$4a,$aa,$bd,$c9,$e1,$85,$06,$bd

    L_d1c2:
        .byte $ca,$e1,$85,$07,$ac,$06,$00,$00,$e2
        .byte $18,$e2,$36,$e2,$78,$e2,$b0,$e2,$e8,$e2,$00,$e4,$ec,$e1,$ef,$e1
        .byte $f2,$e1,$20,$e3,$58,$e3,$90,$e3,$c8,$e3,$57,$e4,$03

    L_d1e8:
        .byte $e2
        .byte $85,$f5,$ea,$85,$f5,$6e,$85,$f5,$ea,$00,$b9,$02,$02,$29,$0f,$09
        .byte $10,$99,$02,$02,$c1,$f5,$6e,$85,$f5,$ea,$20,$be,$e5,$ee,$00,$02
        .byte $ee,$00,$02,$ee,$00,$02,$ee,$00,$02,$4c,$99,$e1,$85,$f5,$ea,$20
        .byte $16,$e5,$d0,$13,$20,$6e,$e5,$d0,$0e,$20,$a2,$cc,$98,$aa,$fe,$04
        .byte $02,$20,$6b,$eb,$85,$f5,$ea

    L_d230:
        jmp L_e203
        sta $f5
        nop 
    L_d236:
        lda $0205,y
        and #$10
        bne L_d25b
        sec 
        lda $05
        sbc #$08
        sta $05
        sta $0204,y
        jsr $e4a9
        lda $0205,y
    L_d24d:
        ora #$10
        sta $0205,y
        sta $f5
        nop 
    L_d255:
        jmp L_e203
        sta $f5
        nop 
    L_d25b:
        lda $13
        and #$03
        bne L_d255
        lda $0205,y
        and #$0f
        sta $0205,y
    L_d269:
        lda $0202,y
        and #$0f
        ora #$30
        sta $0202,y
        bne L_d255
        sta $f5
        nop 
        lda $0205,y
        and #$10
        bne L_d293
        jsr $e4b2
        lda $0205,y
        ora #$10
        sta $0205,y
        sta $f5
        nop 
    L_d28d:
        jmp L_e203
        sta $f5
        nop 
    L_d293:
        lda $13
        and #$03
        bne L_d28d
        lda $0205,y
        and #$0f
        sta $0205,y
        lda $0202,y
        and #$0f
        ora #$40
        sta $0202,y
        bne L_d28d
        sta $f5
        nop 
        lda $0205,y
        and #$10
        bne L_d2cb
        jsr $e4bb
        lda $0205,y
        ora #$10
        sta $0205,y
        sta $f5
        nop 
    L_d2c5:
        jmp L_e203
        sta $f5
        nop 
    L_d2cb:
        lda $13
        and #$03
        bne L_d2c5
        lda $0205,y
        and #$0f
        sta $0205,y
        lda $0202,y
        ora #$50
        and #$5f
        sta $0202,y
        bne L_d2c5
        sta $f5
        nop 
        lda $0205,y
        and #$10
        bne L_d300 + $3
        jsr L_e4c4
        lda $0205,y
        ora #$10
        sta $0205,y
        sta $f5
        nop 
        jmp L_e203

    L_d300:
         .byte $85,$f5,$ea,$a5,$13,$29,$03,$d0,$f4,$b9,$05,$02,$29,$0f,$99,$05
        .byte $02,$b9,$02,$02,$09,$60,$29,$6f,$99,$02,$02,$d0,$e0,$85,$f5,$6e
        .byte $b9,$05,$02,$29,$10,$d0,$14,$20,$a9,$e4

    L_d32a:
        .byte $b9,$05,$02,$09,$10,$99,$05,$02,$85,$f5,$6e,$4c,$03,$e2
        .byte $85,$f5,$ea

    L_d33b:
        lda $13
        and #$03

        .byte $d0,$f4,$b9,$05,$02,$29,$0f,$99,$05,$02,$b9,$02,$02

    L_d34c:
        and #$0f
        ora #$b0
        sta $0202,y

        .byte $d0,$e0,$85,$f5,$6e,$b9,$05,$02,$29,$10,$d0,$14,$20,$b2,$e4,$b9
        .byte $05,$02,$09,$10,$99,$05,$02,$85,$f5,$6e,$4c,$03,$e2,$85,$f5,$ea

    L_d373:
        lda $13
        and #$03

        .byte $d0,$f4,$b9,$05,$02,$29,$0f,$99,$05,$02,$b9,$02,$02,$09,$c0,$29
        .byte $cf,$99,$02,$02,$d0,$e0,$85,$f5,$6e,$b9,$05,$02,$29,$10,$d0,$14
        .byte $20,$bb,$e4,$b9,$05,$02,$09,$10,$99,$05,$02,$85,$f5,$6e,$4c,$03
        .byte $e2,$85,$f5,$ea

    L_d3ab:
        lda $13
        and #$03

        .byte $d0,$f4,$b9,$05,$02,$29,$0f,$99,$05,$02,$b9,$02,$02,$09,$d0,$29
        .byte $df,$99,$02,$02

    L_d3c3:
        .byte $d0,$e0
        .byte $85,$f5,$6e,$b9,$05,$02,$29,$10,$d0,$14,$20,$c4,$e4,$b9,$05,$02
        .byte $09,$10,$99,$05,$02,$85,$f5,$6e,$4c,$03,$e2,$85,$f5,$ea

    L_d3e3:
        lda $13
        and #$03

    L_d3e7:
         .byte $d0,$f4

    L_d3e9:
        lda $0205,y
        and #$0f
        sta $0205,y
        lda $0202,y
        ora #$e0
        and #$ef
        sta $0202,y

        .byte $d0,$e0,$85,$f5,$6e,$20,$a2,$cc,$98,$aa,$fe,$04,$02,$bd,$04,$02
        .byte $29,$07,$d0,$42,$b9,$02,$02,$29,$0f,$09,$10,$99,$02,$02,$b9,$05
        .byte $02,$29,$0f,$99,$05,$02,$b9,$06,$02,$29,$0f,$c9,$0f,$f0,$0c,$b9
        .byte $06,$02,$29,$f0,$c9,$f0,$d0,$1e,$85,$f5,$ea

    L_d436:
        lda #$00
        sta $0205,y
        lda $0202,y
        ora #$f0
        sta $0202,y
        lda #$00
        jsr L_e989 + $3
        jsr $e5fa
        jsr L_e7bc + $c
        sta $f5
        nop 
    L_d451:
        jmp L_e203
        sta $f5
        nop 
        jsr L_cc97 + $b
        tya 
        tax 
        lda $0205,x
        and #$0f
        sta $0205,x
        beq L_d46e
        dec $0205,x
        bne L_d484
        sta $f5
        nop 
    L_d46e:
        lda $0202,y
        and #$0f
        sta $0202,y
        lda #$00
        jsr L_e989 + $3
        jsr $e5fa
        jmp L_e203
        sta $f5
        nop 
    L_d484:
        lda $0202,y
        and #$0f
        ora #$10
        sta $0202,y
        lda $0204,y
        adc #$02
        sta $0204,y
        jmp L_e203

        .byte $00,$01,$01,$05,$02,$04,$03,$00,$01,$01,$05,$02,$04,$03,$85,$f5
        .byte $ea,$a9,$00,$85,$11,$f0,$1c,$85,$f5,$ea,$a9,$01,$85,$11,$f0,$13
        .byte $85,$f5,$ea,$a9,$02,$85,$11,$f0,$0a,$85,$f5,$ea,$a9,$03,$85,$11
        .byte $85,$f5,$ea

    L_d4cc:
        tya 
        pha 
        ldx $11
        lda $05
        clc 
        adc $e50c,x
        sta $05
        jsr L_cc97 + $2
        ldy #$01
    L_d4dd:
        ldx $11
        lda $06
        and #$fb
        sta $06
        lda ($05),y
        clc 
        adc $e510,x
        sta ($05),y
        iny 
        lda ($05),y
        clc 
        adc $e510,x
        sta ($05),y
        ldy #$21
        lda ($05),y
    L_d4fa:
        clc 
        adc $e510,x
        sta ($05),y
    L_d500:
        iny 
        lda ($05),y
        clc 
        adc $e510,x
        sta ($05),y
        pla 
        tay 
        rts 



        .byte $04,$03,$02,$01,$04,$fc,$04,$fc,$85,$f5,$6e,$a5,$05,$29,$07,$d0
        .byte $4c,$b9,$07,$02,$c5,$04,$d0,$45,$b9,$08,$02,$38,$e5,$05,$c9,$09
        .byte $b0,$3b,$b9,$02,$02,$29,$0f,$09,$20,$99,$02,$02,$b9,$06,$02,$29
        .byte $f0,$c9,$f0,$f0,$1d,$b9,$06,$02,$29,$0f,$c9,$0f,$f0,$14,$b9,$06
        .byte $02,$09,$10,$99,$06,$02,$b9,$08,$02,$18,$69,$04,$99,$08,$02,$85
        .byte $f5,$6e,$a9,$0a,$20,$5d,$ea,$a9,$ff,$60,$85,$f5,$ea

    L_d569:
        lda #$00
        rts 


        sta $f5
        ror SCREEN_BUFFER_0 + $1a5
        and #$0f
        cmp #$08
        bne L_d5a4
        lda $04
        lsr 
        lsr 
        lsr 
        lsr 
        sta $12
        eor $3810
        sbc $12
        sta $12
        cmp #$05
    L_d588:
        and #$f0
        clc 
        adc $12
        tax 
        lda L_d68e,x
        tax 
        lda SCREEN_BUFFER_0 + $00,x
        lsr 
        lsr 
        lsr 
        lsr 
        cmp #$09
        beq L_d5a7 + $3
        cmp #$08
        beq L_d5a7 + $3
        sta $f5
        nop 
    L_d5a4:
        lda #$00
        rts 



    L_d5a7:
         .byte $85,$f5,$ea,$b9,$02,$02,$29,$0f,$09,$a0,$99,$02,$02,$4d,$0a,$20
        .byte $5d,$ea,$a9,$ff,$60

    L_d5bc:
        .byte $85,$f5,$6e,$a2,$00,$85,$f5,$ea,$b5,$68,$29,$e0,$c9,$40,$f0,$0c

    L_d5cc:
        sta $f5
        ror $e0e8
        asl $d0
        beq L_d635
        sta $f5
        ror $b1b5
        sta $0d
        cpx #$0d

        .byte $d0,$ef,$84,$0e,$38,$b9,$04,$02,$e9,$0c,$85,$0f,$8a,$0a,$0a,$a8
        .byte $a5,$0f,$99,$03,$18,$a4,$0e,$4c,$cf,$e5,$85,$f5,$ea,$a2,$00,$86
        .byte $c9,$c1,$f5,$ea

    L_d602:
        lda $68,x
        bmi L_d60d
        and #$40
        bne L_d639
        sta $f5
        nop 
    L_d60d:
        inx 
        cpx #$06
        bne L_d602
        ldx $c9
        beq L_d635
        lda $e663,x
        jsr L_e989 + $3
        tya 
        pha 
    L_d61e:
        ldx $ca
        ldy L_eb4f,x
        ldx $c9
        lda L_e669,x
        sta $1801,y
        lda #$01
        sta $1800,y
        pla 
        tay 
        sta $f5
        nop 
    L_d635:
        rts 


        sta $f5
        nop 
    L_d639:
        lda $b1,x
        sta $0d
        cpy $0d
        bne L_d60d
    L_d641:
        inc $c9
        stx $ca
        lda $68,x
        and #$0f
        ora #$20
        sta $68,x
        sty $0e
        and #$03
        tay 
        lda L_e74c,y
        ldy L_eb4f,x
        sta $1801,y
        ldy $0e
        lda #$7f
        sta $99,x
        jmp L_e60d

        .byte $04,$05,$07,$08,$09,$0a,$37,$38,$39,$3a,$3b,$3c,$85,$f5,$ea,$ad
        .byte $1a,$18,$85,$03,$ad,$1b,$18,$85,$04,$a2,$00,$85,$f5,$ea

    L_d682:
        lda $68,x
        bpl L_d692
        sta $f5
        nop 
    L_d689:
        inx 
        cpx #$06
        bne L_d682
    L_d68e:
        rts 


        sta $f5
        nop 
    L_d692:
        txa 
        asl 
        asl 
        tay 
        lda $1802,y
        clc 
        adc #$0c
        cmp $03
        bcc L_d689
        sbc #$18
        cmp $03
        bcs L_d689
        lda $1803,y
        clc 
        adc #$0c
        cmp $04
        bcc L_d689
        sbc #$18
        cmp $04
        bcs L_d689
        lda $68,x
        ora #$10
        sta $68,x
        ldy $1f
        lda.a $0061,y
        cmp #$08
        bcc L_d6c7
        lda #$08
    L_d6c7:
        tay 
        lda L_e6d4,y
        sta $99,x
        lda #$0f
        jsr L_ea5d
        jmp $e689
        cmp ($c1),y
        lda ($a1),y
        sta ($81),y
        adc ($61),y
        sta $f5
        nop 
        ldx #$00
        sta $f5
        nop 
    L_d6e5:
        lda $68,x
        bmi L_d6f0
        and #$10
        bne L_d6f6 + $3
        sta $f5
        nop 
    L_d6f0:
        inx 
        cpx #$06
        bne L_d6e5
        rts 



    L_d6f6:
         .byte $85,$f5,$ea,$b5,$99,$c9,$01,$f0,$39
        .byte $d6,$99,$b5,$99,$29,$0f,$d0,$e9,$b5,$99,$29,$10,$f0,$0f,$b5,$68
        .byte $29,$03,$a8,$b9,$4c,$e7,$85,$03,$70,$10,$85,$f5,$ea

    L_d71c:
        lda $68,x
        and #$03
        tay 
        lda L_e753,y
        sta $03
        cmp ($f5,x)
        nop 
    L_d729:
        txa 
        asl 
        asl 
        tay 
        lda $03
        sta $1801,y
        jmp L_e6ee + $2

        .byte $85,$f5,$6e,$b5,$68,$29,$ef,$95,$68,$0d,$03,$a8,$b9,$5a,$e7,$85
        .byte $03,$a4,$29,$e7,$85,$f5,$ea,$00,$62,$6e,$7a,$85,$f5,$ea,$00,$63
        .byte $6f,$7b,$85,$f5,$ea,$00,$5a,$66,$72,$85,$f5,$ea,$a5,$6f,$30,$1e
        .byte $ad,$1e,$18,$85,$03,$ad,$1f,$18,$85,$04,$4a,$00,$85,$f5,$ea

    L_d774:
        lda $68,x

        .byte $10,$0f,$85,$f5,$ea

    L_d77b:
        inx 
        cpx #$06
        bne L_d774
        sta $f5
        nop 
    L_d783:
        rts 


        sta $f5
        ror $7029
        bne L_d77b
        txa 
        asl 
        asl 
        tay 
        lda $1802,y
        clc 
        adc #$08
        cmp $03
        bcc L_d77b
        sbc #$10
        cmp $03
        bcs L_d77b
        lda $1803,y
        clc 
        adc #$04
        cmp $04
        bcc L_d77b
        sbc #$0d
        cmp $04
        bcs L_d77b
        lda #$10
        jsr L_ea5d

        .byte $a5,$6f,$09,$f0,$85,$6f,$a9,$ff,$85,$a0,$4d,$00,$20,$5d,$ea,$4c
        .byte $7b,$e7,$85,$f5,$ea,$a6,$1f,$f6,$65,$c8,$63,$b5,$65,$85,$05,$d9
        .byte $15,$e8,$d0,$03,$20,$fb,$e0

    L_d7db:
        lda $05
        cmp L_e81b,y
        bne L_d7e5
        jsr L_e0fa + $1
    L_d7e5:
        lda $05
        cmp $e821,y
        bne L_d7ef
        jsr L_e0fa + $1
    L_d7ef:
        lda $05
        cmp $e827,y
        bne L_d7f9
        jsr L_e0fa + $1
    L_d7f9:
        lda $05
        cmp L_e82d,y
        bcc L_d814
        lda $6f
        and #$0f
        ora #$80
        sta $6f
        lda #$ff
        sta $a0
        lda #$05
        jsr L_ea5d
        sta $f5
        nop 
    L_d814:
        rts 



        .byte $04,$05,$04,$06,$03,$03,$08,$07,$08,$10,$06,$07,$0c,$0d,$0e,$16
        .byte $09,$0c,$ff,$ff,$0e,$1c,$ff,$0e,$10,$10,$12,$20,$10,$12,$85,$f5
        .byte $ea,$a5,$6f

    L_d838:
        and #$f0
        cmp #$80
        bne L_d869
        lda $a0
        beq L_d864
        dec $a0
        lda $a0
        and #$0f
        bne L_d869
        lda $a0
        and #$10
        beq L_d857
        lda #$47
        bne L_d85c
        sta $f5
        nop 
    L_d857:
        lda #$4c
        sta $f5
        nop 
    L_d85c:
        sta $181d
        bne L_d869
        sta $f5
    L_d863:
        nop 
    L_d864:
        inc $c5
        sta $f5
        nop 
    L_d869:
        rts 


        sta $f5
        nop 
        lda $c6
        bmi L_d8b7
        lda $6f
        and #$f0
        cmp #$f0
        beq L_d87d
        rts 


        sta $f5
        nop 
    L_d87d:
        ldx #$1b
        lda $a0
        sta $f5
        nop 
    L_d884:
        cmp $e8b8,x
    L_d887:
        beq L_d892
        dex 
        bpl L_d884
        dec $a0
        rts 


        sta $f5
        nop 
    L_d892:
        lda L_e8d4,x
        sta $181d
    L_d898:
        dec $a0
        txa 
        bne L_d8ab
        ldx $1f
        dec $29,x
        lda #$ff
        sta $c6
        jmp L_e8b7
        sta $f5
        nop 
    L_d8ab:
        cpx #$18
        bne L_d8b7
        lda #$10
        jsr L_ea5d
        sta $f5
        nop 
    L_d8b7:
        rts 



        .byte $01,$08,$10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$78,$80
        .byte $88,$90,$98

    L_d8cb:
        ldy #$a8
        bcs L_d887
        cpy #$c8
        bne L_d8cb
        inc $5152,x

        .byte $52,$51,$52,$51,$52,$51,$52,$51,$52,$51,$52,$51,$52,$51,$52,$51
        .byte $52,$51,$52,$51,$52,$51,$50,$4f,$4e,$4d,$85,$f5,$ea,$a5,$60,$d0
        .byte $7a,$a6,$63,$bd,$72,$e9,$85,$03,$bd,$78,$e9,$85,$04,$ad,$1e,$18
        .byte $18,$69,$08,$c5,$03,$90,$64,$e9,$10,$c5,$03,$b0,$5e,$ad,$1f,$18
        .byte $18,$69,$08,$c5,$04,$90,$54,$e9,$10,$c5,$04,$b0,$4e,$8a,$0a,$a8
        .byte $b9,$76,$e1,$85,$03,$b9,$77,$e1,$85,$04,$bc,$81,$e9,$b9,$7e,$e9
        .byte $85,$05,$a0,$00,$91,$03,$64,$e6,$05,$c9,$05,$91,$03,$a9,$00,$a0
        .byte $20,$91,$03,$c8,$91,$03,$4d,$02,$85,$c4,$e6,$60,$bc,$81,$e9,$b9
        .byte $87,$e9,$20,$8c,$e9,$a6,$1f,$b5,$2b,$18,$f8,$69,$01,$95,$2b,$74
        .byte $20,$94,$ca,$a9,$11,$20,$5d,$ea,$85,$f5,$ea

    L_d971:
        rts 



        .byte $78,$78,$78,$78,$48,$78,$50,$70,$70,$20,$40,$60,$ac,$b0,$b4,$00
        .byte $01,$02,$00,$01,$02,$04,$05,$06,$85,$f5,$6e,$85,$04,$46,$48,$98
        .byte $48,$a5,$1b,$d0,$06,$4c,$33,$ea,$85,$f5

    L_d99c:
        ror $1fa6
        ldy L_ea59,x
        ldx $04
        clc 
        sed 
        lda.a $002d,y
        adc L_ea38,x
        sta.a $002d,y
        eor.a $002e,x
        adc $ea43,x
        sta.a $002e,y
        lda.a $002f,y
        adc $ea4e,x
        sta.a $002f,y
        cld 
        ldx $1f
        jsr L_c94e

        .byte $a6,$1f,$bc,$59,$ea,$a5,$35,$d9,$2f,$00,$90,$15,$d0,$2a,$a5,$34
        .byte $d9,$2e,$00,$90,$0c,$d0,$21,$a5,$33,$d9,$2d,$00,$b0,$1a,$85,$f5
        .byte $6e,$b9,$2d,$00,$85,$33,$5d,$2e,$00,$85,$34,$b9,$2f,$00,$85,$35
        .byte $4a,$02,$20,$4e,$c9,$85,$f5,$6e,$a6,$1f,$bc,$59,$ea,$8a,$0a,$aa
        .byte $b9,$2f,$00,$d5,$5d,$90,$25,$b9,$2e,$00,$d5,$5c,$90,$1e,$18,$f8
        .byte $b5,$5c,$65,$5a,$95,$5c,$b5,$5d,$65,$5b,$95,$5d,$d8,$a6,$1f

    L_da26:
        inc $29,x
        jsr L_ca54
        lda #$02
        jsr L_ea5d
        sta $f5
        nop 
    L_da33:
        pla 
        tay 
        pla 
        tax 
        rts 



        .byte $50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$05
        .byte $10,$15,$20,$40,$80,$60

    L_da4e:
        .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

    L_da58:
        ora ($00,x)

        .byte $03,$85,$f5,$ea,$86,$c7,$a6,$1b,$f0,$0a,$aa,$bd,$71,$ea,$8d,$03
        .byte $40,$85,$f5,$ea

    L_da6e:
        ldx $c7
        rts 



        .byte $00,$1b,$1c,$04,$01,$02,$20,$21,$11,$12,$13,$14,$15,$16,$17,$18
        .byte $19,$1a,$1d,$13,$14,$15,$16,$17

    L_da89:
        ora $03
        sta $f5
        nop 
        ldx #$05
        sta $f5
        nop 
    L_da93:
        lda $68,x
        and #$f0
        cmp #$80
        beq L_daa5 + $3
        sta $f5
        nop 
    L_da9e:
        dex 
        bpl L_da93
        sta $f5
        nop 
        rts 



    L_daa5:
         .byte $85,$f5,$ea,$b5,$99,$c9,$01,$f0,$48,$d6,$99,$b5,$99,$c9,$40,$f0
        .byte $43,$c9,$38,$f0,$53,$c9,$30,$f0,$63,$c9,$28,$f0,$23,$c9,$20,$d0
        .byte $d8,$b5,$68,$29,$03,$a8,$b9,$65,$eb,$20,$8c,$e9,$b9,$62,$eb,$bc
        .byte $4f,$eb,$99,$01,$18,$a9,$01,$99,$00,$18,$4c,$9e,$ea,$85,$f5,$ea

    L_dae5:
        lda $68,x
        and #$03
        tay 
        lda $eb5f,y
        ldy L_eb4f,x
        sta $1801,y
        jmp $ea9e
        jmp L_eb35
        lda $68,x
        and #$03
        tay 
        lda L_eb56,y
        ldy L_eb4f,x
        sta $1801,y
        ldy $9e
        nop 
        sta $f5
        ror $68b5
        and #$03
        tay 
        lda L_eb59,y
        ldy L_eb4f,x
        sta $1801,y
        jmp $ea9e

    L_db1e:
         .byte $85,$f5,$ea,$b5,$68,$29,$03,$a8,$b9,$5c,$eb,$bc,$4f,$eb,$99,$01
        .byte $18,$a4,$9e,$ea,$85,$f5,$6e,$86,$03,$d9,$68,$29,$03,$aa,$d6,$be
        .byte $ca,$03,$a9,$ff,$95,$68,$dc,$4f,$eb,$a9,$00,$99,$00,$18,$a4,$9e
        .byte $ea,$00,$04,$08,$0c,$10,$14,$18,$1c,$5e,$6a,$76,$5f,$6b,$77,$60
        .byte $6c,$78,$61,$6d,$79,$34,$35,$36,$01,$02,$03

    L_db69:
        sta $f5
        nop 
        ldx #$05
        sta $f5
        nop 
        lda $68,x

        .byte $10,$0a,$85,$f5,$6e,$ca,$10,$f6,$60,$85,$f5,$6e,$bc,$4f,$eb,$b9
        .byte $02,$18,$85,$03,$5d,$03,$18,$85,$04,$cc,$00,$02,$b9,$03,$02,$e9
        .byte $08,$c5,$03,$90,$e0,$e9,$20,$c5,$03,$b0,$da,$b9,$04,$02,$e9,$05
        .byte $c5,$04,$b0,$d1,$69,$0c,$c5,$04,$90,$cb,$b5,$68,$29,$0f,$09,$80
        .byte $95,$68,$4d,$42,$95,$99,$a9,$0c

    L_dbbb:
        jsr $ea5e
        jmp $eb78

        .byte $85,$f6,$ea,$a9,$05,$85,$2b,$85,$2c,$ad,$04,$40,$29,$10,$d0,$05
        .byte $c6,$2b,$85,$f6,$6e,$60,$01,$d7,$48,$06,$d7,$68,$04,$d7,$98,$02
        .byte $d7,$b8,$0f,$d7,$e8,$01,$a7,$28,$06,$a7,$78,$04,$a7,$98,$02,$a7
        .byte $b8,$0f,$a7,$e8,$01,$77,$28,$06,$77,$48,$04,$77,$78,$02,$77,$b8
        .byte $0f,$77,$e8,$01,$47,$28,$06,$47,$48,$04,$47,$68,$02,$47,$88,$0f
        .byte $47,$e8,$ff,$01,$a7,$28,$05,$a7,$38,$06,$a7,$48,$04,$a7,$58,$06
        .byte $a7,$68,$04,$a7,$78,$05,$a7,$88,$02,$a7,$98,$0f,$a7,$e8,$01,$77
        .byte $28,$05,$77,$38,$04,$77,$48,$06,$77,$58,$04,$77,$68,$05,$77,$78
        .byte $06,$77,$88,$02,$77,$98,$0f,$77,$e8,$ff,$01,$d7,$28,$06,$d7,$38
        .byte $03,$d7,$48,$02,$d7,$68,$0f,$d7,$b8,$01,$a7,$28,$03,$a7,$38,$06
        .byte $a7,$58,$02,$a7,$a8,$0f,$a7,$e8,$01,$77

    L_dc6b:
        plp 

        .byte $03,$77,$78,$06,$77,$98,$02,$77,$a8,$0f,$77

    L_dc77:
        inx 
        ora ($47,x)
        plp 
        asl $47
        pha 

        .byte $03,$47,$58,$02,$47,$68,$0f,$47,$b8,$ff,$01,$d7,$28,$04,$d7,$48
        .byte $02,$d7,$58,$0f,$d7,$88,$01,$d7,$98,$05,$d7,$a8,$02,$d7,$b8,$0f
        .byte $d7,$e8,$01,$a7,$28,$05,$a7,$38,$02,$a7,$58,$0f,$a7,$b8,$01,$77
        .byte $28,$04,$77,$38,$02,$77,$58,$0f,$77,$b8,$01,$47,$28,$05,$47,$48
        .byte $02,$47,$58,$0f,$47,$88,$01,$47,$98,$04,$47

    L_dcc9:
        tay 

        .byte $02,$47,$b8,$0f,$47,$e8,$ff,$01,$d7,$28,$03,$d7,$38,$05,$d7,$48
        .byte $06,$d7,$58

    L_dcdd:
        .byte $04,$d7
        .byte $68,$06,$d7,$78,$05,$d7,$88,$02,$d7,$98,$0f,$d7

    L_dceb:
        inx 
        ora ($a7,x)
        plp 
        asl $a7
        sec 
        ora $a7
        pha 

        .byte $04,$a7,$58,$05,$a7,$68,$03,$a7,$78,$06,$a7,$88,$02,$a7,$98,$0f
        .byte $a7,$e8,$01,$77,$28,$05,$77,$38,$06,$77,$48,$05,$77,$58,$04,$77
        .byte $68,$03,$77,$78,$06,$77,$88,$02,$77,$98,$0f,$77,$e8,$01,$47,$28
        .byte $03,$47,$38,$06,$47,$48,$04,$47,$58,$05,$47,$68,$06,$47,$78,$05
        .byte $47,$88,$02,$47,$98,$0f,$47,$e8,$ff,$01,$d7,$38,$03,$d7

    L_dd43:
        cli 

        .byte $04,$d7,$78,$02,$d7,$b8,$0f,$d7,$e8,$01,$a7,$28,$03,$a7,$48,$04
        .byte $a7,$68,$03,$a7,$88,$02,$a7,$a8,$0f,$a7,$e8

    L_dd5f:
        ora ($77,x)
        sec 

        .byte $03,$77,$58

    L_dd65:
        .byte $03,$77
        .byte $78,$04,$77,$98,$02,$77,$b8,$0f,$77,$e8,$01,$47,$28,$04,$47,$48
        .byte $03,$47,$68

    L_dd7a:
        .byte $02,$47

    L_dd7c:
        dey 

        .byte $0f,$47,$e8,$ff,$01,$b9,$ab,$9a,$a9,$ba,$9b,$10,$05,$60,$56,$75
        .byte $50,$65

    L_dd8f:
        asl $50

        .byte $03,$d9,$c4,$73,$c9,$dc,$9d,$30,$00,$07,$3d,$8c,$37,$65,$06,$50
        .byte $01,$b8

    L_dda3:
        cpy $05

        .byte $57,$4c,$9d,$30,$05,$67,$3d,$9c,$c8,$d3,$70,$00

    L_ddb1:
        ora $67
        lsr $05,x

        .byte $50,$4c,$8b,$10,$03,$d8,$cd,$9c,$c9,$d3,$76,$50,$05,$60,$56,$05
        .byte $50,$65,$76,$50,$03,$d9,$cd,$9c,$c9,$dc,$8d,$30
        .fill $18, $0
        .byte $01,$b9,$ab,$9a

    L_dded:
        lda #$ba

        .byte $9b,$10,$03,$d9,$ab,$9a

    L_ddf5:
        lda #$ba
        sta $0130
        lda $9cab,y
        cmp #$d3
        ror $50,x

        .byte $03,$d9,$ab,$9a,$a9,$b1,$76,$50,$03,$d9,$ab,$9a,$a9,$dc,$8d,$30
        .byte $03,$d9,$cd,$9a,$a9,$b1,$76,$50,$03,$d9,$ab,$9a,$a9,$d3,$76,$50
        .byte $03,$d9,$ab,$9a,$a9,$d3,$76,$50,$05,$60,$00,$00,$00,$2a,$8d,$30
        .byte $05,$60,$00,$00,$00,$65,$06,$50,$05,$60,$00,$00,$00,$65,$06,$50
        .byte $03,$40,$00,$00,$00,$4c,$9d,$30,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $01,$b9,$ab,$9a,$a9,$ba,$9b,$10,$03,$d8,$cd,$8c,$37

    L_de5e:
        adc $76
        bvc L_de65
        cld 
        cpy $73
    L_de65:
        iny 

        .byte $dc,$8d,$30,$05,$67,$3d,$8c,$37,$4c,$8d,$30,$03,$d8,$cd,$8c,$c8
        .byte $dc,$8d,$30,$00,$00,$00,$73,$c8,$b1,$00,$00,$00,$00,$1b,$8c,$37
        .byte $00,$00,$00,$00,$00,$00,$73,$c8,$b1,$00,$00,$00,$00,$1b,$8c,$c8
        .byte $b1,$00,$00,$00,$00,$00,$05,$50

    L_de9e:
        .byte $00,$00,$00,$00,$00,$00,$03,$30
        .fill $13, $0
        .byte $01,$b9,$ab,$9a,$a9,$ba,$9b,$10,$03,$d9,$cd,$8a

    L_dec5:
        tay 
        tsx 
        sta $0330,x
        cmp $9ccd,y

        .byte $30,$4c,$9d,$30,$03,$d9,$ab,$8c,$c9,$dc,$9d,$30,$00,$00,$34,$73
        .byte $c8,$b1,$00,$00,$00,$00,$3d,$8c,$c9

    L_dee6:
        .byte $d3,$00,$00,$00,$00,$34,$00,$00
        .byte $65,$00,$00,$01,$b9,$c4,$00,$00,$4c,$9b,$10,$03,$d8,$c4,$00,$00
        .byte $4c,$9d,$30

    L_df01:
        .byte $03
        .byte $d8,$c4,$00,$00,$4c,$8d,$30,$00,$00,$3d,$9a,$a9,$d3,$00,$00,$00
        .byte $00,$3d,$8a,$a8

    L_df16:
        .byte $d3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $01,$b9,$ab,$9a,$a9,$ba,$9b,$10,$03,$d9,$cd,$9c

    L_df2d:
        cmp #$dc
        sta $0130,x
        clv 

        .byte $ab,$8a

    L_df35:
        tay 
        tsx 

        .byte $8b,$10,$03,$d9,$cd,$9c

    L_df3d:
        cmp #$dc
        sta $0130,x
        clv 

        .byte $ab,$8c,$c8,$ba,$8b,$10,$03,$d9,$cd,$9c

    L_df4d:
        cmp #$dc
        sta $0330,x
        cld 

        .byte $ab,$8a

    L_df55:
        tay 
        tsx 
        sta $0330
        cmp $9ccd,y
        cmp #$dc
        sta.a $0030,x

    L_df62:
         .fill $29, $0
        .byte $1b,$9a,$10,$2a,$9b,$10,$01,$b9,$c4,$71,$a9,$d3,$00,$00,$00,$00
        .byte $3d,$8a,$17,$2a,$9b,$10,$01,$b9,$c4,$73,$c8,$d3,$00,$00,$00,$00
        .byte $1b,$8c,$30,$4c,$9b,$10,$01,$b9,$c4,$03,$c9,$d3,$00,$00,$00,$00
        .byte $3d,$9a,$17,$2a,$9b,$10,$01,$b9,$c4,$73,$c8,$d3,$00,$00,$00,$00
        .byte $1b,$8a,$17,$4c,$9b,$10,$01,$b9,$c4,$03,$c8,$d3

    L_dfd7:
        .fill $1a, $0

    L_dff1:

        sta $f5
        nop 
        lda #$00
        sta $f3


        sta $f5
        nop 
        lda #$00
        sta $ed
        .byte $4D


    .segment Rom2 []
    * = $E000 "Rom2"

        


        .byte $85
        .byte $F5

        nop 

        .byte $A5
        .byte $1D


        sed 
        clc


        adc L_d05c,x
        cmp L_d064,y
        bcc L_e015
        lda L_d064,y
        sta $f5
        nop 
    L_e015:
        sta $1d
        cld 
        dec $1e
        lda $1b
        bne L_e02f
        sta $4000
        lda #$01
        sta $1a
        ldx #$ff
        txs 
        nop 
        jmp L_c038
        sta $f6
        nop 
    L_e02f:
        jmp L_cfd4
        sta $f5
        nop 
        ldx #$e7
        sta $f5
        nop 
    L_e03a:
        lda $ff
        lda $ff
        nop 
        dex 
        bne L_e03a
        rts 


        sta $f6
        nop 
        lda $f9
        beq L_e05b
        lda $4002
        and #$c0
        bne L_e05b
        lda #$00
        sta $f9
        jsr L_cf97 + $2
        sta $f6
        nop 
    L_e05b:
        rts 



        .byte $01,$02,$03,$01,$06,$08,$03,$01,$09,$09,$09,$09,$09,$09,$09,$09
        .byte $85,$f5,$ea,$a5,$1a,$f0,$1e,$a5,$1c,$d0,$09,$20,$11,$d1,$20,$3f
        .byte $d1,$85,$f5,$ea

    L_e080:
        lda $4002
        and #$01
        beq L_e095
        lda $4002
        and #$02
    L_e08c:
        beq L_e0c0
        sta $f5
        nop 
    L_e091:
        rts 


        sta $f5
        nop 
    L_e095:
        jsr L_d16e
        lda #$00
        sta $21
        sta $20
        sta $1c
        lda #$01
        sta $1b
        lda #$00
        sta $1a
        jsr L_c8a3
        jsr L_cbe3
        ldx #$e8
        ldy #$c2
        jsr L_c9bc
        ldx #$1f
        jsr L_ca2c
        jmp L_d0f9 + $4
        sta $f5
        nop 
    L_e0c0:
        lda $1d
        cmp #$02
        bcs L_e0c9
        jmp L_d091
    L_e0c9:
        jsr L_d16e
        jsr L_d16e
        lda #$01
        sta $21
        lda #$00
        sta $20
        sta $1c
        lda #$01
        sta $1b
        lda #$00
        sta $1a
        jsr L_c8a3
        jsr L_cbe3
        ldx #$d2
        ldy #$c2
        jsr L_c9bc
        ldx #$e8
        ldy #$c2
        jsr L_c9bc
        ldx #$1f
        jsr L_ca2c

    L_e0fa:
         .byte $85,$f5,$ea,$a2,$05,$a9,$00,$85,$f5,$ea,$95,$2d,$66,$10,$fb
        .byte $a2,$ff,$9a,$4c,$68,$c0,$85,$f5,$ea,$ad,$67,$13,$cd,$55,$d1,$f0
        .byte $3a,$a0,$00,$85,$f5,$6e,$b9,$55,$d1,$99,$67,$13,$64,$c0,$11,$d0
        .byte $f5,$85,$f5,$6e,$a0,$00,$85,$f5,$ea

    L_e132:
        lda L_d166,y
        sta $13ab,y
        iny 
        cpy #$06
        bne L_e132
        sta $f5
        ror $1da5
        lsr 
        lsr 
        lsr 
        lsr 
        tax 
        inx 
        lda $1d
        and #$0f
        tax 
        inx 
        stx $13b3
        sta $f5
        nop 
        rts 



        .byte $1a,$1f,$1d,$12,$00,$1d,$1e,$0b,$1c,$1e,$00,$0c,$1f,$1e,$1e,$19
        .byte $18,$0d,$1c,$0f,$0e,$13,$1e,$85,$f5,$6e,$f8,$38,$a5,$1d,$e9,$01
        .byte $85,$1d

    L_e177:
        .byte $74
        .byte $60,$85,$f5,$ea,$a5,$6f,$10,$04,$85,$f5

    L_e182:
        nop 
        rts 


    L_e184:
        lda $1b
        bne L_e18b
        jmp L_d236

    L_e18b:
         .byte $a6,$1f,$a4,$1f,$ad,$03,$40,$29,$40,$d0,$02,$a0,$00,$b9,$00,$40
        .byte $49,$ff,$29,$10,$f0,$40,$a5,$b9,$d0,$43,$b5,$2b,$f0,$2d,$85,$b9
        .byte $85,$f5,$6e,$a9,$00,$85,$6e,$a9,$05,$85,$a0,$c9,$ba,$aa,$18,$bd
        .byte $4d,$d2,$6d,$1e,$18,$8d,$1a,$18,$18,$bd,$4e,$d2,$6d,$1f,$18,$8d
        .byte $1b,$18,$4d,$0d,$20,$5d,$ea,$60,$85,$f5,$6e,$a9,$0e,$20,$5d,$ea
        .byte $4c,$e8,$d1,$85,$f5,$ea,$a9,$00,$85,$b9,$c1,$f5,$6e,$b9,$00,$40
        .byte $49,$ff,$29,$0f,$a8,$b9,$57,$d2,$a8,$c5,$bb,$f0,$09,$0a,$0a,$0a
        .byte $0a,$85,$b0,$c1,$f5,$ea

    L_e201:
        sty $bb
    L_e203:
        tya 
        beq L_e20b
        sty $ba
        sta $f5
        nop 
    L_e20b:
        lda $bb
        beq L_e219
        ldx #$07
        jsr L_d3c3
        bne L_e232
        sta $f5
        nop 
    L_e219:
        ldx #$07
        jsr L_d269
        lda $b0
        and #$f0
        beq L_e232
        ldy #$06
        cmp #$60
        bcs L_e22b
        iny 
    L_e22b:
        tya 
        jsr L_ea5d
        sta $f5
        nop 
    L_e232:
        rts 


        sta $f5
        nop 
        ldx #$07
        jsr L_d3c3
        beq L_e247
        lda #$47
        sta $181d
        inc $c6
        sta $f5
        nop 
    L_e247:
        ldx #$07
        jsr L_d269
        rts 



        .byte $00,$10,$f0,$00,$10,$00,$00,$f0,$00

    L_e256:
        .byte $10,$00,$02,$04,$00
        .byte $06,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$85,$f5,$ea,$b5
        .byte $68,$10,$01,$60

    L_e26f:
        lda $13
        and $91,x
        bne L_e276
        rts 


    L_e276:
        dec $99,x
        beq L_e27b
        rts 


    L_e27b:
        lda $a1,x
        sta $99,x
        lda $a9,x
        and #$0f
        sta $03
        lda $a9,x
        lsr 
        lsr 
        lsr 
        beq L_e297
        clc 
        adc $03
        sta $03
        jmp $d2ac
        sta $f5
        nop 
    L_e297:
        cpx #$07
        bne L_e2ac
        ldy #$00
        lda $ba
        cmp #$06
        bne L_e2a7
        iny 
        sta $f5
        nop 
    L_e2a7:
        sty $03
        sta $f5
        nop 
    L_e2ac:
        txa 
        asl 
        asl 
        sta $09
        lda $68,x
        and #$07
        asl 
        tay 
        lda $d34b,y
        sta $05
        lda L_d34c,y
        sta $06
        ldy $03
        lda ($05),y
        cmp #$ff
        beq L_e311 + $3
        ldy $09
        sta $1801,y
        lda $a9,x
        lsr 
        lsr 
        lsr 
        lsr 
        and #$02
        ora #$01
        sta $1800,y
        lda $a9,x
        and #$f0
        beq L_e34a
        inc $a9,x
        lda $a9,x
        and #$f3
        sta $a9,x
        stx $08
        ldy $09
        lsr 
        lsr 
        lsr 
        lsr 
        tax 
        clc 
        lda $d3b7,x
        adc $1802,y
        sta $1802,y
        clc 
        lda $d3b8,x
        adc $1803,y
        cmp #$1d
        bcs L_e309
        lda #$1d
    L_e309:
        sta $1803,y
        dex 
        php 
        jmp $d34a

    L_e311:
         .byte $85,$f5,$ea,$a4,$09,$b5,$a9,$30,$0d
        .byte $b9,$03,$18,$85,$0b,$ea,$0b,$4c,$31,$d3,$85,$f5,$6e,$b9,$03,$18
        .byte $85,$0b,$e2,$0b,$c1,$f5,$ea,$a5,$0b,$99,$03,$18,$c1,$f5,$ea,$b5
        .byte $a9,$29,$f0,$f0,$0b,$f6,$a9,$b5,$a9,$29,$f3,$95,$a9,$c1,$f5,$ea

    L_e34a:
        rts 



        .byte $5b,$d3,$6f,$d3,$83,$d3,$97,$d3,$ae,$d3,$b1,$d3,$b4,$d3,$b7,$d3
        .byte $47,$48,$47,$48,$40,$41,$42,$41,$40,$41,$42,$41,$45,$ff,$46,$ff
        .byte $43,$ff,$44,$ff,$00,$00,$00,$00,$58,$59,$58,$59,$58,$59,$58,$59
        .byte $5c,$ff,$5d,$ff,$5a,$ff,$5b,$ff,$00,$00,$00,$00,$64,$65,$64,$65
        .byte $64,$65,$64,$65,$68,$ff,$69,$ff,$66,$ff,$67,$ff,$00,$00,$00,$00
        .byte $70,$71,$70,$71,$70,$71,$70,$71,$74,$ff,$75,$ff,$72,$ff,$73,$ff
        .byte $85,$f5,$6e,$85,$f5,$ea,$85,$f5,$ea,$85,$f5,$6e,$00,$00,$fe,$00
        .byte $02,$00,$00,$fd,$00,$03,$85,$f5,$ea,$b5,$a9,$4a,$4a,$4a,$4a,$a8
        .byte $b9,$e8,$d3,$85,$05,$b9,$e9,$d3,$85,$06,$46,$0a,$0a,$a8,$b9,$02
        .byte $18,$85,$03,$5d,$03,$18,$85,$04,$e6,$67,$ac,$05,$00,$f5,$d3,$fd
        .byte $d3,$2e,$d4,$5f,$d4,$ad,$d4,$85,$f5,$6e,$a9,$00,$85,$67,$60,$85
        .byte $f5,$6e,$a5,$03,$c9,$16,$b0,$0a,$a9,$17,$99,$02,$18,$d0,$20,$85
        .byte $f5,$ea

    L_e40d:
        jsr L_d500
    L_e410:
        bne L_e42a
    L_e412:
        jsr L_d588
        bne L_e42a
        lda $04
        sec 
        sbc #$01
        and #$f0
        ora #$0d
        sta $1803,y
        lda #$00
        sta $67
        sta $f5
        nop 
    L_e42a:
        rts 


        sta $f5
        nop 
        lda $03
        cmp #$d8
        bcc L_e43e
        lda #$d8
        sta $1802,y
        bne L_e45b
        sta $f5
        nop 
    L_e43e:
        jsr L_d500
        bne L_e45b
        jsr L_d5a7 + $4
        bne L_e45b
        lda $04
        sec 
        sbc #$01
        and #$f0
        ora #$0d
        sta $1803,y
        lda #$00
        sta $67
        sta $f5
        nop 
    L_e45b:
        rts 


        sta $f5
        nop 
        lda $04
        cmp #$1d
        bcs L_e46f
        lda #$1d
        sta $1803,y
        bne L_e4a0
        sta $f5
        nop 
    L_e46f:
        jsr $d523
        bne L_e4a0
        jsr L_d61e
        bne L_e4a0
        txa 
        pha 
        lda $08
        and #$f8
        pha 
        lda Dipswitch_1
        and #$40
        beq L_e4a4
        pla 
        ldx $1f
        sta $f5
        nop 
        clc 
        adc L_d4fa,x
        sta $1802,y
        pla 
        tax 
        sta $f5
        nop 
        lda #$00
        sta $67
        sta $f5
        nop 
    L_e4a0:
        rts 


        sta $f5
        nop 
    L_e4a4:
        pla 
        ldx #$00
        jmp $d48d
        sta $f5
        nop 
        lda $04
        cmp #$dd
        bcc L_e4bd
        lda #$dd
        sta $1803,y
        bne L_e4f0
        sta $f5
        nop 
    L_e4bd:
        lda $03
        jsr $d523
        bne L_e4f0
    L_e4c4:
        jsr L_d641
        bne L_e4f0
        txa 
        pha 
        lda $08
        and #$f8
        pha 
        lda Dipswitch_1
        and #$40
        beq L_e4f4
        pla 
        ldx $1f
        sta $f5
        nop 
        clc 
        adc L_d4fa,x
        sta $1802,y
        pla 
        tax 
        sta $f5
        nop 
        lda #$00
        sta $67
        sta $f5
        nop 
    L_e4f0:
        rts 


        sta $f5
        nop 
    L_e4f4:
        pla 
        ldx #$00
        jmp L_d4dd

        .byte $ff,$01,$fe,$02,$85,$f5,$ea,$a5,$04,$29,$0f,$f0,$19,$c9,$0f,$f0
        .byte $15,$c9,$0e,$f0,$11,$c9,$0d,$f0,$0d,$c9,$0c

    L_e515:
        .byte $f0,$09
        .byte $c9,$0b,$f0,$05,$c9,$0a,$85,$f5,$6e,$60,$85,$f5,$ea,$a5,$03,$85
        .byte $08,$ad,$03,$40,$29,$40,$f0,$0b,$a5,$1f,$f0,$07,$c6,$08,$e2,$08
        .byte $c1,$f5,$ea

    L_e53a:
        inc $08
        nop 
        php 
        nop 
        php 
        lda $08
        and #$0f
        cmp #$06

        .byte $90,$28,$c9,$08,$90,$39,$c9,$0e,$b0,$33,$85,$f5,$ea,$a5,$08,$29
        .byte $f0,$c9,$10,$f0,$2a,$c9,$40,$f0,$26,$c9,$70,$f0,$22,$c9,$a0,$f0
        .byte $1e,$c9,$d0,$f0,$1a,$d0,$18,$85,$f5,$6e,$a5,$08,$29,$f0,$c9,$30
        .byte $f0,$0d,$c9,$60,$f0,$09,$c9,$90,$f0,$05,$c9,$c0,$85,$f5,$6e,$60
        .byte $85,$f5,$ea,$a5,$03,$38,$e9,$08,$4a,$4a,$4a,$4a,$85,$12,$4d,$0f
        .byte $38,$e5,$12,$85,$12,$a5,$04,$18,$69,$07,$29,$f0,$18,$65,$12,$aa
        .byte $4c,$cc,$d5,$85,$f5,$ea,$a5,$03,$18,$69,$19,$4a,$4a,$4a,$4a,$85
        .byte $12,$4d,$0f,$38,$e5,$12,$85,$12

    L_e5be:
        cmp #$04
        clc 
        adc #$07
        and #$f0
        clc 
        adc $12
        tax 
        sta $f5
        nop 
        lda L_d68e,x
    L_e5cf:
        tax 
        lda SCREEN_BUFFER_0 + $00,x
        lsr 
        lsr 
        lsr 
        lsr 
        cmp #$00
        beq L_e619
        cmp #$05
        beq L_e619
        cmp #$06
        beq L_e619
        cmp #$07
        beq L_e619
        lda $03
        clc 
        adc #$05
        lsr 
        lsr 
        lsr 
        lsr 
        sta $12
        lda #$0f
        sec 
        sbc $12
        sta $12
        lda $04
        clc 
        adc #$10
        and #$f0
        clc 
        adc $12
        tax 
        lda L_d68e,x
        tax 
        lda SCREEN_BUFFER_0 + $00,x
        lsr 
        lsr 
    L_e60d:
        lsr 
        lsr 
        cmp #$07
        beq L_e619
        lda #$00
        rts 


        sta $f5
        nop 
    L_e619:
        lda #$ff
        rts 


        sta $f5
        nop 
        lda $03
        clc 
        adc #$07
        lsr 
        lsr 
        lsr 
        lsr 
        sta $12
        lda #$0f
        sec 
        sbc $12
        sta $12
        lda $04
        clc 
        adc #$11
        and #$f0
        clc 
        adc $12
        tax 
        jmp $d662
        sta $f5
        nop 
        lda $03
        clc 
        adc #$07
        lsr 
        lsr 
        lsr 
        lsr 
        sta $12
        lda #$0f
        sec 
        sbc $12
        sta $12
        lda $04
        clc 
        adc #$14
        and #$f0
        clc 
        adc $12
        tax 
        sta $f5
        nop 
        lda L_d68e,x
        tax 
        lda SCREEN_BUFFER_0 + $00,x
    L_e669:
        lsr 
        lsr 
        lsr 
        lsr 
        cmp #$00
        beq L_e68b
        cmp #$01
        beq L_e68b
        cmp #$02
        beq L_e68b
        cmp #$09
        beq L_e68b
        cmp #$0a
        beq L_e68b
        cmp #$0b
        beq L_e68b
        lda #$00
        rts 


        sta $f5
        nop 
    L_e68b:
        lda #$ff
        rts 



        .byte $00,$01,$02,$03,$04,$05,$06,$07,$87,$86,$85,$84,$83,$82,$81,$80
        .byte $08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$8f,$8e,$8d,$8c,$8b,$8a,$89,$88
        .byte $10,$11,$12,$13,$14,$15,$16,$17,$97,$96,$95,$94,$93,$92,$91,$90
        .byte $18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$9f,$9e,$9d,$9c,$9b,$9a,$99,$98
        .byte $20,$21,$22,$23,$24,$25

    L_e6d4:
        rol $27

        .byte $a7,$a6,$a5,$a4,$a3,$a2,$a1,$a0,$28

    L_e6df:
        and #$2a

        .byte $2b,$2c,$2d,$2e,$2f,$af,$ae,$ad,$ac,$ab,$aa,$a9,$a8

    L_e6ee:
        .byte $30,$31,$32,$33,$34
        .byte $35,$36,$37,$b7,$b6,$b5,$b4,$b3,$b2,$b1,$b0,$38,$39,$3a,$3b,$3c
        .byte $3d,$3e,$3f,$bf,$be,$bd,$bc,$bb,$ba,$b9,$b8,$40,$41,$42,$43,$44
        .byte $45,$46,$47,$c7,$c6,$c5,$c4,$c3,$c2,$c1,$c0,$48,$49,$4a,$4b,$4c
        .byte $4d,$4e,$4f,$cf,$ce,$cd,$cc,$cb,$ca,$c9,$c8,$50,$51,$52,$53,$54
        .byte $55,$56,$57,$d7,$d6,$d5,$d4,$d3,$d2,$d1,$d0,$58,$59,$5a,$5b,$5c
        .byte $5d,$5e,$5f,$df,$de,$dd,$dc,$db,$da

    L_e74c:
        cmp $60d8,y
        adc ($62,x)

        .byte $63,$64

    L_e753:
        adc $66

        .byte $67,$e7,$e6,$e5,$e4,$e3,$e2,$e1,$e0,$68,$69,$6a,$6b,$6c,$6d,$6e
        .byte $6f,$ef,$ee,$ed,$ec,$eb,$ea,$e9,$e8,$70,$71,$72,$73,$74,$75,$76
        .byte $77,$f7,$f6,$f5,$f4,$f3,$f2,$f1,$f0,$78,$79,$7a,$7b,$7c,$7d,$7e
        .byte $7f,$ff,$fe,$fd,$fc,$fb,$fa,$f9,$f8,$85,$f6,$ea

    L_e791:
        jmp L_d838
        sta $f5
        ror $6ea5
        cmp #$ff
        bne L_e7a0
        jmp L_d863
    L_e7a0:
        jsr $e672

        .byte $e6,$6e,$c9,$6e,$c9,$01,$f0,$1a,$c9,$09,$f0,$4b,$c9,$11,$f0,$66
        .byte $c9,$19,$f0,$da,$c9,$22,$f0,$04,$60

    L_e7bc:
        .byte $85,$f6,$6e,$4c,$57,$d8,$85,$f5,$6e,$a5,$ba,$4a,$a8,$b9,$64,$d8
        .byte $8d,$1c,$18,$5d,$6e,$d8,$8d,$1d,$18,$5d,$69,$d8,$8d,$18,$18,$b9

    L_e7dc:
        .byte $82,$d8,$8d,$19,$18,$a6,$1f,$b5,$2b,$38,$f8,$e9,$01,$95,$2b,$d8
        .byte $a5,$1b,$f0,$06,$20,$94,$ca,$85,$f6,$6e,$60,$85,$f5,$ea

    L_e7fa:
        lda $ba
        lsr 
        tay 
        lda $181d
        cmp vColorRam + $6e,y
        bne L_e80f
        lda vColorRam + $73,y
        sta $181d
        sta $f6
        nop 
    L_e80f:
        lda vColorRam + $87,y
        sta $1819
    L_e815:
        rts 


        sta $f5
        nop 
    L_e819:
        lda $ba
    L_e81b:
        lsr 
        tay 
        lda $181d
        cmp vColorRam + $73,y
        bne L_e82e
        lda vColorRam + $78,y
        sta $181d
        sta $f6
    L_e82d:
        nop 
    L_e82e:
        lda vColorRam + $8c,y
        sta $1819
        rts 


    L_e835:
        sta $f5
        nop 
        lda $ba
        lsr 
        tay 
        lda $181d
        cmp vColorRam + $78,y
        bne L_e84d
        lda vColorRam + $7d,y
        sta $181d
        sta $f6
        nop 
    L_e84d:
        lda vColorRam + $91,y
        sta $1819
        rts 


        sta $f5
        nop 
        lda #$ff
        sta $6e
        lda #$00
        sta $1818
        sta $f5
        nop 
        rts 



        .byte $03,$03,$01,$01,$01,$03,$03,$01,$01,$05,$49,$49,$49,$4b,$4a,$41
        .byte $41,$41,$48,$47,$49,$49,$49,$4b,$4a,$41,$41,$41,$48,$47,$20,$20
        .byte $20,$24,$24,$21,$21,$21,$25,$25,$22,$22,$22,$26,$26,$23,$23,$23
        .byte $27,$27,$85,$f5,$ea,$a5,$ba,$c9,$06,$f0,$50,$c9,$08,$f0,$4c,$ad
        .byte $1e,$18,$49,$ff,$38,$e9,$28,$4a,$4a,$4a,$85,$03,$a9,$00,$85,$04
        .byte $ad,$1f,$18

    L_e8b7:
        and #$f8
        clc 
        adc #$10
        asl 
        rol $04
        asl 
        rol $04
        clc 
        adc $03
        sta $05
        sta $03
        lda $04
        adc #$10
        sta $04
        clc 
        adc #$04
        sta $06
    L_e8d4:
        ldy #$24
        lda ($05),y
        and #$03
        beq L_e8ef
        ldy #$04
        lda ($05),y
        and #$03
        beq L_e8ef
        lda ($03),y
        and #$1f
    L_e8e8:
        cmp #$04
        bcc L_e8f2
        sta $f5
        nop 
    L_e8ef:
        jmp L_da4e + $7
    L_e8f2:
        sta $f5
        nop 
        lda #$08
        jsr L_ea5d
        jsr $da6a

        .byte $a5,$ba,$c9,$02,$f0,$15,$c8,$85,$f5,$6e,$20,$58,$da,$f0,$1f,$c8
        .byte $c0,$08,$d0,$f6,$a0,$04,$d0,$5f,$85,$f5,$6e,$88,$85,$f5,$ea

    L_e91c:
        jsr L_da58

        .byte $f0,$2e,$88,$d0,$f8,$a0,$01,$d0,$4c,$85,$f5,$ea

    L_e92b:
        txa 
        bne L_e93b
        sta $f5
        nop 
    L_e931:
        iny 
        lda ($05),y
        and #$03
        bne L_e931
        sta $f5
        nop 
    L_e93b:
        ldx #$04
        sta $f5
        ror $b188

        .byte $03,$29,$1c,$f0,$a8,$ca,$d0,$f6,$f0,$28,$85,$f5,$6e,$8a,$d0,$0d
        .byte $85,$f5,$6e,$88,$b1,$05,$29,$03,$d0,$f9,$85,$f5,$6e,$a2,$04,$85
        .byte $f5,$ea

    L_e964:
        iny 
        lda ($03),y
        and #$1c
        beq L_e8ef
        dex 
        bne L_e964
        dey 
        dey 
        dey 
        sta $f5
        nop 
    L_e974:
        lda #$09
        jsr L_ea5d

    L_e979:
         .byte $98,$18,$65,$03,$85,$07,$c9,$04,$69,$00,$29,$03,$85,$08,$c9,$07

    L_e989:
        .byte $29,$1f,$0a,$0a,$0a,$85,$09,$46,$08,$66,$07,$a2,$08,$aa,$07
        .byte $a5,$07,$29,$f8,$85,$07,$4a,$00,$85,$f5,$ea,$bd,$02,$02,$f0,$1e
        .byte $bd,$03,$02,$49,$ff,$29,$f8,$c5,$09,$d0,$0c,$bd,$04,$02,$29,$f8
        .byte $c5,$07,$f0,$10,$85,$f5,$6e,$e8,$e8,$e8,$e8,$4c,$a3,$d9

    L_e9c6:
        jmp $da31

    L_e9c9:
         .byte $85,$f5,$ea,$bd,$02,$02,$c9,$0f,$b0,$ec
        .byte $29,$0f,$09,$10,$9d,$02,$02,$bd,$04,$02,$29,$fc,$09,$04,$9d,$04
        .byte $02,$4d,$01,$9d,$05,$02,$a0,$00,$84,$0a,$c1,$f5,$6e,$a4,$0a,$b9
        .byte $68,$00,$29,$a0,$d0,$2d,$98,$0a,$0a,$a8,$b9,$02,$18

    L_ea00:
        clc 
        adc #$08
        cmp $0203,x
        bcs L_ea26
        clc 
        adc #$20
        cmp $0203,x
        bcc L_ea26
        lda $1803,y
        and #$f8
        clc 
        adc #$10
        sta $0b
        lda $0204,x
        and #$f8
        cmp $0b
        beq L_ea36
        sta $f5
        nop 
    L_ea26:
        inc $0a
        ldy $0a
        cpy #$06

        .byte $d0,$c2,$85,$f5,$ea,$f0,$22

    L_ea33:
        sta $f5
        nop 
    L_ea36:
        ldy $0a
    L_ea38:
        lda.a $0068,y
        and #$0f
        ora #$40
        sta.a $0068,y
        stx $b1,y
        inc $0205,x
        inc $0205,x
        lda #$12
        jsr L_ea5d
        jmp L_da26
        sta $f5
        nop 
    L_ea55:
        rts 


        sta $f5
        nop 
    L_ea59:
        ldx #$ff
        lda ($05),y
    L_ea5d:
        and #$03
        beq L_ea86
        inx 
        lda ($03),y
        and #$1c
        beq L_ea86
        sta $f5
        nop 
        sty $12
        clc 
        lda ($03),y
        adc #$04
        sta ($03),y
        clc 
        tya 
        adc #$20
        tay 
        lda ($03),y
        adc #$04
        sta ($03),y
        ldy $12
        lda #$ff
        sta $f5
        nop 
    L_ea86:
        rts 


        sta $f5
        nop 
        ldy #$00
        lda $4004
        and #$08
        bne L_ea98
        ldy #$06
        sta $f5
        nop 
    L_ea98:
        clc 
        tya 
        adc $64
        tax 
        lda vColorRam + $302,x
        sta $bc
        lda vColorRam + $30e,x
        sta $bd
        lda vColorRam + $31a,x
        sta $be
        lda #$00
        sta $c2
        sta $c3
        sta $bf
        sta $c0
        sta $c1
        sta $90
        ldx $1f
        lda $61,x
        lsr 
        lsr 
        sta $03
        cmp #$08
        bcc L_eac8
        lda #$07
    L_eac8:
        tax 
        lda vColorRam + $2f0,x
        ldy #$05
        sta $f5
        nop 
    L_ead1:
        sta.a $0091,y
        dey 
        bpl L_ead1
        lda vColorRam + $2f9,x
        ldy #$05
        sta $f5
        nop 
    L_eadf:
        sta.a $00a1,y
        dey 
        bpl L_eadf
        lda vColorRam + $2f4
        sta $98
        lda vColorRam + $2fd
        sta $a8
        rts 



        .byte $0f,$03,$07,$0f,$03,$07,$0f,$03,$07,$04,$03,$03,$03,$02,$02,$02
        .byte $01,$01,$03,$03,$02,$04,$00,$02,$05,$05,$02,$04,$00,$02,$00,$00
        .byte $03,$02,$02,$02,$00,$00,$03,$02,$02,$02,$01,$01,$01,$00,$04,$02
        .byte $01,$01,$01,$00,$04,$02,$85,$f5,$ea,$a5,$6f,$30,$6e,$a5,$13,$29
        .byte $1f,$d0,$68,$e6,$c2

    L_eb35:
        dex 

        .byte $c2,$e0,$03,$d0,$02,$a2,$00

    L_eb3d:
        stx $c2
        cmp L_d5bc,y

        .byte $bf,$f0,$56,$a0,$00,$85,$f5,$ea

    L_eb4a:
        lda.a $0068,y
        cmp #$ff
    L_eb4f:
        beq L_eb5c
        iny 
        cpy #$06
        bne L_eb4a
    L_eb56:
        jmp $db9b
    L_eb59:
        sta $f5
        nop 
    L_eb5c:
        inc $bf,x
        jmp ($098a)
        jsr $6899

        .byte $00

    L_eb65:
        cpy #$0a
        eor $9901
        sta L_ea00,y

        .byte $c3,$c9,$c3,$29,$03,$85,$c3,$0d,$01,$aa,$bd,$9c,$db,$99,$a9,$00
        .byte $54,$0a,$0a,$a8,$bd,$9e,$db,$99,$02,$18,$c9,$63,$0a,$0a,$18,$65
        .byte $c3,$aa,$bd,$a1,$db,$99,$03,$18,$08,$eb,$dc,$85,$f5,$ea

    L_eb9b:
        rts 


        jsr $f040

        .byte $00,$1d,$1d,$ad,$ad,$1d,$1d,$5d,$5d,$1d,$1d,$8d,$ad,$1d,$1d,$8d
        .byte $8d,$1d,$1d,$cd,$cd,$1d,$2d,$9d,$8d,$80,$85,$f5,$ea,$a5,$6f,$30
        .byte $1c,$a2,$00,$85,$f5,$6e,$b5,$68,$29,$d0,$d0,$09,$b5,$68,$29,$20
        .byte $d0,$0f,$85,$f5,$ea

    L_ebd4:
        inx 
        cpx #$06

        .byte $d0,$ec,$85,$f5,$ea

    L_ebdc:
        rts 


        sta $f5
        ror $7086
        lda $a9,x
        sta $71
        lsr $0a
        asl 
        tay 
        lda $1802,y
        sta $03
        eor $1803,x
        sta $04
        cmp #$03
        cmp #$d9
        bcs L_ec4e
        cmp #$18
        bcc L_ec5e
        jsr $e0b6
        bne L_ec45
        cmp #$10
        beq L_ec1a
        cmp #$40
        beq L_ec1a
        cmp #$70
        beq L_ec1a
        cmp #$a0
        beq L_ec1a
        cmp #$d0
        bne L_ec45
        sta $f5
        nop 
    L_ec1a:
        jsr $e09d
        bne L_ec2c
        jsr $e07b
        beq L_ec37
        jsr L_e08c
        beq L_ec37
        sta $f5
        nop 
    L_ec2c:
        jsr $e059
        beq L_ec37
        jmp L_dc6b
        sta $f5
        nop 
    L_ec37:
        ldx $70
        lda $68,x
        and #$0f
        sta $68,x
        jmp L_dc6b
        sta $f5
        nop 
    L_ec45:
        lda $03
        cmp #$80
        bcs L_ec5e
        sta $f5
        nop 
    L_ec4e:
        ldx $70
        lda $a9,x
        and #$0f
        ora #$20
        sta $a9,x
        jmp L_dc6b
        sta $f5
        nop 
    L_ec5e:
        ldx $70
        lda $a9,x
        and #$0f
        ora #$40
        sta $a9,x
        sta $f5
        nop 
        ldx $70
        jsr L_d269
        ldx $70
        jmp $dbd4
        sta $f5
        nop 
        lda $13
        and #$3f
        bne L_ece8
        inc $90
        lda $90
        cmp #$14
        bcc L_ecb4
        lda #$00
    L_ec88:
        sta $90
        ldx #$05
        sta $f5
        nop 
    L_ec8f:
        lda $91,x
        and #$10
        beq L_eca6
        lda $a1,x
        cmp #$02
        beq L_ecae
        dec $a1,x
        lda #$03
        sta $91,x
        bne L_ecae
        sta $f5
        nop 
    L_eca6:
        sec 
        lda $91,x
        rol $91,x
        sta $f5
        nop 
    L_ecae:
        dex 
        bpl L_ec8f
        sta $f5
        nop 
    L_ecb4:
        ldy #$05
        ldx #$14
        sta $f5
        nop 
    L_ecbb:
        lda.a $0068,y
        bmi L_ecc9
        lda $73,x
        beq L_ecd5
        dec $73,x
        sta $f5
        nop 
    L_ecc9:
        dey 
        dex 
        dex 
        dex 
        dex 
        bpl L_ecbb
        bmi L_ece8
        sta $f5
        nop 
    L_ecd5:
        txa 
        pha 
        tya 
        pha 
        sty $0a
        jsr L_dceb
        pla 
        tay 
        pla 
        tax 
        jmp L_dcc9
        sta $f5
        nop 
    L_ece8:
        rts 



    L_ece9:
         .byte $85,$f5,$ea,$a4,$0a,$b9,$68,$00,$29,$03,$0a,$a8,$b9,$2a,$dd,$85
        .byte $03,$b9,$2b,$dd,$85,$04,$b9,$30,$dd,$85,$05,$5d,$31,$dd,$85,$06
        .byte $a5,$0a,$0a,$0a,$aa,$b4,$75,$b1,$03,$95,$72,$59,$05,$95,$73,$a9
        .byte $00,$95,$74,$fa,$75,$d8,$75,$b1,$03,$10,$07,$a9,$00,$95,$75,$85
        .byte $f5,$ea

    L_ed2b:
        rts 



        .byte $38,$dd,$4d,$dd,$5a,$dd,$43,$dd,$54,$dd,$5f,$dd,$04,$03,$04,$05
        .byte $04,$04

    L_ed3e:
        ora $04

        .byte $04,$04,$ff,$03,$03,$07,$05,$03,$03,$05,$03

    L_ed4b:
        .byte $03,$03,$03,$03,$04,$03,$03,$04,$ff,$03,$03,$07
        .byte $09,$0d,$03,$05,$05,$04,$05,$ff,$09,$17,$09,$13,$85,$f5,$6e,$a5
        .byte $6f,$30,$19,$a2,$05,$86,$70,$c1,$f5,$ea

    L_ed71:
        ldx $70
        lda $68,x
        and #$f0

        .byte $f0,$0e,$85,$f5,$ea,$c6,$70,$10,$f1,$85,$f5,$ea

    L_ed83:
        rts 



        .byte $85,$f5,$6e,$8a,$0a,$0a,$a8,$b9,$02,$18,$85,$03,$b9,$03,$18,$85
        .byte $04,$d9,$8a,$f0,$0b,$d6,$8a,$85,$f5,$6e,$4c,$bb,$de,$85,$f5,$ea
        .byte $20,$9d,$e0,$d0,$f5,$20,$b6,$e0,$d0,$f0,$ad,$1e,$18,$85,$17,$ad
        .byte $1f,$18,$85,$18,$a5,$70,$0a,$0a,$aa,$b4,$72,$f0,$11,$88,$f0,$14
        .byte $88,$f0,$17,$88,$f0,$1a,$88,$f0,$20,$d0,$44,$85,$f5,$ea

    L_edd2:
        jmp L_dded
        sta $f5
        ror $134c
        dec L_f57f + $6,x
        ror L_ed4b + $1
        cmp L_f57f + $6,x
        nop 
    L_ede4:
        lda $17
        adc #$08
        sta $17
        sta $f5
        ror $70a6
        lda $a9,x
        sta $71
        and #$f0
        cmp #$20
        sta $f5
        nop 
        beq L_ee1f
        cmp #$40
        sta $f5
        nop 
        beq L_ee34
        cmp #$60
        sta $f5
        nop 
        beq L_ee49
        sta $f5
        nop 
        jmp L_de5e
        sta $f5
        nop 
    L_ee13:
        lda $18
        adc #$08
        sta $18
        jmp L_dded
        sta $f5
        nop 
    L_ee1f:
        lda $18
        and #$f8
        sta $05
        lda $04
        and #$f8
        cmp $05
        bcs L_ee73
        beq L_ee79
        bcc L_ee7f
        sta $f5
        nop 
    L_ee34:
        lda $18
        and #$f8
        sta $05
        lda $04
        and #$f8
        cmp $05
        bcs L_ee85
        beq L_ee8b
        bcc L_ee91
        sta $f5
        nop 
    L_ee49:
        lda $17
        and #$f8
        sta $05
        lda $03
        and #$f8
        cmp $05
        bcc L_eea3
        beq L_ee9d
        bcs L_ee97
        sta $f5
        nop 
        lda $17
        and #$f8
        sta $05
        lda $03
        and #$f8
        cmp $05
        bcc L_eeb5
        beq L_eeaf
        bcs L_eea9
        sta $f5
        nop 
    L_ee73:
        jmp L_dee6 + $1
        sta $f5
        nop 
    L_ee79:
        jmp L_df01
        sta $f5
        nop 
    L_ee7f:
        jmp L_df16 + $5
        sta $f5
        nop 
    L_ee85:
        jmp L_df35
        sta $f5
        nop 
    L_ee8b:
        jmp L_df55
        sta $f5
        nop 
    L_ee91:
        jmp L_df62 + $d
        sta $f5
        nop 
    L_ee97:
        jmp L_df62 + $27
        sta $f5
        nop 
    L_ee9d:
        jmp $dfa3
        sta $f5
        nop 
    L_eea3:
        jmp $dfbd
        sta $f5
        nop 
    L_eea9:
        jmp L_dfd7
        sta $f5
        nop 
    L_eeaf:
        jmp L_dff1
        sta $f5
        nop 
    L_eeb5:
        jmp $e00b
        sta $f5
        nop 
        ldx $70
        jsr L_d3c3
        bne L_eecd
        ldx $70
        jsr L_d269
        jmp L_dd7c
        sta $f5
        nop 
    L_eecd:
        ldx $70
        lda $a9,x
        sta $71
        and #$f0
        cmp #$20
        beq L_ef01
        cmp #$40
        beq L_ee8b
        cmp #$60
        beq L_ee9d
        jmp L_dff1
        sta $f5
        nop 
        jsr $e059

        .byte $f0,$63,$20,$7b,$e0,$f0,$5e,$20,$8c,$e0,$f0,$59,$20,$6a,$e0,$f0
        .byte $54,$4c,$3d,$e0,$85,$f5,$ea

    L_ef01:
        jsr $e07b

        .byte $f0,$49,$20,$59,$e0,$f0,$44,$20,$6a,$e0,$f0,$3f,$20,$8c,$e0,$f0
        .byte $3a,$4c,$3d,$e0,$85,$f5,$ea,$20,$6a,$e0,$f0,$2f,$20,$7b,$e0,$f0
        .byte $2a,$20,$8c,$e0,$f0,$25,$20,$59,$e0,$f0,$20,$4c,$3d,$e0,$85,$f5
        .byte $6e,$20,$59,$e0,$f0,$15,$20,$8c,$e0,$f0,$10,$20,$6a,$e0,$f0,$0b
        .byte $20,$7b,$e0,$f0,$06,$4c,$3d,$e0,$85,$f5,$6e,$4c,$25,$e0,$85,$f5
        .byte $6e,$20,$8c,$e0,$f0,$f5,$20,$6a,$e0,$f0,$f0,$20,$59,$e0,$f0,$eb
        .byte $20,$7b,$e0,$f0,$e6,$4c,$3d,$e0,$85,$f5,$6e,$20,$6a,$e0,$f0,$db
        .byte $20,$8c,$e0,$f0,$d6,$20,$59,$e0,$f0,$d1,$20,$7b,$e0,$f0,$cc,$4c
        .byte $3d,$e0,$85,$f5,$ea,$20,$7b,$e0,$f0,$c1,$20,$59,$e0,$f0,$bc,$20
        .byte $8c,$e0,$f0,$b7,$20,$6a,$e0,$f0,$b2,$4c,$3d,$e0,$85,$f5,$ea,$20
        .byte $59,$e0,$f0,$7d,$20,$7b,$e0,$f0,$78,$20,$8c,$e0,$f0,$73,$20,$6a
        .byte $e0,$f0,$6e,$4c,$3d,$e0,$85,$f5,$6e,$20,$8c,$e0,$f0,$63,$20,$59
        .byte $e0,$f0,$5e,$20,$7b,$e0,$f0,$59,$20,$6a,$e0,$f0,$54,$4c,$3d,$e0
        .byte $85,$f5,$6e,$20,$7b,$e0,$f0,$49,$20,$6a,$e0,$f0,$44,$20,$8c,$e0
        .byte $f0,$3f,$20,$59,$e0,$f0,$3a,$4c,$3d,$e0,$85,$f5,$ea,$20,$6a,$e0
        .byte $f0,$2f,$20,$8c,$e0,$f0,$2a,$20,$7b,$e0,$f0,$25



    .segment Rom3 []
    * = $F000 "Rom2"

        

        .byte $36,$85,$e4,$a9
        .byte $00,$85,$e5,$85,$f5,$ea

    L_f00a:
        ldy #$02
        sta $f5
        nop 
    L_f00f:
        lda ($e4),y
        sta.a $00e7,y
        dey 
        bpl L_f00f
        lda $e7
        cmp #$ff
        bne L_f021
        rts 


        sta $f5
        nop 
    L_f021:
        lda $e4
        clc 
        adc #$03
        sta $e4
        lda $e5
        adc #$00
        sta $e5
        inc $ed
        sed 
        lda $e7
        sec 
        sbc $cc
        lda $e8
        sbc $cd
        lda $e9
        sbc $ce
        cld 
        bcs L_f00a
        ldx $ed
        lda L_f07e,x
        clc 
        adc #$36
        sta $d8
        lda #$00
        sta $d9
        lda #$02
        sta $da
        jsr L_f08c
        ldx #$02
        sta $f5
        nop 
    L_f05b:
        lda #$00
        sta $cc,x
        dex 
        bpl L_f05b
        ldx $ed
        lda L_f083 + $1,x
        clc 
        adc #$36
        sta $d8
        lda #$00
        sta $d9
        lda #$02
        sta $da
        jsr L_f08c
        jsr L_f0d1
        jsr L_cbe3
        rts 



    L_f07e:
         .byte $00,$00,$03
        .byte $06,$09

    L_f083:
        .byte $0c,$00,$12
        .byte $15,$18,$1b,$1e,$85,$f5

    L_f08c:
        nop 
    L_f08d:
        ldy $da
        sta $f5
        nop 
    L_f092:
        lda ($d8),y
        sta.a $00ea,y
        dey 
        bpl L_f092
        lda $ea
        cmp #$ff
        bne L_f0a4
        rts 


        sta $f5
        nop 
    L_f0a4:
        ldy $da
        sta $f5
        nop 
    L_f0a9:
        lda.a $00cc,y
        sta ($d8),y
        dey 
        bpl L_f0a9
        ldx $da
        sta $f5
        nop 
    L_f0b6:
        lda $ea,x
        sta $cc,x
        dex 
        bpl L_f0b6
        ldx $da
        inx 
        txa 
        clc 
        adc $d8
        sta $d8
        lda $d9
        adc #$00
        sta $d9
        jmp L_f08d
        sta $f5
    L_f0d1:
        nop 
        jsr L_c8a3
        jsr L_f1da + $2
        jsr L_f2f8
        lda #$05
        sta $dc
        sta $f5
        nop 
    L_f0e2:
        lda $dc
        clc 
        adc #$03
        sta $dd
        asl 
        clc 
        adc $dd
        tax 
        lda $dc
        asl 
        clc 
        adc #$10
        tay 
        jsr L_c95a
        dec $dc
        bpl L_f0e2
        lda #$04
        sta $dc
        jsr L_f1b4 + $2

        .byte $a9,$00,$85,$de,$4d,$07,$85,$df,$a9,$06,$85,$e0,$4d,$00,$85,$e1
        .byte $85,$e2,$c1,$e3,$c1,$f5,$ea

    L_f11a:
        jsr $f2b8
        jsr L_f2d1
        lda $e2
        and #$0f
        cmp #$0f
        bne L_f131 + $3
        jsr $f2b8
        lda #$00
        sta Dipswitch_1
        rts 



    L_f131:
         .byte $85,$f5,$ea,$a5,$e2,$10,$15
        .byte $a5,$e3,$30,$11,$a9,$ff,$85,$de,$a5,$e3,$09,$80,$85,$e3,$4d,$00
        .byte $85,$df,$85,$f5,$6e,$a5,$de,$05,$df,$d0,$12,$a5,$e2,$10,$07,$09
        .byte $0f,$85,$e2,$85,$f5,$6e,$09,$80,$85,$e2,$85,$f5,$6e,$20,$2f,$f3
        .byte $20,$7c,$f3,$20,$e9,$f3,$20,$2f,$f4,$20,$9c,$f5,$a5,$e2,$29,$20
        .byte $f0,$1d,$20,$dc,$f1,$20,$b6,$f1,$20,$f8,$f2,$a5,$e2,$49,$20,$aa
        .byte $a5,$e3,$29,$40,$d0,$04,$e8,$85,$f5,$ea,$86,$e2,$c1,$f5,$6e,$20
        .byte $3e,$f6,$a5,$e3,$29,$bf,$85,$e3,$a5,$e2,$29,$0f,$c9,$03,$90,$09
        .byte $a5,$e3,$09,$20,$85,$e3,$c1,$f5,$ea

    L_f1b1:
        jmp L_f11a

    L_f1b4:
         .byte $85,$f5,$6e,$a9,$b4,$8d,$02,$18,$4d,$40,$8d,$03
        .byte $18,$a9,$47,$8d,$01,$18,$4d,$01,$8d,$00,$18,$a9,$00,$8d,$04,$18
        .byte $85,$ee,$85,$ef,$4d,$17,$8d,$05,$18,$60

    L_f1da:
        .byte $85,$f5,$6e,$a9,$08,$85,$dd,$85,$f5,$ea,$a5,$dd,$0a,$aa,$bd,$12
        .byte $f2,$85,$d8,$dd,$24,$f2,$85,$da,$e8,$bd,$12,$f2,$85,$d9,$bd,$24
        .byte $f2,$85,$db,$ca,$dd,$bd,$36,$f2,$a8,$85,$f5,$ea

    L_f206:
        lda ($d8),y
        sta ($da),y
        dey 
        bpl L_f206
        dec $dd
        bpl L_f1da + $a
        rts 



        .byte $3f,$f2,$52,$f2,$65,$f2,$78,$f2,$83,$f2,$92,$f2,$9b,$f2,$a4,$f2
        .byte $ad,$f2,$a8,$10,$08,$11,$68,$11,$c8,$11,$4b,$12,$d4

    L_f22f:
        clc 

        .byte $14,$1b,$34,$1b,$54,$1b,$12,$12,$12,$0a,$0e,$08,$08,$08,$08,$0b
        .byte $00,$0c,$00,$0d,$00,$0e,$00,$0f,$00,$10,$00

    L_f24b:
        ora ($00),y

        .byte $12,$00,$13,$00,$14,$15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1a
        .byte $00,$1b,$00,$1c,$00,$1d,$00,$1e,$1f,$00,$20,$00,$21,$00,$22,$00
        .byte $23,$00,$24,$00,$cc,$00,$cd,$00,$ce,$00,$cf,$1d,$1a,$0b,$00,$1c
        .byte $1f,$0c,$00,$0f,$18,$0e,$3c,$2f,$3b,$33,$00,$00,$00,$00,$00,$00
        .byte $41,$31,$3d,$40,$33,$26,$00,$27,$00,$28,$00,$29,$00,$2a,$3e,$00
        .byte $3e,$00,$3e,$00,$3e,$00,$3e,$42,$00,$42,$00,$42,$00,$42,$00,$42
        .byte $41,$00,$41,$00,$41,$00,$41,$00,$41,$85,$f5,$ea

    L_f2b9:
        lda Dipswitch_1
        bpl L_f2b9
        sta $f5
        nop 
    L_f2c1:
        lda Dipswitch_1
        bmi L_f2c1
        cli 
        nop 
        nop 
        nop 
        sei 
        jsr $d045
        rts 


        sta $f5
    L_f2d1:
        nop 
        lda $de
        sec 
        sbc #$01
        sta $de
        lda $df
        sbc #$00
        sta $df
        dec $e0
        bpl L_f2ea
        lda #$04
        sta $e0
        sta $f5
        nop 
    L_f2ea:
        dec $e1
        bpl L_f2f5
        lda #$00
        sta $e1
        sta $f5
        nop 
    L_f2f5:
        rts 


        sta $f5
    L_f2f8:
        nop 
        lda #$8b
        sta $d8
        lda #$12
        sta $d9
        ldx #$00
        sta $f5
        ror.a $00a0
        sta $f5
        nop 
    L_f30b:
        lda $48,x
        sta ($d8),y
        jmp ($0fe0)

        .byte $d0,$04,$60,$85,$f5,$6e,$c8,$c0,$03,$d0,$ee,$a5,$d8,$18,$69,$40
        .byte $85,$d8,$c9,$d9,$69,$00,$85,$d9,$4c,$06,$f3,$85,$f5,$6e,$a5,$e0
        .byte $d0,$45,$a5,$e2,$29,$10,$4a,$4a,$4a,$4a,$18,$69,$43,$8d,$01,$18
        .byte $a5,$e2,$10,$2a,$c6,$dc,$f0,$07,$a9,$47,$d0,$1c,$85,$f5,$ea

    L_f351:
        inc $f3
        lda $f3
        cmp #$01
        bne L_f361
        lda #$1e
        sta Dipswitch_1
        cmp ($f5,x)
        nop 
    L_f361:
        lda #$03
        sta $dc
        eor $854c
        sbc $ea,x
    L_f36a:
        sta $1801
        cmp ($f5,x)
        ror $e2a5
        eor #$10
        sta $e2
        cmp ($f5,x)
        nop 
        rts 


        sta $f5
    L_f37c:
        ror $02ad
        rti 

        .byte $49,$ff,$29,$03,$f0,$08,$ba,$e8,$e8,$9a,$60,$85,$f5,$6e,$a5,$e0
        .byte $d0,$42,$a5,$e2,$29,$e0,$d0,$3c,$a6,$cb,$ad,$03,$40,$29,$40,$d0
        .byte $05,$a2,$00,$85,$f5,$6e,$bd,$00,$40,$49,$ff,$29,$0f,$aa,$bd,$d5
        .byte $f3,$c5,$ef,$f0,$1f,$85,$ef,$14,$65,$ee,$10,$05,$a9,$00,$85,$f5
        .byte $ea

    L_f3c1:
        cmp #$24
        bcc L_f3ca
        lda #$23
        sta $f5
        nop 
    L_f3ca:
        sta $ee
        eor $8d15

        .byte $03,$40,$85,$f5,$ea,$60,$00,$01,$ff,$00,$f6,$00,$00,$00,$0a,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00,$85,$f5

    L_f3e9:
        nop 
        lda $e2
        and #$e0
        bne L_f422
        ldx #$78
        lda $ee
        cmp #$1e
        bcs L_f409
        ldx #$60
        cmp #$14
        bcs L_f409
        ldx #$48
        cmp #$0a
        bcs L_f409
        ldx #$30
        sta $f5
        nop 
    L_f409:
        stx $1803
        lda $ee
        sec 
        sta $f5
        nop 
    L_f412:
        sbc #$0a
        bcs L_f412
        adc #$0a
        tax 
        lda L_f423,x
        sta $1802
        sta $f5
        nop 
    L_f422:
        rts 



    L_f423:
         .byte $b4,$a4,$94,$84,$74,$64,$54,$44,$34
        .byte $24,$85,$f5,$ea,$a5,$e1,$d0,$4f,$a5,$e2,$29,$e0,$d0,$49,$a6,$cb
        .byte $ad,$03,$40,$29,$40,$d0,$05,$a2,$00,$85,$f5,$ea

    L_f448:
        lda $4000,x
        eor #$ff
        and #$10
        beq L_f483
        lda $e2
        and #$03
        cmp #$03
        beq L_f45f
        lda #$11
        sta Dipswitch_1
        nop 
    L_f45f:
        lda $ee
        cmp #$1e
        bcc L_f487
        sec 
        sbc #$1e
        asl 
        tax 
        lda L_f4eb,x
        sta $d8
        lda L_f4eb + $1,x
        sta $d9
        lda #$3f
        sta $e1
        lda #$17
        sta Dipswitch_1

        .byte $6c,$d8,$00,$85,$f5,$ea

    L_f483:
        rts 


        sta $f5
        nop 
    L_f487:
        lda $e3
        and #$20
        bne L_f483
        lda #$60
        sta $d9
        ldx $ee
        cpx #$1a
        bcc L_f4ac
        cpx #$1e
        bcs L_f4ac
        txa 
        sbc #$18
        tax 
        lda #$50
        sta $d8
        lda #$66
        sta $d9
        bne L_f4b3
        sta $f5
        nop 
    L_f4ac:
        lda #$50
        sta $d8
        sta $f5
        nop 
    L_f4b3:
        lda $d8
        clc 
        adc #$08
        sta $d8
        lda $d9
        adc #$00
        sta $d9
        dex 
        bpl L_f4b3
        sta $f5
        nop 
        lda #$e0
        sta $da
        lda #$62
        sta $db
        jsr L_f549 + $2
        jsr L_f535
        lda #$01
        sta $1804
        jsr L_f56f + $2
        lda #$00
        tay 
        sta ($d8),y
        lda $e2
        ora #$40
        sta $e2
        sta $f5
        nop 
    L_f4ea:
        rts 



    L_f4eb:
         .byte $fa,$f4,$fa,$f4
        .byte $16,$f5,$16,$f5,$0c,$f5,$0c,$f5,$85,$f5,$ea,$a5,$e3,$29,$20,$d0
        .byte $ea,$a9,$f5,$85,$ee,$ca,$ed,$4c,$09,$f6,$85,$f5,$ea,$a5,$e2,$09
        .byte $80,$85,$e2,$60,$85,$f5,$6e,$a5,$e2,$29,$0f,$f0,$16,$c6,$e2,$4d
        .byte $f5,$85,$ee,$a6,$ed,$20,$08,$f6,$a5,$e3,$09,$40,$29,$df,$85,$e3
        .byte $c1,$f5,$ea

    L_f532:
        rts 


        sta $f5
    L_f535:
        ror $02ad
        clc 
        sec 
        sbc #$04
        sta $1806
        cmp $1803
        sec 
        sbc #$08
        sta $1807
        rts 



    L_f549:
         .byte $85,$f5,$ea,$a2,$02,$85,$f5,$ea,$a0,$07,$85,$f5,$6e,$b1,$d8,$91
        .byte $da,$88,$10,$f9,$a5,$d9,$18,$69,$20,$85,$d9,$c9,$db,$18,$69,$20
        .byte $85,$db,$ca,$10,$e3,$60

    L_f56f:
        .byte $85,$f5,$ea,$ad,$07,$18,$85,$d9,$cd,$06,$18,$49,$ff,$85,$d8,$a2

    L_f57f:
        .byte $d9,$46,$d9,$46,$d9,$a2,$d9,$aa,$d8,$46,$d9,$66,$d8,$a2,$d9,$aa
        .byte $d8,$a5,$d9,$18,$69,$10,$85,$d9,$e2,$d8,$60,$85,$f5

    L_f59c:
        ror $e2a5
        and #$e0
        cmp #$40
        beq L_f5a6 + $3
        rts 



    L_f5a6:
         .byte $85,$f5,$ea,$a9,$9b,$85,$d8,$c9,$e2,$29,$0f,$f0,$11,$aa,$85,$f5
        .byte $6e,$a5,$d8,$38,$e9,$08,$85,$d8,$66,$d0,$f6,$85,$f5,$ea,$a6,$ed
        .byte $bd,$00,$f6,$85,$d9,$a5,$d8,$cd,$02,$18,$f0,$10,$90,$08,$ee,$02
        .byte $18,$70,$09,$85,$f5,$ea,$ce,$02,$18,$c1,$f5,$ea,$a5,$d9,$cd,$03
        .byte $18,$f0,$0d,$ee,$03,$18,$c1,$f5,$6e,$20,$35,$f5,$60,$85,$f5,$6e
        .byte $a5,$d8,$cd,$02,$18,$f0,$0c,$4c,$ef,$f5

    L_f600:
        .byte $00
        .byte $a8,$b8,$c8,$d8,$e8,$85,$f5

    L_f608:
        nop 
    L_f609:
        lda $e2
        ora #$20
        and #$bf
        sta $e2
        lda L_f083 + $1,x
        clc 
        adc #$36
        sta $d8
        lda #$00
        sta $d9
        lda $e2
        and #$0f
        tay 
        lda $ee
        cmp #$1a
        bcc L_f633
        cmp #$1e
        bcs L_f633
        adc #$b2
        bmi L_f639
        sta $f5
        nop 
    L_f633:
        clc 
        adc #$0b
        sta $f5
        nop 
    L_f639:
        sta ($d8),y
        rts 


        sta $f5
        nop 
        lda $e2
        bpl L_f65b
        lda #$d0
        sta $1802
        ldx $ed
        lda L_f600,x
        sec 
        sbc #$0c
        sta $1803
        lda #$00
        sta $1804
        sta $f5
        nop 
    L_f65b:
        rts 



        .byte $45,$09,$41,$54,$32,$30,$37,$30,$09,$2f,$20,$4b,$4f,$52,$45,$4b
        .byte $41,$52

    L_f66e:
        eor ($20,x)

        .byte $44,$49,$53,$50,$2e,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$0d,$0a,$09,$4a,$4d,$50,$09,$41,$54,$32,$30,$33,$30,$0d
        .byte $0a,$0d,$0a,$09,$53,$54,$41,$09,$44,$55,$4d,$59,$50,$0d,$0a,$09
        .byte $4e,$4f,$50,$0d,$0a,$41,$54,$32,$30,$37,$30,$09,$4c,$44,$58

    L_f6af:
        .byte $09,$23,$3e,$54,$45,$4b

    L_f6b5:
        lsr $4d41

        .byte $20,$20,$20,$20,$2f,$20,$54,$45,$4b

    L_f6c1:
        eor #$20
        lsr $4d41
        eor $20

        .byte $44,$49,$53,$50,$4c,$41,$59,$2e,$20,$53,$54,$4f,$50,$20,$4d,$4f
        .byte $54,$49,$4f,$4e,$0d,$0a,$09,$4c,$44

    L_f6e1:
        eor $2309,y

        .byte $3c,$54,$45,$4b,$4e,$41,$4d,$0d,$0a,$09,$4a,$53,$52,$09,$43,$48
        .byte $52,$4f

    L_f6f6:
        eor $54,x
        and $0931

        .byte $2f,$20,$44,$49,$53,$50,$4c,$41,$59,$20,$4f,$55,$54,$0d,$0a,$09
        .byte $09,$09,$2f,$20,$4d,$52,$2e,$48,$4f,$54,$20,$44,$4f,$47

    L_f719:
        bit $524d
        rol $4950

        .byte $43,$4b,$4c,$45,$2c,$4d,$52,$2e,$45,$47,$47,$0d,$0a,$09,$4c,$44
        .byte $58,$09,$23,$30,$46,$46,$0d,$0a,$09,$4a,$53,$52,$09,$57,$41,$49
        .byte $54,$45,$2d,$31,$09,$20,$20,$20,$20,$20,$20,$0d,$0a,$09,$4c,$44
        .byte $41,$09,$23,$30,$30,$0d,$0a,$09,$53,$54,$41,$09,$46,$4c,$47,$46
        .byte $4c,$47,$09,$20,$20,$20,$2f,$20,$4e,$41,$4d,$45,$20,$44,$49,$53
        .byte $50,$2e,$20,$45,$4e,$44,$0d,$0a,$09,$4a,$4d,$50,$09,$41,$54,$32
        .byte $30,$30,$30,$0d,$0a,$0d,$0a,$54,$45,$4b,$4e,$41,$4d,$09,$45,$51
        .byte $55

    L_f790:
        ora #$2e
        ora $090a

        .byte $44,$46,$41,$09,$31,$31,$38,$36,$09,$09,$2f,$20,$4d,$52,$2e,$48
        .byte $4f,$54,$44,$4f,$47,$0d,$0a,$09,$44,$46,$43,$09,$33,$42,$2c,$34
        .byte $30,$2c,$36,$30,$2c,$33,$36,$2c,$33,$44,$2c,$34,$32,$2c,$30,$30
        .byte $2c,$33,$32,$0d,$0a,$09,$44,$46,$43,$09,$33,$44,$2c,$33,$35,$2c
        .byte $36,$31,$2c,$36,$32,$2c,$30,$46,$45,$0d,$0a,$09,$44,$46,$41,$09
        .byte $31,$35,$38,$36,$0d,$0a,$09,$44,$46,$43,$09,$30,$30,$2c,$30,$30
        .byte $2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c
        .byte $30,$30,$0d,$0a,$09,$44,$46,$43,$09,$30,$30,$2c,$30,$30,$2c,$30
        .byte $30,$2c,$30,$30,$2c,$30,$46,$45,$0d,$0a

    L_f81f:
        ora $090a

        .byte $44,$46,$41

    L_f825:
        ora #$31
        bmi L_f86c
        eor $09
        ora #$2f
        jsr $524d

        .byte $2e,$50,$49,$43,$4b,$4c,$45,$0d

    L_f838:
        .byte $0a,$09,$44,$46,$43,$09,$33,$42
        .byte $2c,$34,$30

    L_f843:
        bit $3036
        bit $4533
        bit $3733
        bit $3133
        bit $3933
        bit $4133
        ora $090a

        .byte $44,$46,$43,$09,$33,$33,$2c,$36,$31,$2c,$36,$32,$2c,$30,$46,$45
        .byte $0d,$0a,$09,$44

    L_f86c:
        lsr $41
        ora #$31

        .byte $34,$43,$45,$0d,$0a,$09,$44,$46,$43,$09,$30,$30,$2c,$30,$30,$2c
        .byte $30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30
        .byte $30,$0d,$0a,$09,$44,$46,$43,$09,$30,$30,$2c,$30,$30,$2c,$30,$30
        .byte $2c,$30,$46,$45,$0d,$0a,$0d,$0a,$09,$44,$46,$41,$09,$31,$31,$35
        .byte $36,$09,$09,$2f,$20,$4d,$52,$2e,$45,$47,$47,$0d,$0a,$09,$44,$46
        .byte $43,$09,$33,$42,$2c,$34,$30

    L_f8c7:
        bit $3036
        bit $3333
    L_f8cd:
        bit $3533
        bit $3533
        bit $3136
        bit $3236
        bit $4630
        eor $0d
        asl 
        ora #$44
        lsr $41
        ora #$31
        and $35,x
        rol $0d,x
        asl 
        ora #$44
        lsr $43
        ora #$30

        .byte $30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30,$2c,$30,$30
        .byte $2c,$30,$30,$2c,$30,$30,$2c,$30,$46,$46,$0d,$0a,$0d,$0a,$2f,$0d
        .byte $0a,$2f,$2a
        .fill $2e, $2d
        .byte $2a,$0d,$0a,$2f,$2a,$09,$50,$45,$50,$50,$45,$52,$20,$26,$20,$54
        .byte $45,$4b,$49,$20,$4c,$41,$4b,$4b,$41,$20,$41,$54,$52,$41,$43,$54
        .byte $49,$4f,$4e,$09,$09,$2a,$0d,$0a,$2f,$2a
        .fill $2e, $2d
        .byte $2a,$0d,$0a,$2f,$0d,$0a,$09,$53,$54,$41,$09,$44,$55,$4d,$59,$50
        .byte $09,$2f,$20,$44,$55,$4d,$4d,$59,$20,$57,$52,$49,$54,$45,$0d,$0a
        .byte $09,$4e,$4f,$50,$09,$09,$2f,$20,$44,$55,$4d,$4d,$59,$20,$4e,$4f
        .byte $50,$0d,$0a,$41,$54,$52,$43,$54,$33,$09,$45,$51,$55,$09,$2e,$0d
        .byte $0a,$09,$4a,$53,$52,$09,$47,$41,$4d,$49,$4e,$4c,$2d,$31,$0d,$0a
        .byte $09,$4a,$53,$52,$09,$52,$4e,$44,$49,$4e,$4c,$2d,$31,$0d,$0a,$2f
        .byte $0d,$0a,$09,$4c,$44,$59,$09,$23,$30,$31,$0d,$0a,$09,$53,$54,$59
        .byte $09,$4c,$49,$56,$45,$2b,$30,$0d,$0a,$09,$53,$54,$59,$09,$4c,$49
        .byte $56,$45,$2b,$31,$0d

    L_fa1e:
        asl 
        ora #$49
        lsr $0d59
        asl 
        ora #$53

        .byte $54,$59,$09,$4c,$49,$56,$45,$2b,$32,$0d,$0a,$09,$53,$54,$59,$09
        .byte $4c,$49,$56,$45,$2b,$33,$0d,$0a,$09,$49,$4e,$59,$0d,$0a,$09,$53
        .byte $54,$59,$09,$4c,$49,$56,$45,$2b,$34,$0d,$0a,$09,$53,$54,$59,$09
        .byte $4c,$49,$56,$45,$2b,$35,$0d,$0a,$2f,$0d,$0a,$09,$4c,$44,$41,$09
        .byte $23,$31,$44,$0d,$0a,$09,$53,$54,$41,$09,$30,$31,$38,$30,$33,$0d
        .byte $0a,$09,$53,$54,$41,$09,$30,$31,$38,$30,$37,$0d,$0a,$09,$53,$54
        .byte $41,$09,$30,$31,$38,$30,$42,$0d,$0a,$09,$53,$54,$41,$09,$30,$31
        .byte $38,$30,$46,$0d,$0a,$09,$53,$54,$41,$09,$30,$31,$38

    L_faa4:
        and ($33),y
        ora $090a

        .byte $53,$54,$41,$09,$30,$31,$38

    L_fab0:
        and ($37),y
        ora $090a

        .byte $53,$54,$41,$09

    L_fab9:
        .byte $30,$31
        .byte $38

    L_fabc:
        and ($46),y
        ora $2f0a
        ora $090a
        jmp $4144

        .byte $09,$23,$34,$30,$0d,$0a,$09,$53,$54

    L_fad0:
        eor ($09,x)

        .byte $44,$49,$52,$45,$43,$54,$2b

    L_fad9:
        bmi L_fae8
        asl 
        ora #$53

        .byte $54,$41,$09,$44,$49,$52,$45,$43,$54,$2b

    L_fae8:
        and ($0d),y
        asl 
        ora #$53

        .byte $54,$41,$09,$44,$49,$52,$45,$43,$54,$2b,$32,$0d,$0a,$09,$53,$54
        .byte $41,$09,$44,$49,$52,$45,$43,$54,$2b,$33,$0d,$0a,$09,$53,$54,$41
        .byte $09,$44,$49,$52,$45,$43,$54,$2b,$34,$0d,$0a,$09,$53,$54,$41,$09
        .byte $44,$49,$52,$45,$43,$54,$2b,$35,$0d,$0a,$2f,$0d,$0a,$09,$4c,$44
        .byte $41,$09,$23,$38,$39,$0d,$0a,$09,$53,$54,$41,$09,$30,$31,$38,$30
        .byte $32,$0d,$0a,$09,$4c,$44,$41,$09,$23,$35,$39,$0d,$0a,$09,$53,$54
        .byte $41,$09,$30,$31,$38,$30,$36,$0d,$0a,$09,$4c,$44,$41,$09,$23,$36
        .byte $30,$0d,$0a,$09,$53,$54,$41,$09,$30,$31,$38,$30,$41,$0d,$0a,$09
        .byte $4c,$44,$41

    L_fb70:
        .byte $09,$23,$39,$30,$0d,$0a,$09,$53,$54
        .byte $41,$09,$30,$31,$38,$30,$45,$0d,$0a,$09,$4c,$44,$41,$09,$23,$39
        .byte $37,$0d,$0a,$09,$53,$54,$41,$09,$30,$31,$38,$31,$32,$0d,$0a,$09
        .byte $4c,$44,$41,$09,$23,$33,$30,$0d,$0a,$09,$53,$54,$41,$09,$30,$31
        .byte $38,$31,$36,$0d,$0a,$09,$4c,$44,$41,$09,$23,$31,$38,$0d,$0a,$09
        .byte $53,$54,$41,$09,$30,$31,$38,$31,$45,$0d,$0a,$2f

    L_fbc5:
        ora #$0d
        asl 
        ora #$4c

        .byte $44,$41,$09,$23,$30,$31,$0d,$0a,$09,$53,$54,$41,$09,$54,$49,$4d

    L_fbda:
        eor $52
        and ($0d),y
        asl 
        ora #$53

        .byte $54,$41,$09,$54,$49,$4d,$45,$52,$32,$0d,$0a,$2f,$0d,$0a,$09

    L_fbf0:
        lsr 

        .byte $53,$52,$09,$54,$45,$4b,$4d,$4f,$56,$2d,$31,$09,$2f,$20,$54,$45
        .byte $4b,$49,$20,$44,$49,$53,$50,$4c,$41,$59,$0d,$0a,$2f,$0d,$0a,$09
        .byte $53,$54,$41,$09,$44,$55,$4d,$59,$50,$09,$2f,$20,$44,$55,$4d,$4d
        .byte $59,$20,$57,$52,$49,$54,$45,$0d,$0a,$09,$4e,$4f,$50,$09,$09,$2f
        .byte $20,$44,$55,$4d,$4d,$59,$20,$4e,$4f,$50,$0d,$0a,$41,$54,$33,$30
        .byte $33,$30,$09,$45,$51,$55,$09,$2e,$0d,$0a,$09,$4c,$44,$58,$09,$23
        .byte $30,$31,$0d,$0a,$09,$4a,$53,$52,$09,$57,$41,$49,$54,$45,$2d,$31
        .byte $0d,$0a,$09,$49,$4e,$43,$09,$54,$49,$4d,$45,$52,$31,$0d,$0a,$09
        .byte $42,$4e,$45,$09

    L_fc75:
        rol $352b
        ora $090a
        eor #$4e

        .byte $43,$09,$54,$49,$4d,$45,$52,$32,$0d,$0a,$09,$4e,$4f,$50,$0d,$0a
        .byte $2f,$0d,$0a,$09,$4c,$44,$58,$09,$23,$30,$37,$0d,$0a,$09,$4a,$53
        .byte $52,$09,$4c,$49,$4d,$49,$54,$2d,$31,$0d,$0a,$09,$42,$45,$51,$09
        .byte $41,$54,$33,$30,$34,$30,$0d,$0a,$09,$4c,$44,$41,$09,$54,$49,$4d
        .byte $45,$52,$32,$0d,$0a,$09,$43,$4d,$50,$09,$23,$30,$34,$0d,$0a,$09
        .byte $42,$43,$43,$09,$41,$54,$33,$30,$36,$30,$0d,$0a,$09,$0d,$0a,$09
        .byte $4c,$44,$58,$09,$23,$3e,$50,$45

    L_fce5:
        bvc L_fd34

        .byte $53,$47,$0d,$0a,$09,$4c,$44,$59,$09,$23,$3c,$50,$45,$50,$4d,$53
        .byte $47,$0d,$0a,$09,$4a

    L_fcfc:
        .byte $53,$52

    L_fcfe:
        ora #$43
        pha 

        .byte $52,$4f,$55,$54,$2d,$31,$20,$20,$20,$2f,$20,$50,$45,$50,$50,$45
        .byte $52,$20,$53,$45,$54,$53,$55,$4d,$45,$49,$20,$44,$49,$53,$50,$4c
        .byte $41,$59,$0d,$0a,$09,$4c,$44,$58,$09,$23,$30,$46,$46,$0d,$0a,$09
        .byte $4a,$53,$52

    L_fd34:
        ora #$57
        eor ($49,x)

        .byte $54

    L_fd39:
        eor $2d
        and ($0d),y
        asl 
        ora #$4c

        .byte $44,$58,$09,$23,$30,$34,$30,$0d,$0a,$09,$4a,$53,$52,$09,$57,$41
        .byte $49,$54,$45,$2d,$31,$0d,$0a,$09,$52,$54,$53,$0d,$0a,$0d,$0a,$09
        .byte $53,$54,$41,$09,$44,$55,$4d,$59,$50,$09,$2f,$20,$44,$55,$4d,$4d
        .byte $59,$20,$57,$52,$49,$54,$45,$0d,$0a,$09,$4e,$4f,$50,$09,$09,$2f
        .byte $20,$44,$55,$4d,$4d,$59,$20,$4e,$4f,$50,$0d,$0a,$41,$54,$33,$30
        .byte $34,$30,$09,$4c,$44,$41

    L_fd96:
        .byte $09,$4c,$49,$56,$45,$2b,$36,$0d,$0a,$09,$42,$50,$4c
        .byte $09,$41,$54,$33,$30,$36,$30,$0d,$0a,$20,$20,$20,$20,$20,$20,$09
        .byte $4c,$44,$58,$09,$23

    L_fdb8:
        bmi L_fdf1
        ora $090a
        lsr 

        .byte $53,$52,$09,$53,$50,$52,$4d,$4f,$56,$2d,$31,$0d,$0a,$2f,$0d,$0a
        .byte $09,$4c,$44,$41,$09,$30,$31,$38,$31,$45,$0d,$0a,$09,$43,$4d,$50
        .byte $09,$23,$32,$32,$0d,$0a,$09,$42,$45,$51,$09,$41,$54,$33,$30,$35
        .byte $30,$09,$2f

    L_fdf1:
        jsr $4550

        .byte $50,$50,$45,$52,$20,$4f,$4e,$0d,$0a,$09,$43,$4d,$50,$09,$23,$34
        .byte $41,$0d,$0a,$09,$42,$45,$51,$09,$41,$54,$33,$30,$35,$30,$0d,$0a
        .byte $09,$43

    L_fe16:
        eor $0950

        .byte $23,$38,$32,$0d,$0a,$09

    L_fe1f:
        .byte $42

    L_fe20:
        lsr $0945
    L_fe23:
        eor ($54,x)

        .byte $33,$30,$36,$30,$0d,$0a,$09,$53,$54,$41,$09,$44,$55,$4d,$59,$50
        .byte $09,$2f

    L_fe37:
        jsr $5544
        eor $594d
        jsr $5257

        .byte $49,$54,$45,$0d,$0a,$09,$4e,$4f,$50,$09,$09,$2f,$20,$44,$55,$4d
        .byte $4d,$59,$20,$4e,$4f,$50,$0d,$0a,$41,$54,$33,$30,$35,$30,$09,$4a
        .byte $53,$52,$09,$43,$4f,$4b,$50,$50,$53,$2d,$31,$09,$2f,$20,$50,$45
        .byte $50,$50,$45,$52,$20,$53,$45,$54,$0d,$0a,$09,$49,$4e,$43,$09,$30
        .byte $31,$38,$31,$45,$0d,$0a,$09,$49,$4e,$43,$09,$30,$31,$38,$31,$45
        .byte $0d,$0a,$09,$53,$54,$41,$09,$44,$55,$4d,$59,$50,$09,$2f,$20,$44
        .byte $55,$4d,$4d,$59,$20,$57,$52,$49,$54,$45,$0d,$0a,$09,$4e,$4f,$50
        .byte $09,$09,$2f,$20,$44,$55,$4d,$4d,$59,$20,$4e,$4f,$50,$0d,$0a,$41
        .byte $54,$33

    L_fec2:
        bmi L_fefa
        bmi L_fecb + $4
        lsr 

        .byte $53,$52,$09,$43

    L_fecb:
        .byte $4f,$4b,$50,$45,$50,$2d
        .byte $31,$0d,$0a,$09,$4a,$53,$52,$09,$4b,$41,$54,$41,$4d,$4b,$2d,$31
        .byte $0d,$0a,$09,$4a,$53,$52,$09,$50,$50,$54,$4b,$50,$54,$2d,$31,$0d
        .byte $0a,$09,$4a,$53,$52,$09,$4c,$41,$4b

    L_fefa:
        eor $564f
        and $0d31
        asl 
        ora #$4a
        eor $0950
        eor ($54,x)

        .byte $33,$30,$33,$30,$0d,$0a,$0d,$0a,$2f

    L_ff11:
        .byte $50,$45,$50,$50
        .byte $45,$52,$20,$4d,$45,$53,$53

    L_ff1c:
        eor ($47,x)
        eor $20

        .byte $54,$41,$42

    L_ff23:
        jmp $0d45

    L_ff26:
         .byte $0a,$2f
        .byte $09,$4d,$45,$53,$53,$41,$47,$45,$20,$20,$3a,$20,$20,$44,$4f,$4e
        .byte $27,$54,$20,$57,$41,$53,$54

    L_ff3f:
        eor $20

        .byte $50,$45,$50,$50,$45,$52,$53,$0d,$0a,$09,$09,$2f,$20,$20,$20,$59
        .byte $4f,$55,$20,$53,$54,$41,$52,$54,$20,$57,$49,$54,$48,$20,$4f,$4e
        .byte $4c,$59,$20,$46,$49,$56,$45,$0d,$0a,$09,$09,$2f,$20,$20,$20,$45
        .byte $41,$52,$4e,$20,$45,$58,$54,$52,$41,$20,$50,$45,$50,$50,$45,$52
        .byte $53,$20,$26,$20,$42,$4f,$4e,$55,$53,$45,$53,$0d,$0a,$09,$09,$2f
        .byte $20,$20,$20,$43

    L_ff95:
        jmp $4941



        .byte $4d,$20,$43,$4f,$4e,$45,$53,$2c,$43,$4f,$46,$46,$45,$45,$53,$20
        .byte $26,$20,$46,$52,$49,$45,$53,$0d,$0a,$0d,$0a,$50,$45,$50,$4d,$53
        .byte $47,$09,$45,$51,$55,$09,$2e,$09,$2f,$20,$44,$4f,$4e,$27,$54,$2e
        .byte $2e,$2e,$2e,$2e,$0d,$0a,$09,$44,$46,$41,$09,$30,$31,$30,$43,$37
        .byte $0d,$0a,$09,$44,$46,$43,$09,$33,$32,$2c,$33,$44,$2c,$33,$43,$2c
        .byte $36,$34,$2c,$34,$32,$2c,$30,$30,$2c,$34,$35,$2c,$32,$46,$0d,$0a
        .byte $09,$44,$00,$c0,$03,$c0,$00,$C0
