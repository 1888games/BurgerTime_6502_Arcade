0000: C3 E2 00    jp   $00E2
0003: 00          nop
0004: 00          nop
0005: 00          nop
0006: 00          nop
0007: 00          nop
0008: 00          nop
0009: 00          nop
000A: 00          nop
000B: 00          nop
000C: 00          nop
000D: 00          nop
000E: 00          nop
000F: 00          nop
0010: 00          nop
0011: 00          nop
0012: 00          nop
0013: 00          nop
0014: 00          nop
0015: 00          nop
0016: 00          nop
0017: 00          nop
0018: 00          nop
0019: 00          nop
001A: 00          nop
001B: 00          nop
001C: 00          nop
001D: 00          nop
001E: 00          nop
001F: 00          nop
0020: 00          nop
0021: 00          nop
0022: 00          nop
0023: 00          nop
0024: 00          nop
0025: 00          nop
0026: 00          nop
0027: 00          nop
0028: 00          nop
0029: 00          nop
002A: 00          nop
002B: 00          nop
002C: 00          nop
002D: 00          nop
002E: 00          nop
002F: 00          nop
0030: 00          nop
0031: 00          nop
0032: 00          nop
0033: 00          nop
0034: 00          nop
0035: 00          nop
0036: 00          nop
0037: 00          nop
0038: F3          di
0039: F5          push af
003A: DD E5       push ix
003C: E5          push hl
003D: D5          push de
003E: C5          push bc
003F: AF          xor  a
0040: 32 00 50    ld   ($5000),a
0043: 32 C0 50    ld   ($50C0),a
0046: 3A 3A 4C    ld   a,($4C3A)
0049: 3C          inc  a
004A: 32 3A 4C    ld   ($4C3A),a
004D: 2A 3B 4C    ld   hl,($4C3B)
0050: 2D          dec  l
0051: F2 57 00    jp   p,$0057
0054: 2E 3B       ld   l,$3B
0056: 24          inc  h
0057: 22 3B 4C    ld   ($4C3B),hl
005A: 3A 3A 4C    ld   a,($4C3A)
005D: E6 01       and  $01
005F: C2 6E 00    jp   nz,$006E
0062: 3A 36 4C    ld   a,($4C36)
0065: FE 00       cp   $00
0067: CA 6E 00    jp   z,$006E
006A: 3D          dec  a
006B: 32 36 4C    ld   ($4C36),a
006E: 3A 3A 4C    ld   a,($4C3A)
0071: E6 01       and  $01
0073: C2 82 00    jp   nz,$0082
0076: 3A 37 4C    ld   a,($4C37)
0079: FE 10       cp   $10
007B: CA 82 00    jp   z,$0082
007E: 3C          inc  a
007F: 32 37 4C    ld   ($4C37),a
0082: 3E 01       ld   a,$01
0084: 32 38 4C    ld   ($4C38),a
0087: 3E 01       ld   a,$01
0089: 32 01 50    ld   ($5001),a
008C: 3A 36 4C    ld   a,($4C36)
008F: 32 55 50    ld   ($5055),a
0092: 3E 03       ld   a,$03
0094: 32 45 50    ld   ($5045),a
0097: 3A 36 4C    ld   a,($4C36)
009A: 32 52 50    ld   ($5052),a
009D: 3A 37 4C    ld   a,($4C37)
00A0: 0F          rrca
00A1: 0F          rrca
00A2: 32 5A 50    ld   ($505A),a
00A5: 3E 06       ld   a,$06
00A7: 32 4A 50    ld   ($504A),a
00AA: 3A 37 4C    ld   a,($4C37)
00AD: 32 57 50    ld   ($5057),a
00B0: 3A 9D 4C    ld   a,($4C9D)
00B3: C6 01       add  a,$01
00B5: 32 5F 50    ld   ($505F),a
00B8: 3E 01       ld   a,$01
00BA: 32 4F 50    ld   ($504F),a
00BD: 3A 9E 4C    ld   a,($4C9E)
00C0: C6 01       add  a,$01
00C2: 32 5B 50    ld   ($505B),a
00C5: CD AD 01    call $01AD
00C8: CD 3C 01    call $013C
00CB: AF          xor  a
00CC: 32 C0 50    ld   ($50C0),a
00CF: 3C          inc  a
00D0: 32 00 50    ld   ($5000),a
00D3: C1          pop  bc
00D4: D1          pop  de
00D5: E1          pop  hl
00D6: DD E1       pop  ix
00D8: F1          pop  af
00D9: FB          ei
00DA: ED 4D       reti
00DC: 3E 39       ld   a,$39
00DE: 32 3B 4C    ld   ($4C3B),a
00E1: C9          ret
00E2: F3          di
00E3: 31 F0 4F    ld   sp,$4FF0
00E6: ED 56       im   1
00E8: 3E FF       ld   a,$FF
00EA: D3 00       out  ($00),a
00EC: AF          xor  a
00ED: 32 C0 50    ld   ($50C0),a
00F0: 21 00 4C    ld   hl,$4C00
00F3: 11 01 4C    ld   de,$4C01
00F6: 01 EF 03    ld   bc,$03EF
00F9: 77          ld   (hl),a
00FA: ED B0       ldir
00FC: CD E5 05    call $05E5
00FF: 3E 01       ld   a,$01
0101: CD F4 05    call $05F4
0104: AF          xor  a
0105: 21 F2 4F    ld   hl,$4FF2
0108: 06 10       ld   b,$10
010A: 77          ld   (hl),a
010B: 23          inc  hl
010C: 10 FC       djnz $010A
010E: 21 00 50    ld   hl,$5000
0111: 06 08       ld   b,$08
0113: 77          ld   (hl),a
0114: 23          inc  hl
0115: 10 FC       djnz $0113
0117: 21 00 50    ld   hl,$5000
011A: 22 8B 4C    ld   ($4C8B),hl
011D: 3E 00       ld   a,$00
011F: 32 8E 4C    ld   ($4C8E),a
0122: 32 8D 4C    ld   ($4C8D),a
0125: 3E 10       ld   a,$10
0127: 32 37 4C    ld   ($4C37),a
012A: 3E 00       ld   a,$00
012C: 32 8E 4C    ld   ($4C8E),a
012F: AF          xor  a
0130: 32 C0 50    ld   ($50C0),a
0133: 3E 01       ld   a,$01
0135: 32 00 50    ld   ($5000),a
0138: FB          ei
0139: C3 27 02    jp   $0227
013C: 3A 41 4C    ld   a,($4C41)
013F: 87          add  a,a
0140: 87          add  a,a
0141: 87          add  a,a
0142: 87          add  a,a
0143: E6 F0       and  $F0
0145: 47          ld   b,a
0146: 3A 00 50    ld   a,($5000)
0149: E6 0F       and  $0F
014B: B0          or   b
014C: 32 41 4C    ld   ($4C41),a
014F: 3A 42 4C    ld   a,($4C42)
0152: 87          add  a,a
0153: 87          add  a,a
0154: E6 C0       and  $C0
0156: 47          ld   b,a
0157: 3A 40 50    ld   a,($5040)
015A: 1F          rra
015B: E6 30       and  $30
015D: B0          or   b
015E: 32 42 4C    ld   ($4C42),a
0161: C9          ret
0162: 3A 42 4C    ld   a,($4C42)
0165: E6 A0       and  $A0
0167: FE 80       cp   $80
0169: C0          ret  nz
016A: 3A 43 4C    ld   a,($4C43)
016D: 2F          cpl
016E: 32 43 4C    ld   ($4C43),a
0171: 32 03 50    ld   ($5003),a
0174: 11 11 0D    ld   de,$0D11
0177: 0E 03       ld   c,$03
0179: DD 21 44 4C ld   ix,$4C44
017D: 06 06       ld   b,$06
017F: 79          ld   a,c
0180: DD AE 00    xor  (ix+$00)
0183: DD 77 00    ld   (ix+$00),a
0186: DD 7E 0C    ld   a,(ix+$0c)
0189: 92          sub  d
018A: 2F          cpl
018B: DD 77 0C    ld   (ix+$0c),a
018E: DD 7E 0D    ld   a,(ix+$0d)
0191: 93          sub  e
0192: 2F          cpl
0193: DD 77 0D    ld   (ix+$0d),a
0196: DD 7E 18    ld   a,(ix+$18)
0199: ED 44       neg
019B: DD 77 18    ld   (ix+$18),a
019E: DD 7E 19    ld   a,(ix+$19)
01A1: ED 44       neg
01A3: DD 77 19    ld   (ix+$19),a
01A6: DD 23       inc  ix
01A8: DD 23       inc  ix
01AA: 10 D3       djnz $017F
01AC: C9          ret
01AD: 21 44 4C    ld   hl,$4C44
01B0: 11 F2 4F    ld   de,$4FF2
01B3: 01 0C 00    ld   bc,$000C
01B6: ED B0       ldir
01B8: 11 62 50    ld   de,$5062
01BB: 01 0C 00    ld   bc,$000C
01BE: ED B0       ldir
01C0: C9          ret
01C1: AF          xor  a
01C2: DD 77 01    ld   (ix+$01),a
01C5: C9          ret
01C6: DD 21 44 4C ld   ix,$4C44
01CA: CD C1 01    call $01C1
01CD: DD 21 46 4C ld   ix,$4C46
01D1: CD C1 01    call $01C1
01D4: DD 21 48 4C ld   ix,$4C48
01D8: CD C1 01    call $01C1
01DB: DD 21 4A 4C ld   ix,$4C4A
01DF: CD C1 01    call $01C1
01E2: DD 21 4C 4C ld   ix,$4C4C
01E6: CD C1 01    call $01C1
01E9: DD 21 4E 4C ld   ix,$4C4E
01ED: CD C1 01    call $01C1
01F0: C9          ret
01F1: DD 7E 01    ld   a,(ix+$01)
01F4: A7          and  a
01F5: C9          ret
01F6: DD 7E 01    ld   a,(ix+$01)
01F9: 2F          cpl
01FA: A7          and  a
01FB: C9          ret
01FC: DD 77 01    ld   (ix+$01),a
01FF: C9          ret
0200: 11 44 4C    ld   de,$4C44
0203: 01 18 00    ld   bc,$0018
0206: ED B0       ldir
0208: C9          ret
0209: 11 44 4C    ld   de,$4C44
020C: 01 04 00    ld   bc,$0004
020F: ED B0       ldir
0211: C9          ret
0212: 11 5E 4C    ld   de,$4C5E
0215: 21 52 4C    ld   hl,$4C52
0218: 06 05       ld   b,$05
021A: 1A          ld   a,(de)
021B: 86          add  a,(hl)
021C: 77          ld   (hl),a
021D: 13          inc  de
021E: 23          inc  hl
021F: 1A          ld   a,(de)
0220: 86          add  a,(hl)
0221: 77          ld   (hl),a
0222: 13          inc  de
0223: 23          inc  hl
0224: 10 F4       djnz $021A
0226: C9          ret
0227: 3E 01       ld   a,$01
0229: 32 8A 4C    ld   ($4C8A),a
022C: CD E5 05    call $05E5
022F: CD C6 01    call $01C6
0232: 11 C2 11    ld   de,$11C2
0235: 21 A2 42    ld   hl,$42A2
0238: 0E 09       ld   c,$09
023A: CD 97 05    call $0597
023D: 11 CF 11    ld   de,$11CF
0240: 21 45 43    ld   hl,$4345
0243: 0E 03       ld   c,$03
0245: CD 97 05    call $0597
0248: 11 E7 11    ld   de,$11E7
024B: 21 A6 42    ld   hl,$42A6
024E: 0E 03       ld   c,$03
0250: CD 97 05    call $0597
0253: 11 F5 11    ld   de,$11F5
0256: 21 28 43    ld   hl,$4328
0259: 0E 01       ld   c,$01
025B: CD 97 05    call $0597
025E: 11 0A 12    ld   de,$120A
0261: 21 E9 42    ld   hl,$42E9
0264: CD 97 05    call $0597
0267: 11 1B 12    ld   de,$121B
026A: 21 0A 43    ld   hl,$430A
026D: CD 97 05    call $0597
0270: 11 2F 12    ld   de,$122F
0273: 21 4E 43    ld   hl,$434E
0276: 0E 07       ld   c,$07
0278: CD 97 05    call $0597
027B: 11 47 12    ld   de,$1247
027E: 21 8F 43    ld   hl,$438F
0281: CD 97 05    call $0597
0284: 11 62 12    ld   de,$1262
0287: 21 70 43    ld   hl,$4370
028A: CD 97 05    call $0597
028D: 11 7C 12    ld   de,$127C
0290: 21 D1 42    ld   hl,$42D1
0293: CD 97 05    call $0597
0296: 0E 05       ld   c,$05
0298: 11 8C 12    ld   de,$128C
029B: 21 74 43    ld   hl,$4374
029E: CD 97 05    call $0597
02A1: 11 A6 12    ld   de,$12A6
02A4: 21 75 43    ld   hl,$4375
02A7: CD 97 05    call $0597
02AA: 11 C0 12    ld   de,$12C0
02AD: 21 36 43    ld   hl,$4336
02B0: CD 97 05    call $0597
02B3: 21 CC 13    ld   hl,$13CC
02B6: 22 87 4C    ld   ($4C87),hl
02B9: 21 1D 40    ld   hl,$401D
02BC: CB D4       set  2,h
02BE: 3E 09       ld   a,$09
02C0: 06 1C       ld   b,$1C
02C2: CD E0 05    call $05E0
02C5: 11 51 13    ld   de,$1351
02C8: 21 FD 43    ld   hl,$43FD
02CB: CD D3 05    call $05D3
02CE: 11 51 13    ld   de,$1351
02D1: 21 DD 43    ld   hl,$43DD
02D4: CD D3 05    call $05D3
02D7: C3 82 0F    jp   $0F82
02DA: 3A 42 4C    ld   a,($4C42)
02DD: E6 50       and  $50
02DF: FE 40       cp   $40
02E1: CA EA 02    jp   z,$02EA
02E4: CD FC 04    call $04FC
02E7: C3 82 0F    jp   $0F82
02EA: 3E 00       ld   a,$00
02EC: 32 94 4C    ld   ($4C94),a
02EF: 3E 03       ld   a,$03
02F1: 32 96 4C    ld   ($4C96),a
02F4: 3E FF       ld   a,$FF
02F6: 32 98 4C    ld   ($4C98),a
02F9: 21 00 00    ld   hl,$0000
02FC: 22 8F 4C    ld   ($4C8F),hl
02FF: 22 91 4C    ld   ($4C91),hl
0302: 21 AA 11    ld   hl,$11AA
0305: CD 00 02    call $0200
0308: DD 21 44 4C ld   ix,$4C44
030C: DD 7E 0C    ld   a,(ix+$0c)
030F: 32 A8 4C    ld   ($4CA8),a
0312: DD 7E 0D    ld   a,(ix+$0d)
0315: 32 A9 4C    ld   ($4CA9),a
0318: 3E 40       ld   a,$40
031A: 32 1D 4C    ld   ($4C1D),a
031D: 3E 60       ld   a,$60
031F: 32 25 4C    ld   ($4C25),a
0322: 3E 50       ld   a,$50
0324: 32 2D 4C    ld   ($4C2D),a
0327: 3E 78       ld   a,$78
0329: 32 35 4C    ld   ($4C35),a
032C: 3E 06       ld   a,$06
032E: 32 95 4C    ld   ($4C95),a
0331: C3 3C 03    jp   $033C
0334: 06 64       ld   b,$64
0336: 32 C0 50    ld   ($50C0),a
0339: 76          halt
033A: 10 FA       djnz $0336
033C: 21 AA 11    ld   hl,$11AA
033F: CD 00 02    call $0200
0342: 3E 00       ld   a,$00
0344: 32 14 4C    ld   ($4C14),a
0347: 32 94 4C    ld   ($4C94),a
034A: 3E 18       ld   a,$18
034C: CD 08 06    call $0608
034F: CD E5 05    call $05E5
0352: DD 21 44 4C ld   ix,$4C44
0356: 3A A8 4C    ld   a,($4CA8)
0359: DD 77 0C    ld   (ix+$0c),a
035C: 3A A9 4C    ld   a,($4CA9)
035F: DD 77 0D    ld   (ix+$0d),a
0362: CD 14 07    call $0714
0365: 3E 00       ld   a,$00
0367: 21 00 4C    ld   hl,$4C00
036A: 11 01 4C    ld   de,$4C01
036D: 01 14 00    ld   bc,$0014
0370: 77          ld   (hl),a
0371: ED B0       ldir
0373: 3A 98 4C    ld   a,($4C98)
0376: 3C          inc  a
0377: 32 98 4C    ld   ($4C98),a
037A: E6 03       and  $03
037C: CD 9E 0B    call $0B9E
037F: 11 51 13    ld   de,$1351
0382: 21 FD 43    ld   hl,$43FD
0385: CD D3 05    call $05D3
0388: 11 51 13    ld   de,$1351
038B: 21 1D 40    ld   hl,$401D
038E: CD D3 05    call $05D3
0391: 11 F5 12    ld   de,$12F5
0394: 21 DD 43    ld   hl,$43DD
0397: 0E 09       ld   c,$09
0399: CD C0 05    call $05C0
039C: 11 51 13    ld   de,$1351
039F: 21 FD 43    ld   hl,$43FD
03A2: 0E 03       ld   c,$03
03A4: CD C0 05    call $05C0
03A7: 11 12 13    ld   de,$1312
03AA: 21 1D 40    ld   hl,$401D
03AD: 0E 03       ld   c,$03
03AF: CD C0 05    call $05C0
03B2: 11 51 13    ld   de,$1351
03B5: 21 3D 40    ld   hl,$403D
03B8: 0E 09       ld   c,$09
03BA: CD C0 05    call $05C0
03BD: 3A 95 4C    ld   a,($4C95)
03C0: 32 80 4C    ld   ($4C80),a
03C3: 3E 90       ld   a,$90
03C5: 32 93 4C    ld   ($4C93),a
03C8: CD DC 00    call $00DC
03CB: CD F0 0C    call $0CF0
03CE: CD F0 0C    call $0CF0
03D1: CD F0 0C    call $0CF0
03D4: CD 6A 0C    call $0C6A
03D7: CD 6A 0C    call $0C6A
03DA: CD 6A 0C    call $0C6A
03DD: 3E 96       ld   a,$96
03DF: 32 B2 4C    ld   ($4CB2),a
03E2: 32 B1 4C    ld   ($4CB1),a
03E5: 3A 3A 4C    ld   a,($4C3A)
03E8: 32 99 4C    ld   ($4C99),a
03EB: ED 44       neg
03ED: 32 9A 4C    ld   ($4C9A),a
03F0: 3E 02       ld   a,$02
03F2: 32 8A 4C    ld   ($4C8A),a
03F5: C3 82 0F    jp   $0F82
03F8: CD 15 04    call $0415
03FB: CD DC 07    call $07DC
03FE: 3A 94 4C    ld   a,($4C94)
0401: FE 01       cp   $01
0403: CA DE 0E    jp   z,$0EDE
0406: CD CB 04    call $04CB
0409: CD 9D 04    call $049D
040C: CD D9 0C    call $0CD9
040F: CD 6C 0D    call $0D6C
0412: C3 82 0F    jp   $0F82
0415: 3A 42 4C    ld   a,($4C42)
0418: E6 A0       and  $A0
041A: FE 80       cp   $80
041C: CA 27 02    jp   z,$0227
041F: 3A 3B 4C    ld   a,($4C3B)
0422: A7          and  a
0423: C0          ret  nz
0424: 3A 93 4C    ld   a,($4C93)
0427: 3D          dec  a
0428: 27          daa
0429: 32 93 4C    ld   ($4C93),a
042C: C0          ret  nz
042D: 3E 04       ld   a,$04
042F: 32 8A 4C    ld   ($4C8A),a
0432: 3E 0A       ld   a,$0A
0434: 32 93 4C    ld   ($4C93),a
0437: 3E 09       ld   a,$09
0439: CD 08 06    call $0608
043C: 3E 8F       ld   a,$8F
043E: CD 15 06    call $0615
0441: DD 21 44 4C ld   ix,$4C44
0445: 06 06       ld   b,$06
0447: CD C1 01    call $01C1
044A: DD 23       inc  ix
044C: DD 23       inc  ix
044E: 10 F7       djnz $0447
0450: C1          pop  bc
0451: 11 2F 13    ld   de,$132F
0454: 21 EC 42    ld   hl,$42EC
0457: 0E 01       ld   c,$01
0459: CD 97 05    call $0597
045C: 11 40 13    ld   de,$1340
045F: 21 EB 42    ld   hl,$42EB
0462: CD AE 05    call $05AE
0465: 11 40 13    ld   de,$1340
0468: 21 ED 42    ld   hl,$42ED
046B: CD AE 05    call $05AE
046E: C3 82 0F    jp   $0F82
0471: CD 15 04    call $0415
0474: CD 9D 04    call $049D
0477: 3A 3B 4C    ld   a,($4C3B)
047A: A7          and  a
047B: C2 82 0F    jp   nz,$0F82
047E: 3A 93 4C    ld   a,($4C93)
0481: 3D          dec  a
0482: 32 93 4C    ld   ($4C93),a
0485: CA 27 02    jp   z,$0227
0488: C3 82 0F    jp   $0F82
048B: 3E 0F       ld   a,$0F
048D: 32 36 4C    ld   ($4C36),a
0490: C9          ret
0491: 3A 37 4C    ld   a,($4C37)
0494: FE 10       cp   $10
0496: C0          ret  nz
0497: 3E 01       ld   a,$01
0499: 32 37 4C    ld   ($4C37),a
049C: C9          ret
049D: 21 24 40    ld   hl,$4024
04A0: 3A 93 4C    ld   a,($4C93)
04A3: 4F          ld   c,a
04A4: CD 26 05    call $0526
04A7: 21 30 40    ld   hl,$4030
04AA: 2B          dec  hl
04AB: 3A 96 4C    ld   a,($4C96)
04AE: 77          ld   (hl),a
04AF: 21 28 40    ld   hl,$4028
04B2: 2B          dec  hl
04B3: 3A 98 4C    ld   a,($4C98)
04B6: 4F          ld   c,a
04B7: 21 3B 40    ld   hl,$403B
04BA: 3A 98 4C    ld   a,($4C98)
04BD: C6 01       add  a,$01
04BF: 4F          ld   c,a
04C0: CD 26 05    call $0526
04C3: 21 EF 43    ld   hl,$43EF
04C6: 3A 80 4C    ld   a,($4C80)
04C9: 77          ld   (hl),a
04CA: C9          ret
04CB: 21 FD 43    ld   hl,$43FD
04CE: 3A 91 4C    ld   a,($4C91)
04D1: 4F          ld   c,a
04D2: CD 26 05    call $0526
04D5: 3A 90 4C    ld   a,($4C90)
04D8: 4F          ld   c,a
04D9: CD 26 05    call $0526
04DC: 3A 8F 4C    ld   a,($4C8F)
04DF: 4F          ld   c,a
04E0: CD 26 05    call $0526
04E3: 21 E7 43    ld   hl,$43E7
04E6: 3A 8D 4C    ld   a,($4C8D)
04E9: 4F          ld   c,a
04EA: CD 26 05    call $0526
04ED: 3A 8C 4C    ld   a,($4C8C)
04F0: 4F          ld   c,a
04F1: CD 26 05    call $0526
04F4: 3A 8B 4C    ld   a,($4C8B)
04F7: 4F          ld   c,a
04F8: CD 26 05    call $0526
04FB: C9          ret
04FC: 2A 3B 4C    ld   hl,($4C3B)
04FF: 7D          ld   a,l
0500: A7          and  a
0501: C0          ret  nz
0502: 3A 90 13    ld   a,($1390)
0505: A4          and  h
0506: C0          ret  nz
0507: 2A 87 4C    ld   hl,($4C87)
050A: 5E          ld   e,(hl)
050B: 23          inc  hl
050C: 56          ld   d,(hl)
050D: 23          inc  hl
050E: 7A          ld   a,d
050F: B3          or   e
0510: C2 1A 05    jp   nz,$051A
0513: 21 CC 13    ld   hl,$13CC
0516: 5E          ld   e,(hl)
0517: 23          inc  hl
0518: 56          ld   d,(hl)
0519: 23          inc  hl
051A: 22 87 4C    ld   ($4C87),hl
051D: 21 1D 40    ld   hl,$401D
0520: 0E 15       ld   c,$15
0522: CD D3 05    call $05D3
0525: C9          ret
0526: 06 02       ld   b,$02
0528: AF          xor  a
0529: 79          ld   a,c
052A: 07          rlca
052B: 07          rlca
052C: 07          rlca
052D: 07          rlca
052E: 4F          ld   c,a
052F: E6 0F       and  $0F
0531: FE 0A       cp   $0A
0533: F2 3B 05    jp   p,$053B
0536: C6 30       add  a,$30
0538: C3 3D 05    jp   $053D
053B: C6 37       add  a,$37
053D: 77          ld   (hl),a
053E: 2B          dec  hl
053F: 10 E7       djnz $0528
0541: C9          ret
0542: 06 02       ld   b,$02
0544: AF          xor  a
0545: 79          ld   a,c
0546: 07          rlca
0547: 07          rlca
0548: 07          rlca
0549: 07          rlca
054A: 4F          ld   c,a
054B: E6 0F       and  $0F
054D: FE 0A       cp   $0A
054F: F2 57 05    jp   p,$0557
0552: C6 30       add  a,$30
0554: C3 59 05    jp   $0559
0557: C6 37       add  a,$37
0559: 77          ld   (hl),a
055A: 7D          ld   a,l
055B: D6 20       sub  $20
055D: 6F          ld   l,a
055E: 7C          ld   a,h
055F: DE 00       sbc  a,$00
0561: 67          ld   h,a
0562: 10 E0       djnz $0544
0564: C9          ret
0565: 47          ld   b,a
0566: 21 8F 4C    ld   hl,$4C8F
0569: 7E          ld   a,(hl)
056A: 80          add  a,b
056B: 27          daa
056C: 77          ld   (hl),a
056D: 06 03       ld   b,$03
056F: 0E 00       ld   c,$00
0571: 23          inc  hl
0572: 7E          ld   a,(hl)
0573: 89          adc  a,c
0574: 27          daa
0575: 77          ld   (hl),a
0576: 10 F9       djnz $0571
0578: 06 04       ld   b,$04
057A: 11 93 4C    ld   de,$4C93
057D: 21 8F 4C    ld   hl,$4C8F
0580: 1B          dec  de
0581: 2B          dec  hl
0582: 1A          ld   a,(de)
0583: BE          cp   (hl)
0584: 27          daa
0585: F8          ret  m
0586: C2 8B 05    jp   nz,$058B
0589: 10 F5       djnz $0580
058B: 21 8F 4C    ld   hl,$4C8F
058E: 11 8B 4C    ld   de,$4C8B
0591: 01 04 00    ld   bc,$0004
0594: ED B0       ldir
0596: C9          ret
0597: 1A          ld   a,(de)
0598: 13          inc  de
0599: B7          or   a
059A: C8          ret  z
059B: 77          ld   (hl),a
059C: CB D4       set  2,h
059E: 79          ld   a,c
059F: 77          ld   (hl),a
05A0: 7D          ld   a,l
05A1: D6 20       sub  $20
05A3: 6F          ld   l,a
05A4: CB 94       res  2,h
05A6: 7C          ld   a,h
05A7: DE 00       sbc  a,$00
05A9: 67          ld   h,a
05AA: C3 97 05    jp   $0597
05AD: C9          ret
05AE: C5          push bc
05AF: 01 20 00    ld   bc,$0020
05B2: 1A          ld   a,(de)
05B3: 13          inc  de
05B4: B7          or   a
05B5: CA BE 05    jp   z,$05BE
05B8: 77          ld   (hl),a
05B9: ED 42       sbc  hl,bc
05BB: C3 B2 05    jp   $05B2
05BE: C1          pop  bc
05BF: C9          ret
05C0: 06 1D       ld   b,$1D
05C2: 1A          ld   a,(de)
05C3: 13          inc  de
05C4: B7          or   a
05C5: C8          ret  z
05C6: 05          dec  b
05C7: C8          ret  z
05C8: 77          ld   (hl),a
05C9: CB D4       set  2,h
05CB: 79          ld   a,c
05CC: 77          ld   (hl),a
05CD: CB 94       res  2,h
05CF: 2B          dec  hl
05D0: C3 C2 05    jp   $05C2
05D3: 06 1D       ld   b,$1D
05D5: 1A          ld   a,(de)
05D6: 13          inc  de
05D7: B7          or   a
05D8: C8          ret  z
05D9: 05          dec  b
05DA: C8          ret  z
05DB: 77          ld   (hl),a
05DC: 2B          dec  hl
05DD: C3 D5 05    jp   $05D5
05E0: 77          ld   (hl),a
05E1: 2B          dec  hl
05E2: 10 FC       djnz $05E0
05E4: C9          ret
05E5: 3E 40       ld   a,$40
05E7: 21 00 40    ld   hl,$4000
05EA: 11 01 40    ld   de,$4001
05ED: 01 FF 03    ld   bc,$03FF
05F0: 77          ld   (hl),a
05F1: ED B0       ldir
05F3: C9          ret
05F4: 21 00 44    ld   hl,$4400
05F7: 11 01 44    ld   de,$4401
05FA: 01 FF 03    ld   bc,$03FF
05FD: 77          ld   (hl),a
05FE: ED B0       ldir
0600: C9          ret
0601: 79          ld   a,c
0602: AE          xor  (hl)
0603: 77          ld   (hl),a
0604: 2B          dec  hl
0605: 10 FA       djnz $0601
0607: C9          ret
0608: 21 40 44    ld   hl,$4440
060B: 11 41 44    ld   de,$4441
060E: 01 7F 03    ld   bc,$037F
0611: 77          ld   (hl),a
0612: ED B0       ldir
0614: C9          ret
0615: 21 40 40    ld   hl,$4040
0618: 11 41 40    ld   de,$4041
061B: 01 7F 03    ld   bc,$037F
061E: 77          ld   (hl),a
061F: ED B0       ldir
0621: C9          ret
0622: 11 E0 FF    ld   de,$FFE0
0625: 77          ld   (hl),a
0626: 19          add  hl,de
0627: 10 FC       djnz $0625
0629: C9          ret
062A: 11 E0 FF    ld   de,$FFE0
062D: 79          ld   a,c
062E: AE          xor  (hl)
062F: 77          ld   (hl),a
0630: 19          add  hl,de
0631: 10 FA       djnz $062D
0633: C9          ret
0634: DD 68       ld   ixl,b
0636: CB 27       sla  a
0638: 5F          ld   e,a
0639: 16 00       ld   d,$00
063B: 21 9E 14    ld   hl,$149E
063E: 19          add  hl,de
063F: 7E          ld   a,(hl)
0640: 23          inc  hl
0641: 66          ld   h,(hl)
0642: 6F          ld   l,a
0643: 01 00 40    ld   bc,$4000
0646: 09          add  hl,bc
0647: 16 00       ld   d,$00
0649: DD 5D       ld   e,ixl
064B: 19          add  hl,de
064C: C9          ret
064D: 26 00       ld   h,$00
064F: DD 7E 0C    ld   a,(ix+$0c)
0652: 6F          ld   l,a
0653: 11 D6 14    ld   de,$14D6
0656: EB          ex   de,hl
0657: 19          add  hl,de
0658: EB          ex   de,hl
0659: 1A          ld   a,(de)
065A: 21 28 40    ld   hl,$4028
065D: 4F          ld   c,a
065E: 26 00       ld   h,$00
0660: DD 7E 0D    ld   a,(ix+$0d)
0663: 6F          ld   l,a
0664: 11 D6 15    ld   de,$15D6
0667: EB          ex   de,hl
0668: 19          add  hl,de
0669: EB          ex   de,hl
066A: 1A          ld   a,(de)
066B: 21 26 40    ld   hl,$4026
066E: 47          ld   b,a
066F: 79          ld   a,c
0670: CD 34 06    call $0634
0673: C9          ret
0674: E5          push hl
0675: D5          push de
0676: 2A 99 4C    ld   hl,($4C99)
0679: ED 5F       ld   a,r
067B: 57          ld   d,a
067C: 5E          ld   e,(hl)
067D: 19          add  hl,de
067E: 85          add  a,l
067F: AC          xor  h
0680: 22 99 4C    ld   ($4C99),hl
0683: D1          pop  de
0684: E1          pop  hl
0685: C9          ret
0686: CD 74 06    call $0674
0689: E6 0F       and  $0F
068B: 47          ld   b,a
068C: D5          push de
068D: 11 D6 16    ld   de,$16D6
0690: 7B          ld   a,e
0691: 80          add  a,b
0692: 5F          ld   e,a
0693: 1A          ld   a,(de)
0694: 4F          ld   c,a
0695: 11 1E 40    ld   de,$401E
0698: CB D2       set  2,d
069A: 12          ld   (de),a
069B: 79          ld   a,c
069C: D1          pop  de
069D: C9          ret
069E: 3A 9B 4C    ld   a,($4C9B)
06A1: C6 02       add  a,$02
06A3: 32 9B 4C    ld   ($4C9B),a
06A6: CB 3F       srl  a
06A8: CB 3F       srl  a
06AA: CB 3F       srl  a
06AC: CB 3F       srl  a
06AE: C6 01       add  a,$01
06B0: 47          ld   b,a
06B1: DD 21 44 4C ld   ix,$4C44
06B5: DD 7E 0D    ld   a,(ix+$0d)
06B8: 90          sub  b
06B9: DD 77 0D    ld   (ix+$0d),a
06BC: FE 0A       cp   $0A
06BE: D2 82 0F    jp   nc,$0F82
06C1: C3 C7 06    jp   $06C7
06C4: C3 82 0F    jp   $0F82
06C7: 3A 96 4C    ld   a,($4C96)
06CA: 3D          dec  a
06CB: 32 96 4C    ld   ($4C96),a
06CE: FE 00       cp   $00
06D0: C2 D6 06    jp   nz,$06D6
06D3: C3 2D 04    jp   $042D
06D6: DD 21 44 4C ld   ix,$4C44
06DA: DD CB 00 86 res  0,(ix+$00)
06DE: CD 14 07    call $0714
06E1: DD 21 44 4C ld   ix,$4C44
06E5: 3A A8 4C    ld   a,($4CA8)
06E8: DD 77 0C    ld   (ix+$0c),a
06EB: 3A A9 4C    ld   a,($4CA9)
06EE: DD 77 0D    ld   (ix+$0d),a
06F1: 3E 02       ld   a,$02
06F3: 32 8A 4C    ld   ($4C8A),a
06F6: C3 82 0F    jp   $0F82
06F9: CD 8B 04    call $048B
06FC: 3E 08       ld   a,$08
06FE: 32 8A 4C    ld   ($4C8A),a
0701: 3E 32       ld   a,$32
0703: 32 97 4C    ld   ($4C97),a
0706: DD 21 44 4C ld   ix,$4C44
070A: DD CB 00 C6 set  0,(ix+$00)
070E: 3E 00       ld   a,$00
0710: 32 9B 4C    ld   ($4C9B),a
0713: C9          ret
0714: 3E 00       ld   a,$00
0716: 32 A5 4C    ld   ($4CA5),a
0719: 32 9C 4C    ld   ($4C9C),a
071C: 32 9D 4C    ld   ($4C9D),a
071F: 32 9E 4C    ld   ($4C9E),a
0722: 32 9F 4C    ld   ($4C9F),a
0725: 32 A0 4C    ld   ($4CA0),a
0728: 32 A6 4C    ld   ($4CA6),a
072B: 32 A7 4C    ld   ($4CA7),a
072E: 3E 03       ld   a,$03
0730: 32 A4 4C    ld   ($4CA4),a
0733: 32 A3 4C    ld   ($4CA3),a
0736: C9          ret
0737: DD 21 44 4C ld   ix,$4C44
073B: CD 4D 06    call $064D
073E: 2B          dec  hl
073F: 7D          ld   a,l
0740: C6 20       add  a,$20
0742: 6F          ld   l,a
0743: 7C          ld   a,h
0744: CE 00       adc  a,$00
0746: 67          ld   h,a
0747: 7E          ld   a,(hl)
0748: FE 27       cp   $27
074A: CA A2 07    jp   z,$07A2
074D: 7D          ld   a,l
074E: D6 20       sub  $20
0750: 6F          ld   l,a
0751: 7C          ld   a,h
0752: DE 00       sbc  a,$00
0754: 67          ld   h,a
0755: 7E          ld   a,(hl)
0756: FE 27       cp   $27
0758: CA A2 07    jp   z,$07A2
075B: 7D          ld   a,l
075C: D6 20       sub  $20
075E: 6F          ld   l,a
075F: 7C          ld   a,h
0760: DE 00       sbc  a,$00
0762: 67          ld   h,a
0763: 7E          ld   a,(hl)
0764: FE 27       cp   $27
0766: CA A2 07    jp   z,$07A2
0769: DD 21 44 4C ld   ix,$4C44
076D: CD 4D 06    call $064D
0770: 7D          ld   a,l
0771: C6 20       add  a,$20
0773: 6F          ld   l,a
0774: 7C          ld   a,h
0775: CE 00       adc  a,$00
0777: 67          ld   h,a
0778: 7E          ld   a,(hl)
0779: FE 27       cp   $27
077B: CA A2 07    jp   z,$07A2
077E: 7D          ld   a,l
077F: D6 20       sub  $20
0781: 6F          ld   l,a
0782: 7C          ld   a,h
0783: DE 00       sbc  a,$00
0785: 67          ld   h,a
0786: 7E          ld   a,(hl)
0787: FE 27       cp   $27
0789: CA A2 07    jp   z,$07A2
078C: 7D          ld   a,l
078D: D6 20       sub  $20
078F: 6F          ld   l,a
0790: 7C          ld   a,h
0791: DE 00       sbc  a,$00
0793: 67          ld   h,a
0794: 7E          ld   a,(hl)
0795: FE 27       cp   $27
0797: CA A2 07    jp   z,$07A2
079A: AF          xor  a
079B: 32 AF 4C    ld   ($4CAF),a
079E: 32 B0 4C    ld   ($4CB0),a
07A1: C9          ret
07A2: E5          push hl
07A3: 3E 01       ld   a,$01
07A5: CD 65 05    call $0565
07A8: E1          pop  hl
07A9: 3E 20       ld   a,$20
07AB: 32 B0 4C    ld   ($4CB0),a
07AE: CD 91 04    call $0491
07B1: 3A AF 4C    ld   a,($4CAF)
07B4: 3C          inc  a
07B5: 32 AF 4C    ld   ($4CAF),a
07B8: FE 5A       cp   $5A
07BA: C0          ret  nz
07BB: FD 2E 2F    ld   iyl,$2F
07BE: FD 26 15    ld   iyh,$15
07C1: CD 10 0C    call $0C10
07C4: 3E 64       ld   a,$64
07C6: CD 65 05    call $0565
07C9: 3A 80 4C    ld   a,($4C80)
07CC: 3D          dec  a
07CD: 32 80 4C    ld   ($4C80),a
07D0: FE 00       cp   $00
07D2: C0          ret  nz
07D3: CD 9D 04    call $049D
07D6: 3E 01       ld   a,$01
07D8: 32 94 4C    ld   ($4C94),a
07DB: C9          ret
07DC: CD 37 07    call $0737
07DF: CD 58 08    call $0858
07E2: CD 98 08    call $0898
07E5: 3A AB 4C    ld   a,($4CAB)
07E8: FE 00       cp   $00
07EA: C2 FB 07    jp   nz,$07FB
07ED: 3A AC 4C    ld   a,($4CAC)
07F0: FE 00       cp   $00
07F2: C2 FB 07    jp   nz,$07FB
07F5: CD 2E 08    call $082E
07F8: CD 0B 08    call $080B
07FB: CD 75 0A    call $0A75
07FE: CD 09 0A    call $0A09
0801: CD D1 08    call $08D1
0804: CD 21 09    call $0921
0807: CD A6 09    call $09A6
080A: C9          ret
080B: 3E 00       ld   a,$00
080D: 32 AE 4C    ld   ($4CAE),a
0810: 7D          ld   a,l
0811: D6 40       sub  $40
0813: 6F          ld   l,a
0814: 7C          ld   a,h
0815: DE 00       sbc  a,$00
0817: 67          ld   h,a
0818: 7E          ld   a,(hl)
0819: FE 25       cp   $25
081B: C2 23 08    jp   nz,$0823
081E: 3E 01       ld   a,$01
0820: 32 AE 4C    ld   ($4CAE),a
0823: FE 2A       cp   $2A
0825: C2 2D 08    jp   nz,$082D
0828: CD F9 06    call $06F9
082B: E1          pop  hl
082C: C9          ret
082D: C9          ret
082E: 3E 00       ld   a,$00
0830: 32 AD 4C    ld   ($4CAD),a
0833: DD 21 44 4C ld   ix,$4C44
0837: CD 4D 06    call $064D
083A: 7D          ld   a,l
083B: C6 20       add  a,$20
083D: 6F          ld   l,a
083E: 7C          ld   a,h
083F: CE 00       adc  a,$00
0841: 67          ld   h,a
0842: 7E          ld   a,(hl)
0843: FE 25       cp   $25
0845: C2 4D 08    jp   nz,$084D
0848: 3E 01       ld   a,$01
084A: 32 AD 4C    ld   ($4CAD),a
084D: FE 2B       cp   $2B
084F: C2 57 08    jp   nz,$0857
0852: CD F9 06    call $06F9
0855: E1          pop  hl
0856: C9          ret
0857: C9          ret
0858: 3E 00       ld   a,$00
085A: 32 AB 4C    ld   ($4CAB),a
085D: DD 21 44 4C ld   ix,$4C44
0861: CD 4D 06    call $064D
0864: 2B          dec  hl
0865: 7E          ld   a,(hl)
0866: FE 25       cp   $25
0868: C2 70 08    jp   nz,$0870
086B: 3E 01       ld   a,$01
086D: 32 AB 4C    ld   ($4CAB),a
0870: FE 29       cp   $29
0872: C2 7A 08    jp   nz,$087A
0875: CD F9 06    call $06F9
0878: E1          pop  hl
0879: C9          ret
087A: 7D          ld   a,l
087B: D6 20       sub  $20
087D: 6F          ld   l,a
087E: 7C          ld   a,h
087F: DE 00       sbc  a,$00
0881: 67          ld   h,a
0882: 7E          ld   a,(hl)
0883: FE 25       cp   $25
0885: C2 8D 08    jp   nz,$088D
0888: 3E 01       ld   a,$01
088A: 32 AB 4C    ld   ($4CAB),a
088D: FE 29       cp   $29
088F: C2 97 08    jp   nz,$0897
0892: CD F9 06    call $06F9
0895: E1          pop  hl
0896: C9          ret
0897: C9          ret
0898: 3E 00       ld   a,$00
089A: 32 AC 4C    ld   ($4CAC),a
089D: 23          inc  hl
089E: 7E          ld   a,(hl)
089F: FE 25       cp   $25
08A1: C2 A9 08    jp   nz,$08A9
08A4: 3E 01       ld   a,$01
08A6: 32 AC 4C    ld   ($4CAC),a
08A9: FE 28       cp   $28
08AB: C2 B3 08    jp   nz,$08B3
08AE: CD F9 06    call $06F9
08B1: E1          pop  hl
08B2: C9          ret
08B3: 7D          ld   a,l
08B4: C6 20       add  a,$20
08B6: 6F          ld   l,a
08B7: 7C          ld   a,h
08B8: CE 00       adc  a,$00
08BA: 67          ld   h,a
08BB: 7E          ld   a,(hl)
08BC: FE 25       cp   $25
08BE: C2 C6 08    jp   nz,$08C6
08C1: 3E 01       ld   a,$01
08C3: 32 AC 4C    ld   ($4CAC),a
08C6: FE 28       cp   $28
08C8: C2 D0 08    jp   nz,$08D0
08CB: CD F9 06    call $06F9
08CE: E1          pop  hl
08CF: C9          ret
08D0: C9          ret
08D1: 3A 9E 4C    ld   a,($4C9E)
08D4: D6 02       sub  $02
08D6: 32 9E 4C    ld   ($4C9E),a
08D9: 3A 9D 4C    ld   a,($4C9D)
08DC: DE 00       sbc  a,$00
08DE: 32 9D 4C    ld   ($4C9D),a
08E1: F2 ED 08    jp   p,$08ED
08E4: 3E 00       ld   a,$00
08E6: 32 9E 4C    ld   ($4C9E),a
08E9: AF          xor  a
08EA: 32 9D 4C    ld   ($4C9D),a
08ED: 3A A0 4C    ld   a,($4CA0)
08F0: D6 02       sub  $02
08F2: 32 A0 4C    ld   ($4CA0),a
08F5: 3A 9F 4C    ld   a,($4C9F)
08F8: DE 00       sbc  a,$00
08FA: 32 9F 4C    ld   ($4C9F),a
08FD: F2 09 09    jp   p,$0909
0900: 3E 00       ld   a,$00
0902: 32 A0 4C    ld   ($4CA0),a
0905: AF          xor  a
0906: 32 9F 4C    ld   ($4C9F),a
0909: C9          ret
090A: 3E 05       ld   a,$05
090C: 47          ld   b,a
090D: 3A A0 4C    ld   a,($4CA0)
0910: 80          add  a,b
0911: 32 A0 4C    ld   ($4CA0),a
0914: 3A 9F 4C    ld   a,($4C9F)
0917: CE 00       adc  a,$00
0919: 32 9F 4C    ld   ($4C9F),a
091C: 2A 64 43    ld   hl,($4364)
091F: 77          ld   (hl),a
0920: C9          ret
0921: 3A 9F 4C    ld   a,($4C9F)
0924: FE 03       cp   $03
0926: DA 33 09    jp   c,$0933
0929: 3E 00       ld   a,$00
092B: 32 A0 4C    ld   ($4CA0),a
092E: 3E 03       ld   a,$03
0930: 32 9F 4C    ld   ($4C9F),a
0933: 4F          ld   c,a
0934: 3A A6 4C    ld   a,($4CA6)
0937: FE 01       cp   $01
0939: CA 60 09    jp   z,$0960
093C: 3A AB 4C    ld   a,($4CAB)
093F: FE 01       cp   $01
0941: C2 4D 09    jp   nz,$094D
0944: 3E 01       ld   a,$01
0946: 32 A6 4C    ld   ($4CA6),a
0949: CD 84 09    call $0984
094C: C9          ret
094D: 3A A0 4C    ld   a,($4CA0)
0950: 47          ld   b,a
0951: 3A A1 4C    ld   a,($4CA1)
0954: 80          add  a,b
0955: 32 A1 4C    ld   ($4CA1),a
0958: 3A 51 4C    ld   a,($4C51)
095B: 89          adc  a,c
095C: 32 51 4C    ld   ($4C51),a
095F: C9          ret
0960: 3A AC 4C    ld   a,($4CAC)
0963: FE 01       cp   $01
0965: C2 71 09    jp   nz,$0971
0968: 3E 00       ld   a,$00
096A: 32 A6 4C    ld   ($4CA6),a
096D: CD 84 09    call $0984
0970: C9          ret
0971: 3A A0 4C    ld   a,($4CA0)
0974: 47          ld   b,a
0975: 3A A1 4C    ld   a,($4CA1)
0978: 90          sub  b
0979: 32 A1 4C    ld   ($4CA1),a
097C: 3A 51 4C    ld   a,($4C51)
097F: 99          sbc  a,c
0980: 32 51 4C    ld   ($4C51),a
0983: C9          ret
0984: 3A 9F 4C    ld   a,($4C9F)
0987: CB 3F       srl  a
0989: 32 9F 4C    ld   ($4C9F),a
098C: 3A A0 4C    ld   a,($4CA0)
098F: CB 3F       srl  a
0991: 32 A0 4C    ld   ($4CA0),a
0994: C9          ret
0995: 3A 9D 4C    ld   a,($4C9D)
0998: CB 3F       srl  a
099A: 32 9D 4C    ld   ($4C9D),a
099D: 3A 9E 4C    ld   a,($4C9E)
09A0: CB 3F       srl  a
09A2: 32 9E 4C    ld   ($4C9E),a
09A5: C9          ret
09A6: 3A 9D 4C    ld   a,($4C9D)
09A9: FE 03       cp   $03
09AB: DA B8 09    jp   c,$09B8
09AE: 3E 00       ld   a,$00
09B0: 32 9E 4C    ld   ($4C9E),a
09B3: 3E 03       ld   a,$03
09B5: 32 9D 4C    ld   ($4C9D),a
09B8: 4F          ld   c,a
09B9: 3A A7 4C    ld   a,($4CA7)
09BC: FE 01       cp   $01
09BE: CA E5 09    jp   z,$09E5
09C1: 3A AD 4C    ld   a,($4CAD)
09C4: FE 01       cp   $01
09C6: C2 D2 09    jp   nz,$09D2
09C9: 3E 01       ld   a,$01
09CB: 32 A7 4C    ld   ($4CA7),a
09CE: CD 95 09    call $0995
09D1: C9          ret
09D2: 3A 9E 4C    ld   a,($4C9E)
09D5: 47          ld   b,a
09D6: 3A A2 4C    ld   a,($4CA2)
09D9: 80          add  a,b
09DA: 32 A2 4C    ld   ($4CA2),a
09DD: 3A 50 4C    ld   a,($4C50)
09E0: 89          adc  a,c
09E1: 32 50 4C    ld   ($4C50),a
09E4: C9          ret
09E5: 3A AE 4C    ld   a,($4CAE)
09E8: FE 01       cp   $01
09EA: C2 F6 09    jp   nz,$09F6
09ED: 3E 00       ld   a,$00
09EF: 32 A7 4C    ld   ($4CA7),a
09F2: CD 95 09    call $0995
09F5: C9          ret
09F6: 3A 9E 4C    ld   a,($4C9E)
09F9: 47          ld   b,a
09FA: 3A A2 4C    ld   a,($4CA2)
09FD: 90          sub  b
09FE: 32 A2 4C    ld   ($4CA2),a
0A01: 3A 50 4C    ld   a,($4C50)
0A04: 99          sbc  a,c
0A05: 32 50 4C    ld   ($4C50),a
0A08: C9          ret
0A09: 3A A3 4C    ld   a,($4CA3)
0A0C: FE 00       cp   $00
0A0E: CA 16 0A    jp   z,$0A16
0A11: 3D          dec  a
0A12: 32 A3 4C    ld   ($4CA3),a
0A15: C9          ret
0A16: 21 D6 13    ld   hl,$13D6
0A19: 3A 9D 4C    ld   a,($4C9D)
0A1C: 47          ld   b,a
0A1D: 3A 9F 4C    ld   a,($4C9F)
0A20: 80          add  a,b
0A21: 87          add  a,a
0A22: FE 00       cp   $00
0A24: C2 3B 0A    jp   nz,$0A3B
0A27: 4F          ld   c,a
0A28: 3A 9E 4C    ld   a,($4C9E)
0A2B: 80          add  a,b
0A2C: 47          ld   b,a
0A2D: 3A A0 4C    ld   a,($4CA0)
0A30: 80          add  a,b
0A31: FE 00       cp   $00
0A33: C2 3B 0A    jp   nz,$0A3B
0A36: 3E 08       ld   a,$08
0A38: C3 42 0A    jp   $0A42
0A3B: 79          ld   a,c
0A3C: 5F          ld   e,a
0A3D: 3E 00       ld   a,$00
0A3F: 57          ld   d,a
0A40: 19          add  hl,de
0A41: 7E          ld   a,(hl)
0A42: 32 A3 4C    ld   ($4CA3),a
0A45: DD 21 44 4C ld   ix,$4C44
0A49: 3A A5 4C    ld   a,($4CA5)
0A4C: FE 00       cp   $00
0A4E: CA 56 0A    jp   z,$0A56
0A51: 3E 00       ld   a,$00
0A53: C3 58 0A    jp   $0A58
0A56: 3E 04       ld   a,$04
0A58: 32 A5 4C    ld   ($4CA5),a
0A5B: 47          ld   b,a
0A5C: 3A 9C 4C    ld   a,($4C9C)
0A5F: 80          add  a,b
0A60: 47          ld   b,a
0A61: CD 74 06    call $0674
0A64: FE 18       cp   $18
0A66: D2 6D 0A    jp   nc,$0A6D
0A69: 3E 10       ld   a,$10
0A6B: 80          add  a,b
0A6C: 47          ld   b,a
0A6D: 3A B0 4C    ld   a,($4CB0)
0A70: 80          add  a,b
0A71: DD 77 00    ld   (ix+$00),a
0A74: C9          ret
0A75: 3A 41 4C    ld   a,($4C41)
0A78: 47          ld   b,a
0A79: E6 22       and  $22
0A7B: A7          and  a
0A7C: C2 C3 0A    jp   nz,$0AC3
0A7F: 3E 08       ld   a,$08
0A81: 32 9C 4C    ld   ($4C9C),a
0A84: 3A A7 4C    ld   a,($4CA7)
0A87: FE 01       cp   $01
0A89: C2 B0 0A    jp   nz,$0AB0
0A8C: 3E 08       ld   a,$08
0A8E: 47          ld   b,a
0A8F: 3A 9E 4C    ld   a,($4C9E)
0A92: 90          sub  b
0A93: 32 9E 4C    ld   ($4C9E),a
0A96: 3A 9D 4C    ld   a,($4C9D)
0A99: DE 00       sbc  a,$00
0A9B: 32 9D 4C    ld   ($4C9D),a
0A9E: F2 AF 0A    jp   p,$0AAF
0AA1: 3E 00       ld   a,$00
0AA3: 32 A7 4C    ld   ($4CA7),a
0AA6: 3E 01       ld   a,$01
0AA8: 32 9E 4C    ld   ($4C9E),a
0AAB: AF          xor  a
0AAC: 32 9D 4C    ld   ($4C9D),a
0AAF: C9          ret
0AB0: 3E 0C       ld   a,$0C
0AB2: 47          ld   b,a
0AB3: 3A 9E 4C    ld   a,($4C9E)
0AB6: 80          add  a,b
0AB7: 32 9E 4C    ld   ($4C9E),a
0ABA: 3A 9D 4C    ld   a,($4C9D)
0ABD: CE 00       adc  a,$00
0ABF: 32 9D 4C    ld   ($4C9D),a
0AC2: C9          ret
0AC3: 78          ld   a,b
0AC4: E6 44       and  $44
0AC6: A7          and  a
0AC7: C2 0C 0B    jp   nz,$0B0C
0ACA: 3E 00       ld   a,$00
0ACC: 32 9C 4C    ld   ($4C9C),a
0ACF: 3A A7 4C    ld   a,($4CA7)
0AD2: FE 01       cp   $01
0AD4: CA F9 0A    jp   z,$0AF9
0AD7: 3E 08       ld   a,$08
0AD9: 47          ld   b,a
0ADA: 3A 9E 4C    ld   a,($4C9E)
0ADD: 90          sub  b
0ADE: 32 9E 4C    ld   ($4C9E),a
0AE1: 3A 9D 4C    ld   a,($4C9D)
0AE4: DE 00       sbc  a,$00
0AE6: 32 9D 4C    ld   ($4C9D),a
0AE9: F2 F8 0A    jp   p,$0AF8
0AEC: 3E 01       ld   a,$01
0AEE: 32 A7 4C    ld   ($4CA7),a
0AF1: 32 9E 4C    ld   ($4C9E),a
0AF4: AF          xor  a
0AF5: 32 9D 4C    ld   ($4C9D),a
0AF8: C9          ret
0AF9: 3E 0C       ld   a,$0C
0AFB: 47          ld   b,a
0AFC: 3A 9E 4C    ld   a,($4C9E)
0AFF: 80          add  a,b
0B00: 32 9E 4C    ld   ($4C9E),a
0B03: 3A 9D 4C    ld   a,($4C9D)
0B06: CE 00       adc  a,$00
0B08: 32 9D 4C    ld   ($4C9D),a
0B0B: C9          ret
0B0C: 78          ld   a,b
0B0D: E6 11       and  $11
0B0F: A7          and  a
0B10: C2 52 0B    jp   nz,$0B52
0B13: 3A A6 4C    ld   a,($4CA6)
0B16: FE 01       cp   $01
0B18: C2 3F 0B    jp   nz,$0B3F
0B1B: 3E 0C       ld   a,$0C
0B1D: 47          ld   b,a
0B1E: 3A A0 4C    ld   a,($4CA0)
0B21: 90          sub  b
0B22: 32 A0 4C    ld   ($4CA0),a
0B25: 3A 9F 4C    ld   a,($4C9F)
0B28: DE 00       sbc  a,$00
0B2A: 32 9F 4C    ld   ($4C9F),a
0B2D: F2 3E 0B    jp   p,$0B3E
0B30: 3E 00       ld   a,$00
0B32: 32 A6 4C    ld   ($4CA6),a
0B35: 3E 01       ld   a,$01
0B37: 32 A0 4C    ld   ($4CA0),a
0B3A: AF          xor  a
0B3B: 32 9F 4C    ld   ($4C9F),a
0B3E: C9          ret
0B3F: 3E 0C       ld   a,$0C
0B41: 47          ld   b,a
0B42: 3A A0 4C    ld   a,($4CA0)
0B45: 80          add  a,b
0B46: 32 A0 4C    ld   ($4CA0),a
0B49: 3A 9F 4C    ld   a,($4C9F)
0B4C: CE 00       adc  a,$00
0B4E: 32 9F 4C    ld   ($4C9F),a
0B51: C9          ret
0B52: 78          ld   a,b
0B53: E6 88       and  $88
0B55: A7          and  a
0B56: C0          ret  nz
0B57: 3A A6 4C    ld   a,($4CA6)
0B5A: FE 01       cp   $01
0B5C: CA 81 0B    jp   z,$0B81
0B5F: 3E 0C       ld   a,$0C
0B61: 47          ld   b,a
0B62: 3A A0 4C    ld   a,($4CA0)
0B65: 90          sub  b
0B66: 32 A0 4C    ld   ($4CA0),a
0B69: 3A 9F 4C    ld   a,($4C9F)
0B6C: DE 00       sbc  a,$00
0B6E: 32 9F 4C    ld   ($4C9F),a
0B71: F2 80 0B    jp   p,$0B80
0B74: 3E 01       ld   a,$01
0B76: 32 A6 4C    ld   ($4CA6),a
0B79: 32 A0 4C    ld   ($4CA0),a
0B7C: AF          xor  a
0B7D: 32 9F 4C    ld   ($4C9F),a
0B80: C9          ret
0B81: 3E 0C       ld   a,$0C
0B83: 47          ld   b,a
0B84: 3A A0 4C    ld   a,($4CA0)
0B87: 80          add  a,b
0B88: 32 A0 4C    ld   ($4CA0),a
0B8B: 3A 9F 4C    ld   a,($4C9F)
0B8E: CE 00       adc  a,$00
0B90: 32 9F 4C    ld   ($4C9F),a
0B93: C9          ret
0B94: C9          ret
0B95: 4F          ld   c,a
0B96: 23          inc  hl
0B97: 7E          ld   a,(hl)
0B98: 47          ld   b,a
0B99: 23          inc  hl
0B9A: 7E          ld   a,(hl)
0B9B: DD 67       ld   ixh,a
0B9D: C9          ret
0B9E: 17          rla
0B9F: 6F          ld   l,a
0BA0: 26 00       ld   h,$00
0BA2: 11 00 10    ld   de,$1000
0BA5: 19          add  hl,de
0BA6: 7E          ld   a,(hl)
0BA7: 23          inc  hl
0BA8: 66          ld   h,(hl)
0BA9: 6F          ld   l,a
0BAA: 7E          ld   a,(hl)
0BAB: FE FE       cp   $FE
0BAD: CA 70 0E    jp   z,$0E70
0BB0: FD 6F       ld   iyl,a
0BB2: 23          inc  hl
0BB3: 7E          ld   a,(hl)
0BB4: FD 67       ld   iyh,a
0BB6: 23          inc  hl
0BB7: 7E          ld   a,(hl)
0BB8: 32 AA 4C    ld   ($4CAA),a
0BBB: 23          inc  hl
0BBC: 7E          ld   a,(hl)
0BBD: FE FF       cp   $FF
0BBF: C2 C6 0B    jp   nz,$0BC6
0BC2: 23          inc  hl
0BC3: C3 AA 0B    jp   $0BAA
0BC6: CD 95 0B    call $0B95
0BC9: 22 81 4C    ld   ($4C81),hl
0BCC: 79          ld   a,c
0BCD: CD 34 06    call $0634
0BD0: 3A AA 4C    ld   a,($4CAA)
0BD3: FE 00       cp   $00
0BD5: C2 DE 0B    jp   nz,$0BDE
0BD8: CD FC 0B    call $0BFC
0BDB: C3 BC 0B    jp   $0BBC
0BDE: CD E6 0B    call $0BE6
0BE1: C3 BC 0B    jp   $0BBC
0BE4: DD 60       ld   ixh,b
0BE6: CD 10 0C    call $0C10
0BE9: 7D          ld   a,l
0BEA: C6 01       add  a,$01
0BEC: 6F          ld   l,a
0BED: 7C          ld   a,h
0BEE: CE 00       adc  a,$00
0BF0: 67          ld   h,a
0BF1: DD 44       ld   b,ixh
0BF3: 10 EF       djnz $0BE4
0BF5: 2A 81 4C    ld   hl,($4C81)
0BF8: 23          inc  hl
0BF9: C9          ret
0BFA: DD 60       ld   ixh,b
0BFC: CD 10 0C    call $0C10
0BFF: 7D          ld   a,l
0C00: D6 20       sub  $20
0C02: 6F          ld   l,a
0C03: 7C          ld   a,h
0C04: DE 00       sbc  a,$00
0C06: 67          ld   h,a
0C07: DD 44       ld   b,ixh
0C09: 10 EF       djnz $0BFA
0C0B: 2A 81 4C    ld   hl,($4C81)
0C0E: 23          inc  hl
0C0F: C9          ret
0C10: FD 7D       ld   a,iyl
0C12: 77          ld   (hl),a
0C13: CB D4       set  2,h
0C15: FD 7C       ld   a,iyh
0C17: 77          ld   (hl),a
0C18: CB 94       res  2,h
0C1A: C9          ret
0C1B: CD 74 06    call $0674
0C1E: FE 96       cp   $96
0C20: CA 28 0C    jp   z,$0C28
0C23: FE F4       cp   $F4
0C25: DA D1 0C    jp   c,$0CD1
0C28: FD 2E 2D    ld   iyl,$2D
0C2B: FD 26 15    ld   iyh,$15
0C2E: CD 10 0C    call $0C10
0C31: C3 D1 0C    jp   $0CD1
0C34: 3E 40       ld   a,$40
0C36: 77          ld   (hl),a
0C37: 23          inc  hl
0C38: 7E          ld   a,(hl)
0C39: FE 26       cp   $26
0C3B: C2 5A 0C    jp   nz,$0C5A
0C3E: FD 2E 2C    ld   iyl,$2C
0C41: FD 26 15    ld   iyh,$15
0C44: CD 10 0C    call $0C10
0C47: C3 D1 0C    jp   $0CD1
0C4A: 3E 40       ld   a,$40
0C4C: 77          ld   (hl),a
0C4D: 23          inc  hl
0C4E: FD 2E 2C    ld   iyl,$2C
0C51: FD 26 15    ld   iyh,$15
0C54: CD 10 0C    call $0C10
0C57: C3 D1 0C    jp   $0CD1
0C5A: 3E 00       ld   a,$00
0C5C: 12          ld   (de),a
0C5D: 1B          dec  de
0C5E: 12          ld   (de),a
0C5F: 13          inc  de
0C60: 3A 14 4C    ld   a,($4C14)
0C63: 3D          dec  a
0C64: 32 14 4C    ld   ($4C14),a
0C67: C3 D1 0C    jp   $0CD1
0C6A: 11 00 4C    ld   de,$4C00
0C6D: 06 0A       ld   b,$0A
0C6F: 78          ld   a,b
0C70: 32 9B 4C    ld   ($4C9B),a
0C73: 1A          ld   a,(de)
0C74: FE 00       cp   $00
0C76: CA D1 0C    jp   z,$0CD1
0C79: 67          ld   h,a
0C7A: 13          inc  de
0C7B: 1A          ld   a,(de)
0C7C: 6F          ld   l,a
0C7D: CD 74 06    call $0674
0C80: FE 04       cp   $04
0C82: D2 D1 0C    jp   nc,$0CD1
0C85: 06 05       ld   b,$05
0C87: 7E          ld   a,(hl)
0C88: FE 2C       cp   $2C
0C8A: CA 34 0C    jp   z,$0C34
0C8D: FE 2D       cp   $2D
0C8F: CA 4A 0C    jp   z,$0C4A
0C92: FE 2F       cp   $2F
0C94: CA 4A 0C    jp   z,$0C4A
0C97: FE 27       cp   $27
0C99: CA 1B 0C    jp   z,$0C1B
0C9C: FE 26       cp   $26
0C9E: CA A9 0C    jp   z,$0CA9
0CA1: FE 40       cp   $40
0CA3: C2 C4 0C    jp   nz,$0CC4
0CA6: C3 B0 0C    jp   $0CB0
0CA9: 2B          dec  hl
0CAA: 10 DB       djnz $0C87
0CAC: 23          inc  hl
0CAD: C3 C5 0C    jp   $0CC5
0CB0: CD 74 06    call $0674
0CB3: FE 3C       cp   $3C
0CB5: DA C5 0C    jp   c,$0CC5
0CB8: FD 2E 26    ld   iyl,$26
0CBB: FD 26 17    ld   iyh,$17
0CBE: CD 10 0C    call $0C10
0CC1: C3 D1 0C    jp   $0CD1
0CC4: 23          inc  hl
0CC5: CD 86 06    call $0686
0CC8: FD 67       ld   iyh,a
0CCA: FD 2E 27    ld   iyl,$27
0CCD: CD 10 0C    call $0C10
0CD0: C9          ret
0CD1: 13          inc  de
0CD2: 3A 9B 4C    ld   a,($4C9B)
0CD5: 47          ld   b,a
0CD6: 10 97       djnz $0C6F
0CD8: C9          ret
0CD9: 3A 14 4C    ld   a,($4C14)
0CDC: FE 10       cp   $10
0CDE: CA 6A 0C    jp   z,$0C6A
0CE1: 3A B1 4C    ld   a,($4CB1)
0CE4: FE 00       cp   $00
0CE6: CA F0 0C    jp   z,$0CF0
0CE9: 3D          dec  a
0CEA: 32 B1 4C    ld   ($4CB1),a
0CED: C3 6A 0C    jp   $0C6A
0CF0: 3A 98 4C    ld   a,($4C98)
0CF3: E6 03       and  $03
0CF5: 17          rla
0CF6: 6F          ld   l,a
0CF7: 26 00       ld   h,$00
0CF9: 11 00 10    ld   de,$1000
0CFC: 19          add  hl,de
0CFD: 7E          ld   a,(hl)
0CFE: 23          inc  hl
0CFF: 66          ld   h,(hl)
0D00: 6F          ld   l,a
0D01: 23          inc  hl
0D02: 23          inc  hl
0D03: 23          inc  hl
0D04: 7E          ld   a,(hl)
0D05: FE FF       cp   $FF
0D07: C8          ret  z
0D08: CD 95 0B    call $0B95
0D0B: 22 81 4C    ld   ($4C81),hl
0D0E: 79          ld   a,c
0D0F: CD 34 06    call $0634
0D12: 2B          dec  hl
0D13: C3 18 0D    jp   $0D18
0D16: DD 60       ld   ixh,b
0D18: 7E          ld   a,(hl)
0D19: FE 40       cp   $40
0D1B: C2 38 0D    jp   nz,$0D38
0D1E: CD 74 06    call $0674
0D21: E6 1F       and  $1F
0D23: C2 38 0D    jp   nz,$0D38
0D26: FD 2E 26    ld   iyl,$26
0D29: FD 26 17    ld   iyh,$17
0D2C: CD 10 0C    call $0C10
0D2F: 3A B2 4C    ld   a,($4CB2)
0D32: 32 B1 4C    ld   ($4CB1),a
0D35: C3 4A 0D    jp   $0D4A
0D38: 7D          ld   a,l
0D39: D6 20       sub  $20
0D3B: 6F          ld   l,a
0D3C: 7C          ld   a,h
0D3D: DE 00       sbc  a,$00
0D3F: 67          ld   h,a
0D40: DD 44       ld   b,ixh
0D42: 10 D2       djnz $0D16
0D44: 2A 81 4C    ld   hl,($4C81)
0D47: C3 03 0D    jp   $0D03
0D4A: 22 81 4C    ld   ($4C81),hl
0D4D: 21 00 4C    ld   hl,$4C00
0D50: 06 0A       ld   b,$0A
0D52: 7E          ld   a,(hl)
0D53: FE 00       cp   $00
0D55: C2 67 0D    jp   nz,$0D67
0D58: 3A 14 4C    ld   a,($4C14)
0D5B: 3C          inc  a
0D5C: 32 14 4C    ld   ($4C14),a
0D5F: ED 5B 81 4C ld   de,($4C81)
0D63: 72          ld   (hl),d
0D64: 23          inc  hl
0D65: 73          ld   (hl),e
0D66: C9          ret
0D67: 23          inc  hl
0D68: 23          inc  hl
0D69: 10 E7       djnz $0D52
0D6B: C9          ret
0D6C: 3A 3A 4C    ld   a,($4C3A)
0D6F: E6 03       and  $03
0D71: C2 88 0D    jp   nz,$0D88
0D74: 3A 15 4C    ld   a,($4C15)
0D77: FE 00       cp   $00
0D79: CA 83 0D    jp   z,$0D83
0D7C: AF          xor  a
0D7D: 32 15 4C    ld   ($4C15),a
0D80: C3 88 0D    jp   $0D88
0D83: 3E 04       ld   a,$04
0D85: 32 15 4C    ld   ($4C15),a
0D88: FD 21 46 4C ld   iy,$4C46
0D8C: DD 21 16 4C ld   ix,$4C16
0D90: 06 04       ld   b,$04
0D92: DD 7E 00    ld   a,(ix+$00)
0D95: FE 00       cp   $00
0D97: CA 3F 0E    jp   z,$0E3F
0D9A: 78          ld   a,b
0D9B: FE 03       cp   $03
0D9D: D2 E8 0D    jp   nc,$0DE8
0DA0: AF          xor  a
0DA1: 4F          ld   c,a
0DA2: DD 7E 05    ld   a,(ix+$05)
0DA5: FE 00       cp   $00
0DA7: CA C9 0D    jp   z,$0DC9
0DAA: DD 7E 06    ld   a,(ix+$06)
0DAD: DD 86 04    add  a,(ix+$04)
0DB0: DD 77 06    ld   (ix+$06),a
0DB3: FD 7E 0D    ld   a,(iy+$0d)
0DB6: DE 00       sbc  a,$00
0DB8: FD 77 0D    ld   (iy+$0d),a
0DBB: DD BE 03    cp   (ix+$03)
0DBE: C2 35 0E    jp   nz,$0E35
0DC1: 3E 00       ld   a,$00
0DC3: DD 77 05    ld   (ix+$05),a
0DC6: C3 35 0E    jp   $0E35
0DC9: DD 7E 06    ld   a,(ix+$06)
0DCC: DD 86 04    add  a,(ix+$04)
0DCF: DD 77 06    ld   (ix+$06),a
0DD2: FD 7E 0D    ld   a,(iy+$0d)
0DD5: CE 00       adc  a,$00
0DD7: FD 77 0D    ld   (iy+$0d),a
0DDA: DD BE 02    cp   (ix+$02)
0DDD: C2 35 0E    jp   nz,$0E35
0DE0: 3E 01       ld   a,$01
0DE2: DD 77 05    ld   (ix+$05),a
0DE5: C3 35 0E    jp   $0E35
0DE8: DD 7E 05    ld   a,(ix+$05)
0DEB: FE 00       cp   $00
0DED: CA 0F 0E    jp   z,$0E0F
0DF0: DD 7E 06    ld   a,(ix+$06)
0DF3: DD 86 04    add  a,(ix+$04)
0DF6: DD 77 06    ld   (ix+$06),a
0DF9: FD 7E 0C    ld   a,(iy+$0c)
0DFC: DE 00       sbc  a,$00
0DFE: FD 77 0C    ld   (iy+$0c),a
0E01: DD BE 03    cp   (ix+$03)
0E04: C2 2B 0E    jp   nz,$0E2B
0E07: 3E 00       ld   a,$00
0E09: DD 77 05    ld   (ix+$05),a
0E0C: C3 2B 0E    jp   $0E2B
0E0F: DD 7E 06    ld   a,(ix+$06)
0E12: DD 86 04    add  a,(ix+$04)
0E15: DD 77 06    ld   (ix+$06),a
0E18: FD 7E 0C    ld   a,(iy+$0c)
0E1B: CE 00       adc  a,$00
0E1D: FD 77 0C    ld   (iy+$0c),a
0E20: DD BE 02    cp   (ix+$02)
0E23: C2 2B 0E    jp   nz,$0E2B
0E26: 3E 01       ld   a,$01
0E28: DD 77 05    ld   (ix+$05),a
0E2B: DD 7E 05    ld   a,(ix+$05)
0E2E: CB 27       sla  a
0E30: CB 27       sla  a
0E32: CB 27       sla  a
0E34: 4F          ld   c,a
0E35: 3A 15 4C    ld   a,($4C15)
0E38: 81          add  a,c
0E39: DD 86 07    add  a,(ix+$07)
0E3C: FD 77 00    ld   (iy+$00),a
0E3F: CD 4F 0E    call $0E4F
0E42: CD CD 0E    call $0ECD
0E45: 21 21 40    ld   hl,$4021
0E48: 70          ld   (hl),b
0E49: 10 01       djnz $0E4C
0E4B: C9          ret
0E4C: C3 92 0D    jp   $0D92
0E4F: 3A 50 4C    ld   a,($4C50)
0E52: 4F          ld   c,a
0E53: FD 7E 0C    ld   a,(iy+$0c)
0E56: FE 00       cp   $00
0E58: C8          ret  z
0E59: 91          sub  c
0E5A: C6 08       add  a,$08
0E5C: FE 10       cp   $10
0E5E: D0          ret  nc
0E5F: 3A 51 4C    ld   a,($4C51)
0E62: 4F          ld   c,a
0E63: FD 7E 0D    ld   a,(iy+$0d)
0E66: 91          sub  c
0E67: C6 08       add  a,$08
0E69: FE 10       cp   $10
0E6B: D0          ret  nc
0E6C: CD F9 06    call $06F9
0E6F: C9          ret
0E70: 3E 00       ld   a,$00
0E72: 32 15 4C    ld   ($4C15),a
0E75: 06 04       ld   b,$04
0E77: DD 21 16 4C ld   ix,$4C16
0E7B: FD 21 46 4C ld   iy,$4C46
0E7F: 23          inc  hl
0E80: 7E          ld   a,(hl)
0E81: DD 77 00    ld   (ix+$00),a
0E84: FD 77 0C    ld   (iy+$0c),a
0E87: 23          inc  hl
0E88: 7E          ld   a,(hl)
0E89: DD 77 01    ld   (ix+$01),a
0E8C: FD 77 0D    ld   (iy+$0d),a
0E8F: 23          inc  hl
0E90: 7E          ld   a,(hl)
0E91: DD 77 02    ld   (ix+$02),a
0E94: 78          ld   a,b
0E95: FE 03       cp   $03
0E97: D2 A3 0E    jp   nc,$0EA3
0E9A: DD 7E 01    ld   a,(ix+$01)
0E9D: DD 77 03    ld   (ix+$03),a
0EA0: C3 A9 0E    jp   $0EA9
0EA3: DD 7E 00    ld   a,(ix+$00)
0EA6: DD 77 03    ld   (ix+$03),a
0EA9: 23          inc  hl
0EAA: 7E          ld   a,(hl)
0EAB: DD 77 04    ld   (ix+$04),a
0EAE: DD 7E 03    ld   a,(ix+$03)
0EB1: DD BE 02    cp   (ix+$02)
0EB4: DA C7 0E    jp   c,$0EC7
0EB7: 4F          ld   c,a
0EB8: DD 7E 02    ld   a,(ix+$02)
0EBB: DD 77 03    ld   (ix+$03),a
0EBE: 79          ld   a,c
0EBF: DD 77 02    ld   (ix+$02),a
0EC2: 3E 01       ld   a,$01
0EC4: DD 77 05    ld   (ix+$05),a
0EC7: CD CD 0E    call $0ECD
0ECA: 10 B3       djnz $0E7F
0ECC: C9          ret
0ECD: DD 7D       ld   a,ixl
0ECF: C6 08       add  a,$08
0ED1: DD 6F       ld   ixl,a
0ED3: DD 7C       ld   a,ixh
0ED5: CE 00       adc  a,$00
0ED7: DD 67       ld   ixh,a
0ED9: FD 23       inc  iy
0EDB: FD 23       inc  iy
0EDD: C9          ret
0EDE: 3E 16       ld   a,$16
0EE0: 32 8A 4C    ld   ($4C8A),a
0EE3: 06 0F       ld   b,$0F
0EE5: 32 C0 50    ld   ($50C0),a
0EE8: 76          halt
0EE9: 10 FA       djnz $0EE5
0EEB: 3E 09       ld   a,$09
0EED: CD 08 06    call $0608
0EF0: 3E 8F       ld   a,$8F
0EF2: CD 15 06    call $0615
0EF5: DD 21 44 4C ld   ix,$4C44
0EF9: 06 06       ld   b,$06
0EFB: CD C1 01    call $01C1
0EFE: DD 23       inc  ix
0F00: DD 23       inc  ix
0F02: 10 F7       djnz $0EFB
0F04: 11 6E 13    ld   de,$136E
0F07: 21 EC 42    ld   hl,$42EC
0F0A: 0E 09       ld   c,$09
0F0C: CD 97 05    call $0597
0F0F: 11 7F 13    ld   de,$137F
0F12: 21 EE 42    ld   hl,$42EE
0F15: 0E 03       ld   c,$03
0F17: CD 97 05    call $0597
0F1A: 21 AE 41    ld   hl,$41AE
0F1D: 3A 93 4C    ld   a,($4C93)
0F20: 4F          ld   c,a
0F21: CD 42 05    call $0542
0F24: 3E 64       ld   a,$64
0F26: CD 65 05    call $0565
0F29: CD CB 04    call $04CB
0F2C: 32 C0 50    ld   ($50C0),a
0F2F: 76          halt
0F30: 3A 93 4C    ld   a,($4C93)
0F33: 3D          dec  a
0F34: 32 93 4C    ld   ($4C93),a
0F37: C2 24 0F    jp   nz,$0F24
0F3A: 3E 00       ld   a,$00
0F3C: 32 94 4C    ld   ($4C94),a
0F3F: 3E 78       ld   a,$78
0F41: 32 93 4C    ld   ($4C93),a
0F44: 11 40 13    ld   de,$1340
0F47: 21 EB 42    ld   hl,$42EB
0F4A: CD AE 05    call $05AE
0F4D: 11 40 13    ld   de,$1340
0F50: 21 ED 42    ld   hl,$42ED
0F53: CD AE 05    call $05AE
0F56: C3 82 0F    jp   $0F82
0F59: 3A 93 4C    ld   a,($4C93)
0F5C: 3D          dec  a
0F5D: 32 93 4C    ld   ($4C93),a
0F60: CA 34 03    jp   z,$0334
0F63: C3 82 0F    jp   $0F82
0F66: 3A 8A 4C    ld   a,($4C8A)
0F69: FE 01       cp   $01
0F6B: CA DA 02    jp   z,$02DA
0F6E: FE 02       cp   $02
0F70: CA F8 03    jp   z,$03F8
0F73: FE 04       cp   $04
0F75: CA 71 04    jp   z,$0471
0F78: FE 08       cp   $08
0F7A: CA 9E 06    jp   z,$069E
0F7D: FE 16       cp   $16
0F7F: CA 59 0F    jp   z,$0F59
0F82: 76          halt
0F83: C3 66 0F    jp   $0F66
0F86: 00          nop
0F87: 00          nop
0F88: 00          nop
0F89: 00          nop
0F8A: 00          nop
0F8B: 00          nop
0F8C: 00          nop
0F8D: 00          nop
0F8E: 00          nop
0F8F: 00          nop
0F90: 00          nop
0F91: 00          nop
0F92: 00          nop
0F93: 00          nop
0F94: 00          nop
0F95: 00          nop
0F96: 00          nop
0F97: 00          nop
0F98: 00          nop
0F99: 00          nop
0F9A: 00          nop
0F9B: 00          nop
0F9C: 00          nop
0F9D: 00          nop
0F9E: 00          nop
0F9F: 00          nop
0FA0: 00          nop
0FA1: 00          nop
0FA2: 00          nop
0FA3: 00          nop
0FA4: 00          nop
0FA5: 00          nop
0FA6: 00          nop
0FA7: 00          nop
0FA8: 00          nop
0FA9: 00          nop
0FAA: 00          nop
0FAB: 00          nop
0FAC: 00          nop
0FAD: 00          nop
0FAE: 00          nop
0FAF: 00          nop
0FB0: 00          nop
0FB1: 00          nop
0FB2: 00          nop
0FB3: 00          nop
0FB4: 00          nop
0FB5: 00          nop
0FB6: 00          nop
0FB7: 00          nop
0FB8: 00          nop
0FB9: 00          nop
0FBA: 00          nop
0FBB: 00          nop
0FBC: 00          nop
0FBD: 00          nop
0FBE: 00          nop
0FBF: 00          nop
0FC0: 00          nop
0FC1: 00          nop
0FC2: 00          nop
0FC3: 00          nop
0FC4: 00          nop
0FC5: 00          nop
0FC6: 00          nop
0FC7: 00          nop
0FC8: 00          nop
0FC9: 00          nop
0FCA: 00          nop
0FCB: 00          nop
0FCC: 00          nop
0FCD: 00          nop
0FCE: 00          nop
0FCF: 00          nop
0FD0: 00          nop
0FD1: 00          nop
0FD2: 00          nop
0FD3: 00          nop
0FD4: 00          nop
0FD5: 00          nop
0FD6: 00          nop
0FD7: 00          nop
0FD8: 00          nop
0FD9: 00          nop
0FDA: 00          nop
0FDB: 00          nop
0FDC: 00          nop
0FDD: 00          nop
0FDE: 00          nop
0FDF: 00          nop
0FE0: 00          nop
0FE1: 00          nop
0FE2: 00          nop
0FE3: 00          nop
0FE4: 00          nop
0FE5: 00          nop
0FE6: 00          nop
0FE7: 00          nop
0FE8: 00          nop
0FE9: 00          nop
0FEA: 00          nop
0FEB: 00          nop
0FEC: 00          nop
0FED: 00          nop
0FEE: 00          nop
0FEF: 00          nop
0FF0: 00          nop
0FF1: 00          nop
0FF2: 00          nop
0FF3: 00          nop
0FF4: 00          nop
0FF5: 00          nop
0FF6: 00          nop
0FF7: 00          nop
0FF8: 00          nop
0FF9: 00          nop
0FFA: 00          nop
0FFB: 00          nop
0FFC: 00          nop
0FFD: 00          nop
0FFE: 00          nop
0FFF: 00          nop
1000: 08          ex   af,af'
1001: 10 66       djnz $1069
1003: 10 CD       djnz $0FD2
1005: 10 52       djnz $1059
1007: 11 25 15    ld   de,$1525
100A: 00          nop
100B: 0E 0B       ld   c,$0B
100D: 08          ex   af,af'
100E: 04          inc  b
100F: 16 04       ld   d,$04
1011: 09          add  hl,bc
1012: 1D          dec  e
1013: 0C          inc  c
1014: 15          dec  d
1015: 06 04       ld   b,$04
1017: 02          ld   (bc),a
1018: 08          ex   af,af'
1019: 0D          dec  c
101A: 15          dec  d
101B: 19          add  hl,de
101C: 05          dec  b
101D: 0B          dec  bc
101E: 13          inc  de
101F: 07          rlca
1020: 06 04       ld   b,$04
1022: 04          inc  b
1023: FF          rst  $38
1024: 29          add  hl,hl
1025: 03          inc  bc
1026: 00          nop
1027: 0E 0C       ld   c,$0C
1029: 08          ex   af,af'
102A: 00          nop
102B: 00          nop
102C: 1C          inc  e
102D: 05          dec  b
102E: 17          rla
102F: 02          ld   (bc),a
1030: 06 09       ld   b,$09
1032: 05          dec  b
1033: FF          rst  $38
1034: 28 03       jr   z,$1039
1036: 00          nop
1037: 00          nop
1038: 1F          rra
1039: 1C          inc  e
103A: 09          add  hl,bc
103B: 1C          inc  e
103C: 04          inc  b
103D: 11 1C 04    ld   de,$041C
1040: FF          rst  $38
1041: 2B          dec  hl
1042: 03          inc  bc
1043: 01 00 07    ld   bc,$0700
1046: 09          add  hl,bc
1047: 00          nop
1048: 13          inc  de
1049: 04          inc  b
104A: FF          rst  $38
104B: 2A 03 01    ld   hl,($0103)
104E: 1B          dec  de
104F: 07          rlca
1050: 09          add  hl,bc
1051: 1B          dec  de
1052: 13          inc  de
1053: 04          inc  b
1054: FF          rst  $38
1055: FE 28       cp   $28
1057: B9          cp   c
1058: 78          ld   a,b
1059: 96          sub  (hl)
105A: 00          nop
105B: 32 DC 32    ld   ($32DC),a
105E: C8          ret  z
105F: B4          or   h
1060: 64          ld   h,h
1061: FA 7D 5F    jp   m,$5F7D
1064: 2D          dec  l
1065: 4B          ld   c,e
1066: 25          dec  h
1067: 15          dec  d
1068: 00          nop
1069: 02          ld   (bc),a
106A: 19          add  hl,de
106B: 0F          rrca
106C: 0E 1E       ld   c,$1E
106E: 03          inc  bc
106F: 0C          inc  c
1070: 13          inc  de
1071: 0C          inc  c
1072: 09          add  hl,bc
1073: 0E 03       ld   c,$03
1075: 18 0E       jr   $1085
1077: 04          inc  b
1078: 05          dec  b
1079: 08          ex   af,af'
107A: 14          inc  d
107B: 09          add  hl,bc
107C: 02          ld   (bc),a
107D: 0D          dec  c
107E: FF          rst  $38
107F: 29          add  hl,hl
1080: 03          inc  bc
1081: 00          nop
1082: 00          nop
1083: 00          nop
1084: 1C          inc  e
1085: 02          ld   (bc),a
1086: 1A          ld   a,(de)
1087: 0F          rrca
1088: 0C          inc  c
1089: 14          inc  d
108A: 0C          inc  c
108B: 18 0F       jr   $109C
108D: 04          inc  b
108E: 05          dec  b
108F: 09          add  hl,bc
1090: 14          inc  d
1091: 0B          dec  bc
1092: 03          inc  bc
1093: 09          add  hl,bc
1094: FF          rst  $38
1095: 28 03       jr   z,$109A
1097: 00          nop
1098: 00          nop
1099: 1F          rra
109A: 1C          inc  e
109B: 0E 12       ld   c,$12
109D: 05          dec  b
109E: 05          dec  b
109F: 07          rlca
10A0: 06 0D       ld   b,$0D
10A2: 07          rlca
10A3: 04          inc  b
10A4: 08          ex   af,af'
10A5: 18 02       jr   $10A9
10A7: 09          add  hl,bc
10A8: 01 0D FF    ld   bc,$FF0D
10AB: 2B          dec  hl
10AC: 03          inc  bc
10AD: 01 00 0C    ld   bc,$0C00
10B0: 10 00       djnz $10B2
10B2: 02          ld   (bc),a
10B3: 05          dec  b
10B4: FF          rst  $38
10B5: 2A 03 01    ld   hl,($0103)
10B8: 1B          dec  de
10B9: 0C          inc  c
10BA: 13          inc  de
10BB: FF          rst  $38
10BC: FE 64       cp   $64
10BE: 50          ld   d,b
10BF: C8          ret  z
10C0: A0          and  b
10C1: DC AA 64    call c,$64AA
10C4: 78          ld   a,b
10C5: D2 B4 3C    jp   nc,$3CB4
10C8: F0          ret  p
10C9: 64          ld   h,h
10CA: 32 19 4B    ld   ($4B19),a
10CD: 25          dec  h
10CE: 15          dec  d
10CF: 00          nop
10D0: 05          dec  b
10D1: 18 03       jr   $10D6
10D3: 0B          dec  bc
10D4: 18 03       jr   $10D9
10D6: 11 18 02    ld   de,$0218
10D9: 03          inc  bc
10DA: 13          inc  de
10DB: 10 06       djnz $10E3
10DD: 04          inc  b
10DE: 05          dec  b
10DF: 09          add  hl,bc
10E0: 08          ex   af,af'
10E1: 05          dec  b
10E2: 0C          inc  c
10E3: 0C          inc  c
10E4: 05          dec  b
10E5: 0F          rrca
10E6: 10 05       djnz $10ED
10E8: 14          inc  d
10E9: 09          add  hl,bc
10EA: 07          rlca
10EB: 14          inc  d
10EC: 04          inc  b
10ED: 07          rlca
10EE: FF          rst  $38
10EF: 29          add  hl,hl
10F0: 03          inc  bc
10F1: 00          nop
10F2: 00          nop
10F3: 00          nop
10F4: 1C          inc  e
10F5: 03          inc  bc
10F6: 14          inc  d
10F7: 10 14       djnz $110D
10F9: 0A          ld   a,(bc)
10FA: 07          rlca
10FB: 14          inc  d
10FC: 05          dec  b
10FD: 07          rlca
10FE: FF          rst  $38
10FF: 28 03       jr   z,$1104
1101: 00          nop
1102: 00          nop
1103: 1F          rra
1104: 1C          inc  e
1105: 06 03       ld   b,$03
1107: 01 09 07    ld   bc,$0709
110A: 01 0C 0B    ld   bc,$0B0C
110D: 01 0F 0F    ld   bc,$0F0F
1110: 01 0A 03    ld   bc,$030A
1113: 01 0D 07    ld   bc,$070D
1116: 01 10 0B    ld   bc,$0B10
1119: 01 13 0F    ld   bc,$0F13
111C: 01 05 12    ld   bc,$1205
111F: 05          dec  b
1120: FF          rst  $38
1121: 2B          dec  hl
1122: 03          inc  bc
1123: 01 00 17    ld   bc,$1700
1126: 06 08       ld   b,$08
1128: 18 01       jr   $112B
112A: 0E 18       ld   c,$18
112C: 01 13 18    ld   bc,$1813
112F: 01 FF 2A    ld   bc,$2AFF
1132: 03          inc  bc
1133: 01 1B 00    ld   bc,$001B
1136: 1F          rra
1137: 04          inc  b
1138: 18 01       jr   $113B
113A: 0A          ld   a,(bc)
113B: 18 01       jr   $113E
113D: 10 18       djnz $1157
113F: 01 FF FE    ld   bc,$FEFF
1142: 5D          ld   e,l
1143: 7D          ld   a,l
1144: D2 FA C8    jp   nc,$C8FA
1147: FA 46 AA    jp   m,$AA46
114A: 50          ld   d,b
114B: 3C          inc  a
114C: 78          ld   a,b
114D: FA 32 A0    jp   m,$A032
1150: 64          ld   h,h
1151: BE          cp   (hl)
1152: 25          dec  h
1153: 15          dec  d
1154: 00          nop
1155: 06 13       ld   b,$13
1157: 0C          inc  c
1158: 18 10       jr   $116A
115A: 03          inc  bc
115B: 18 0B       jr   $1168
115D: 03          inc  bc
115E: 18 06       jr   $1166
1160: 03          inc  bc
1161: 02          ld   (bc),a
1162: 18 06       jr   $116A
1164: 08          ex   af,af'
1165: 1D          dec  e
1166: 0E FF       ld   c,$FF
1168: 29          add  hl,hl
1169: 03          inc  bc
116A: 00          nop
116B: 00          nop
116C: 00          nop
116D: 1C          inc  e
116E: 06 14       ld   b,$14
1170: 0C          inc  c
1171: 18 0F       jr   $1182
1173: 03          inc  bc
1174: FF          rst  $38
1175: 28 03       jr   z,$117A
1177: 00          nop
1178: 00          nop
1179: 1F          rra
117A: 1C          inc  e
117B: 09          add  hl,bc
117C: 12          ld   (de),a
117D: 04          inc  b
117E: 18 0F       jr   $118F
1180: 01 18 0A    ld   bc,$0A18
1183: 01 18 05    ld   bc,$0518
1186: 01 08 1C    ld   bc,$1C08
1189: 0E FF       ld   c,$FF
118B: 2B          dec  hl
118C: 03          inc  bc
118D: 01 00 07    ld   bc,$0700
1190: 16 FF       ld   d,$FF
1192: 2A 03 01    ld   hl,($0103)
1195: 1B          dec  de
1196: 04          inc  b
1197: 18 FF       jr   $1198
1199: FE 46       cp   $46
119B: 8C          adc  a,h
119C: AA          xor  d
119D: E6 C8       and  $C8
119F: 9B          sbc  a,e
11A0: 64          ld   h,h
11A1: BE          cp   (hl)
11A2: DC 96 55    call c,$5596
11A5: FA 8C 5A    jp   m,$5A8C
11A8: 32 E6 00    ld   ($00E6),a
11AB: 16 40       ld   d,$40
11AD: 16 60       ld   d,$60
11AF: 14          inc  d
11B0: 50          ld   d,b
11B1: 16 70       ld   d,$70
11B3: 14          inc  d
11B4: FC 00 DC    call m,$DC00
11B7: 28 00       jr   z,$11B9
11B9: C8          ret  z
11BA: 00          nop
11BB: 96          sub  (hl)
11BC: 00          nop
11BD: 64          ld   h,h
11BE: 00          nop
11BF: 32 00 00    ld   ($0000),a
11C2: 50          ld   d,b
11C3: 4F          ld   c,a
11C4: 4C          ld   c,h
11C5: 4C          ld   c,h
11C6: 45          ld   b,l
11C7: 4E          ld   c,(hl)
11C8: 20 41       jr   nz,$120B
11CA: 4E          ld   c,(hl)
11CB: 47          ld   b,a
11CC: 45          ld   b,l
11CD: 4C          ld   c,h
11CE: 00          nop
11CF: 57          ld   d,a
11D0: 52          ld   d,d
11D1: 49          ld   c,c
11D2: 54          ld   d,h
11D3: 54          ld   d,h
11D4: 45          ld   b,l
11D5: 4E          ld   c,(hl)
11D6: 20 49       jr   nz,$1221
11D8: 4E          ld   c,(hl)
11D9: 20 34       jr   nz,$120F
11DB: 38 20       jr   c,$11FD
11DD: 48          ld   c,b
11DE: 4F          ld   c,a
11DF: 55          ld   d,l
11E0: 52          ld   d,d
11E1: 53          ld   d,e
11E2: 20 46       jr   nz,$122A
11E4: 4F          ld   c,a
11E5: 52          ld   d,d
11E6: 00          nop
11E7: 4C          ld   c,h
11E8: 55          ld   d,l
11E9: 44          ld   b,h
11EA: 55          ld   d,l
11EB: 4D          ld   c,l
11EC: 20 44       jr   nz,$1232
11EE: 41          ld   b,c
11EF: 52          ld   d,d
11F0: 45          ld   b,l
11F1: 20 35       jr   nz,$1228
11F3: 32 00 5A    ld   ($5A00),a
11F6: 38 30       jr   c,$1228
11F8: 20 41       jr   nz,$123B
11FA: 53          ld   d,e
11FB: 53          ld   d,e
11FC: 45          ld   b,l
11FD: 4D          ld   c,l
11FE: 42          ld   b,d
11FF: 4C          ld   c,h
1200: 59          ld   e,c
1201: 20 52       jr   nz,$1255
1203: 55          ld   d,l
1204: 4E          ld   c,(hl)
1205: 4E          ld   c,(hl)
1206: 49          ld   c,c
1207: 4E          ld   c,(hl)
1208: 47          ld   b,a
1209: 00          nop
120A: 4F          ld   c,a
120B: 4E          ld   c,(hl)
120C: 20 50       jr   nz,$125E
120E: 41          ld   b,c
120F: 43          ld   b,e
1210: 4D          ld   c,l
1211: 41          ld   b,c
1212: 4E          ld   c,(hl)
1213: 20 41       jr   nz,$1256
1215: 52          ld   d,d
1216: 43          ld   b,e
1217: 41          ld   b,c
1218: 44          ld   b,h
1219: 45          ld   b,l
121A: 00          nop
121B: 48          ld   c,b
121C: 41          ld   b,c
121D: 52          ld   d,d
121E: 44          ld   b,h
121F: 57          ld   d,a
1220: 41          ld   b,c
1221: 52          ld   d,d
1222: 45          ld   b,l
1223: 20 46       jr   nz,$126B
1225: 52          ld   d,d
1226: 4F          ld   c,a
1227: 4D          ld   c,l
1228: 20 31       jr   nz,$125B
122A: 39          add  hl,sp
122B: 38 30       jr   c,$125D
122D: 2E 00       ld   l,$00
122F: 43          ld   b,e
1230: 4F          ld   c,a
1231: 4C          ld   c,h
1232: 4C          ld   c,h
1233: 45          ld   b,l
1234: 43          ld   b,e
1235: 54          ld   d,h
1236: 20 50       jr   nz,$1288
1238: 4F          ld   c,a
1239: 4C          ld   c,h
123A: 4C          ld   c,h
123B: 45          ld   b,l
123C: 4E          ld   c,(hl)
123D: 20 46       jr   nz,$1285
123F: 52          ld   d,d
1240: 4F          ld   c,a
1241: 4D          ld   c,l
1242: 20 54       jr   nz,$1298
1244: 48          ld   c,b
1245: 45          ld   b,l
1246: 00          nop
1247: 46          ld   b,(hl)
1248: 4C          ld   c,h
1249: 4F          ld   c,a
124A: 57          ld   d,a
124B: 45          ld   b,l
124C: 52          ld   d,d
124D: 53          ld   d,e
124E: 20 41       jr   nz,$1291
1250: 53          ld   d,e
1251: 20 46       jr   nz,$1299
1253: 41          ld   b,c
1254: 53          ld   d,e
1255: 54          ld   d,h
1256: 20 41       jr   nz,$1299
1258: 53          ld   d,e
1259: 20 59       jr   nz,$12B4
125B: 4F          ld   c,a
125C: 55          ld   d,l
125D: 20 43       jr   nz,$12A2
125F: 41          ld   b,c
1260: 4E          ld   c,(hl)
1261: 00          nop
1262: 57          ld   d,a
1263: 48          ld   c,b
1264: 49          ld   c,c
1265: 4C          ld   c,h
1266: 53          ld   d,e
1267: 54          ld   d,h
1268: 20 41       jr   nz,$12AB
126A: 56          ld   d,(hl)
126B: 4F          ld   c,a
126C: 49          ld   c,c
126D: 44          ld   b,h
126E: 49          ld   c,c
126F: 4E          ld   c,(hl)
1270: 47          ld   b,a
1271: 20 57       jr   nz,$12CA
1273: 41          ld   b,c
1274: 53          ld   d,e
1275: 50          ld   d,b
1276: 53          ld   d,e
1277: 20 41       jr   nz,$12BA
1279: 4E          ld   c,(hl)
127A: 44          ld   b,h
127B: 00          nop
127C: 44          ld   b,h
127D: 45          ld   b,l
127E: 41          ld   b,c
127F: 44          ld   b,h
1280: 4C          ld   c,h
1281: 59          ld   e,c
1282: 20 53       jr   nz,$12D7
1284: 50          ld   d,b
1285: 49          ld   c,c
1286: 4B          ld   c,e
1287: 45          ld   b,l
1288: 53          ld   d,e
1289: 2E 20       ld   l,$20
128B: 00          nop
128C: 46          ld   b,(hl)
128D: 4C          ld   c,h
128E: 4F          ld   c,a
128F: 57          ld   d,a
1290: 45          ld   b,l
1291: 52          ld   d,d
1292: 53          ld   d,e
1293: 20 57       jr   nz,$12EC
1295: 49          ld   c,c
1296: 4C          ld   c,h
1297: 4C          ld   c,h
1298: 20 57       jr   nz,$12F1
129A: 49          ld   c,c
129B: 4C          ld   c,h
129C: 54          ld   d,h
129D: 20 49       jr   nz,$12E8
129F: 46          ld   b,(hl)
12A0: 20 4C       jr   nz,$12EE
12A2: 45          ld   b,l
12A3: 46          ld   b,(hl)
12A4: 54          ld   d,h
12A5: 00          nop
12A6: 46          ld   b,(hl)
12A7: 4F          ld   c,a
12A8: 52          ld   d,d
12A9: 20 54       jr   nz,$12FF
12AB: 4F          ld   c,a
12AC: 4F          ld   c,a
12AD: 20 4C       jr   nz,$12FB
12AF: 4F          ld   c,a
12B0: 4E          ld   c,(hl)
12B1: 47          ld   b,a
12B2: 2E 20       ld   l,$20
12B4: 48          ld   c,b
12B5: 41          ld   b,c
12B6: 52          ld   d,d
12B7: 56          ld   d,(hl)
12B8: 45          ld   b,l
12B9: 53          ld   d,e
12BA: 54          ld   d,h
12BB: 20 53       jr   nz,$1310
12BD: 49          ld   c,c
12BE: 58          ld   e,b
12BF: 00          nop
12C0: 54          ld   d,h
12C1: 4F          ld   c,a
12C2: 20 43       jr   nz,$1307
12C4: 4F          ld   c,a
12C5: 4D          ld   c,l
12C6: 50          ld   d,b
12C7: 4C          ld   c,h
12C8: 45          ld   b,l
12C9: 54          ld   d,h
12CA: 45          ld   b,l
12CB: 20 45       jr   nz,$1312
12CD: 41          ld   b,c
12CE: 43          ld   b,e
12CF: 48          ld   c,b
12D0: 20 4C       jr   nz,$131E
12D2: 45          ld   b,l
12D3: 56          ld   d,(hl)
12D4: 45          ld   b,l
12D5: 4C          ld   c,h
12D6: 2E 00       ld   l,$00
12D8: 44          ld   b,h
12D9: 45          ld   b,l
12DA: 42          ld   b,d
12DB: 55          ld   d,l
12DC: 47          ld   b,a
12DD: 20 20       jr   nz,$12FF
12DF: 20 20       jr   nz,$1301
12E1: 20 20       jr   nz,$1303
12E3: 20 20       jr   nz,$1305
12E5: 20 20       jr   nz,$1307
12E7: 20 20       jr   nz,$1309
12E9: 20 20       jr   nz,$130B
12EB: 20 20       jr   nz,$130D
12ED: 20 20       jr   nz,$130F
12EF: 20 20       jr   nz,$1311
12F1: 20 20       jr   nz,$1313
12F3: 20 00       jr   nz,$12F5
12F5: 53          ld   d,e
12F6: 43          ld   b,e
12F7: 4F          ld   c,a
12F8: 52          ld   d,d
12F9: 45          ld   b,l
12FA: 20 20       jr   nz,$131C
12FC: 20 20       jr   nz,$131E
12FE: 20 20       jr   nz,$1320
1300: 46          ld   b,(hl)
1301: 4C          ld   c,h
1302: 4F          ld   c,a
1303: 57          ld   d,a
1304: 45          ld   b,l
1305: 52          ld   d,d
1306: 53          ld   d,e
1307: 20 20       jr   nz,$1329
1309: 20 20       jr   nz,$132B
130B: 20 20       jr   nz,$132D
130D: 42          ld   b,d
130E: 45          ld   b,l
130F: 53          ld   d,e
1310: 54          ld   d,h
1311: 00          nop
1312: 4C          ld   c,h
1313: 45          ld   b,l
1314: 56          ld   d,(hl)
1315: 45          ld   b,l
1316: 4C          ld   c,h
1317: 20 20       jr   nz,$1339
1319: 20 20       jr   nz,$133B
131B: 20 20       jr   nz,$133D
131D: 20 4C       jr   nz,$136B
131F: 49          ld   c,c
1320: 56          ld   d,(hl)
1321: 45          ld   b,l
1322: 53          ld   d,e
1323: 20 20       jr   nz,$1345
1325: 20 20       jr   nz,$1347
1327: 20 20       jr   nz,$1349
1329: 20 54       jr   nz,$137F
132B: 49          ld   c,c
132C: 4D          ld   c,l
132D: 45          ld   b,l
132E: 00          nop
132F: 20 20       jr   nz,$1351
1331: 47          ld   b,a
1332: 41          ld   b,c
1333: 4D          ld   c,l
1334: 45          ld   b,l
1335: 20 20       jr   nz,$1357
1337: 20 20       jr   nz,$1359
1339: 4F          ld   c,a
133A: 56          ld   d,(hl)
133B: 45          ld   b,l
133C: 52          ld   d,d
133D: 20 20       jr   nz,$135F
133F: 00          nop
1340: 20 20       jr   nz,$1362
1342: 20 20       jr   nz,$1364
1344: 20 20       jr   nz,$1366
1346: 20 20       jr   nz,$1368
1348: 20 20       jr   nz,$136A
134A: 20 20       jr   nz,$136C
134C: 20 20       jr   nz,$136E
134E: 20 20       jr   nz,$1370
1350: 00          nop
1351: 20 20       jr   nz,$1373
1353: 20 20       jr   nz,$1375
1355: 20 20       jr   nz,$1377
1357: 20 20       jr   nz,$1379
1359: 20 20       jr   nz,$137B
135B: 20 20       jr   nz,$137D
135D: 20 20       jr   nz,$137F
135F: 20 20       jr   nz,$1381
1361: 20 20       jr   nz,$1383
1363: 20 20       jr   nz,$1385
1365: 20 20       jr   nz,$1387
1367: 20 20       jr   nz,$1389
1369: 20 20       jr   nz,$138B
136B: 20 20       jr   nz,$138D
136D: 00          nop
136E: 20 4C       jr   nz,$13BC
1370: 45          ld   b,l
1371: 56          ld   d,(hl)
1372: 45          ld   b,l
1373: 4C          ld   c,h
1374: 20 43       jr   nz,$13B9
1376: 4F          ld   c,a
1377: 4D          ld   c,l
1378: 50          ld   d,b
1379: 4C          ld   c,h
137A: 45          ld   b,l
137B: 54          ld   d,h
137C: 45          ld   b,l
137D: 20 00       jr   nz,$137F
137F: 20 42       jr   nz,$13C3
1381: 4F          ld   c,a
1382: 4E          ld   c,(hl)
1383: 55          ld   d,l
1384: 53          ld   d,e
1385: 20 20       jr   nz,$13A7
1387: 20 20       jr   nz,$13A9
1389: 30 30       jr   nc,$13BB
138B: 30 30       jr   nc,$13BD
138D: 20 20       jr   nz,$13AF
138F: 00          nop
1390: 00          nop
1391: 20 20       jr   nz,$13B3
1393: 20 20       jr   nz,$13B5
1395: 20 20       jr   nz,$13B7
1397: 50          ld   d,b
1398: 52          ld   d,d
1399: 45          ld   b,l
139A: 53          ld   d,e
139B: 53          ld   d,e
139C: 20 31       jr   nz,$13CF
139E: 20 54       jr   nz,$13F4
13A0: 4F          ld   c,a
13A1: 20 53       jr   nz,$13F6
13A3: 54          ld   d,h
13A4: 41          ld   b,c
13A5: 52          ld   d,d
13A6: 54          ld   d,h
13A7: 20 20       jr   nz,$13C9
13A9: 20 20       jr   nz,$13CB
13AB: 20 20       jr   nz,$13CD
13AD: 20 00       jr   nz,$13AF
13AF: 20 20       jr   nz,$13D1
13B1: 20 20       jr   nz,$13D3
13B3: 20 20       jr   nz,$13D5
13B5: 42          ld   b,d
13B6: 59          ld   e,c
13B7: 20 41       jr   nz,$13FA
13B9: 52          ld   d,d
13BA: 4C          ld   c,h
13BB: 41          ld   b,c
13BC: 53          ld   d,e
13BD: 4F          ld   c,a
13BE: 46          ld   b,(hl)
13BF: 54          ld   d,h
13C0: 20 32       jr   nz,$13F4
13C2: 30 32       jr   nc,$13F6
13C4: 33          inc  sp
13C5: 20 20       jr   nz,$13E7
13C7: 20 20       jr   nz,$13E9
13C9: 20 20       jr   nz,$13EB
13CB: 00          nop
13CC: 91          sub  c
13CD: 13          inc  de
13CE: 51          ld   d,c
13CF: 13          inc  de
13D0: AF          xor  a
13D1: 13          inc  de
13D2: 51          ld   d,c
13D3: 13          inc  de
13D4: 00          nop
13D5: 00          nop
13D6: 04          inc  b
13D7: 03          inc  bc
13D8: 02          ld   (bc),a
13D9: 01 01 00    ld   bc,$0001
13DC: 00          nop
13DD: 00          nop
13DE: 01 00 02    ld   bc,$0200
13E1: 00          nop
13E2: ED          db   $ed
13E3: E5          push hl
13E4: DD          db   $dd
13E5: D5          push de
13E6: CD C5 BD    call $BDC5
13E9: B5          or   l
13EA: AD          xor  l
13EB: A5          and  l
13EC: 9D          sbc  a,l
13ED: 95          sub  l
13EE: 8D          adc  a,l
13EF: 85          add  a,l
13F0: 7D          ld   a,l
13F1: 75          ld   (hl),l
13F2: 6D          ld   l,l
13F3: 65          ld   h,l
13F4: 5D          ld   e,l
13F5: 55          ld   d,l
13F6: 4D          ld   c,l
13F7: 45          ld   b,l
13F8: 3D          dec  a
13F9: 35          dec  (hl)
13FA: 2D          dec  l
13FB: 25          dec  h
13FC: 1D          dec  e
13FD: 15          dec  d
13FE: FF          rst  $38
13FF: F8          ret  m
1400: F0          ret  p
1401: E8          ret  pe
1402: E0          ret  po
1403: D8          ret  c
1404: D0          ret  nc
1405: C8          ret  z
1406: C0          ret  nz
1407: B8          cp   b
1408: B0          or   b
1409: A8          xor  b
140A: A0          and  b
140B: 98          sbc  a,b
140C: 90          sub  b
140D: 88          adc  a,b
140E: 80          add  a,b
140F: 78          ld   a,b
1410: 70          ld   (hl),b
1411: 68          ld   l,b
1412: 60          ld   h,b
1413: 58          ld   e,b
1414: 50          ld   d,b
1415: 48          ld   c,b
1416: 40          ld   b,b
1417: 38 30       jr   c,$1449
1419: 28 20       jr   z,$143B
141B: 18 10       jr   $142D
141D: 08          ex   af,af'
141E: 73          ld   (hl),e
141F: 20 00       jr   nz,$1421
1421: 0C          inc  c
1422: 00          nop
1423: 0A          ld   a,(bc)
1424: 1F          rra
1425: 00          nop
1426: 72          ld   (hl),d
1427: 20 FB       jr   nz,$1424
1429: 87          add  a,a
142A: 00          nop
142B: 02          ld   (bc),a
142C: 0F          rrca
142D: 00          nop
142E: 59          ld   e,c
142F: 01 06 08    ld   bc,$0806
1432: 00          nop
1433: 00          nop
1434: 02          ld   (bc),a
1435: 00          nop
1436: 59          ld   e,c
1437: 01 06 09    ld   bc,$0906
143A: 00          nop
143B: 00          nop
143C: 02          ld   (bc),a
143D: 00          nop
143E: 59          ld   e,c
143F: 02          ld   (bc),a
1440: 06 0A       ld   b,$0A
1442: 00          nop
1443: 00          nop
1444: 02          ld   (bc),a
1445: 00          nop
1446: 59          ld   e,c
1447: 03          inc  bc
1448: 06 0B       ld   b,$0B
144A: 00          nop
144B: 00          nop
144C: 02          ld   (bc),a
144D: 00          nop
144E: 59          ld   e,c
144F: 04          inc  b
1450: 06 0C       ld   b,$0C
1452: 00          nop
1453: 06 02       ld   b,$02
1455: 00          nop
1456: 24          inc  h
1457: 00          nop
1458: 06 08       ld   b,$08
145A: 02          ld   (bc),a
145B: 00          nop
145C: 0A          ld   a,(bc)
145D: 00          nop
145E: 36 07       ld   (hl),$07
1460: 87          add  a,a
1461: 6F          ld   l,a
1462: 00          nop
1463: 00          nop
1464: 04          inc  b
1465: 00          nop
1466: 70          ld   (hl),b
1467: 04          inc  b
1468: 00          nop
1469: 00          nop
146A: 00          nop
146B: 00          nop
146C: 08          ex   af,af'
146D: 00          nop
146E: 1C          inc  e
146F: 70          ld   (hl),b
1470: 8B          adc  a,e
1471: 08          ex   af,af'
1472: 08          ex   af,af'
1473: 01 06 00    ld   bc,$0006
1476: 1C          inc  e
1477: 70          ld   (hl),b
1478: 8B          adc  a,e
1479: 08          ex   af,af'
147A: 08          ex   af,af'
147B: 01 06 00    ld   bc,$0006
147E: 56          ld   d,(hl)
147F: 0C          inc  c
1480: FF          rst  $38
1481: 8C          adc  a,h
1482: 00          nop
1483: 02          ld   (bc),a
1484: 08          ex   af,af'
1485: 00          nop
1486: 56          ld   d,(hl)
1487: 00          nop
1488: 02          ld   (bc),a
1489: 0A          ld   a,(bc)
148A: 07          rlca
148B: 03          inc  bc
148C: 0C          inc  c
148D: 00          nop
148E: 36 38       ld   (hl),$38
1490: FE 12       cp   $12
1492: F8          ret  m
1493: 04          inc  b
1494: 0F          rrca
1495: FC 22 01    call m,$0122
1498: 01 06 00    ld   bc,$0006
149B: 01 07 00    ld   bc,$0007
149E: A0          and  b
149F: 03          inc  bc
14A0: 80          add  a,b
14A1: 03          inc  bc
14A2: 60          ld   h,b
14A3: 03          inc  bc
14A4: 40          ld   b,b
14A5: 03          inc  bc
14A6: 20 03       jr   nz,$14AB
14A8: 00          nop
14A9: 03          inc  bc
14AA: E0          ret  po
14AB: 02          ld   (bc),a
14AC: C0          ret  nz
14AD: 02          ld   (bc),a
14AE: A0          and  b
14AF: 02          ld   (bc),a
14B0: 80          add  a,b
14B1: 02          ld   (bc),a
14B2: 60          ld   h,b
14B3: 02          ld   (bc),a
14B4: 40          ld   b,b
14B5: 02          ld   (bc),a
14B6: 20 02       jr   nz,$14BA
14B8: 00          nop
14B9: 02          ld   (bc),a
14BA: E0          ret  po
14BB: 01 C0 01    ld   bc,$01C0
14BE: A0          and  b
14BF: 01 80 01    ld   bc,$0180
14C2: 60          ld   h,b
14C3: 01 40 01    ld   bc,$0140
14C6: 20 01       jr   nz,$14C9
14C8: 00          nop
14C9: 01 E0 00    ld   bc,$00E0
14CC: C0          ret  nz
14CD: 00          nop
14CE: A0          and  b
14CF: 00          nop
14D0: 80          add  a,b
14D1: 00          nop
14D2: 60          ld   h,b
14D3: 00          nop
14D4: 40          ld   b,b
14D5: 00          nop
14D6: 1E 1E       ld   e,$1E
14D8: 1E 1E       ld   e,$1E
14DA: 1E 1E       ld   e,$1E
14DC: 1D          dec  e
14DD: 1D          dec  e
14DE: 1D          dec  e
14DF: 1D          dec  e
14E0: 1D          dec  e
14E1: 1D          dec  e
14E2: 1D          dec  e
14E3: 1D          dec  e
14E4: 1C          inc  e
14E5: 1C          inc  e
14E6: 1C          inc  e
14E7: 1C          inc  e
14E8: 1C          inc  e
14E9: 1C          inc  e
14EA: 1C          inc  e
14EB: 1C          inc  e
14EC: 1B          dec  de
14ED: 1B          dec  de
14EE: 1B          dec  de
14EF: 1B          dec  de
14F0: 1B          dec  de
14F1: 1B          dec  de
14F2: 1B          dec  de
14F3: 1B          dec  de
14F4: 1A          ld   a,(de)
14F5: 1A          ld   a,(de)
14F6: 1A          ld   a,(de)
14F7: 1A          ld   a,(de)
14F8: 1A          ld   a,(de)
14F9: 1A          ld   a,(de)
14FA: 1A          ld   a,(de)
14FB: 1A          ld   a,(de)
14FC: 19          add  hl,de
14FD: 19          add  hl,de
14FE: 19          add  hl,de
14FF: 19          add  hl,de
1500: 19          add  hl,de
1501: 19          add  hl,de
1502: 19          add  hl,de
1503: 19          add  hl,de
1504: 18 18       jr   $151E
1506: 18 18       jr   $1520
1508: 18 18       jr   $1522
150A: 18 18       jr   $1524
150C: 17          rla
150D: 17          rla
150E: 17          rla
150F: 17          rla
1510: 17          rla
1511: 17          rla
1512: 17          rla
1513: 17          rla
1514: 16 16       ld   d,$16
1516: 16 16       ld   d,$16
1518: 16 16       ld   d,$16
151A: 16 16       ld   d,$16
151C: 15          dec  d
151D: 15          dec  d
151E: 15          dec  d
151F: 15          dec  d
1520: 15          dec  d
1521: 15          dec  d
1522: 15          dec  d
1523: 15          dec  d
1524: 14          inc  d
1525: 14          inc  d
1526: 14          inc  d
1527: 14          inc  d
1528: 14          inc  d
1529: 14          inc  d
152A: 14          inc  d
152B: 14          inc  d
152C: 13          inc  de
152D: 13          inc  de
152E: 13          inc  de
152F: 13          inc  de
1530: 13          inc  de
1531: 13          inc  de
1532: 13          inc  de
1533: 13          inc  de
1534: 12          ld   (de),a
1535: 12          ld   (de),a
1536: 12          ld   (de),a
1537: 12          ld   (de),a
1538: 12          ld   (de),a
1539: 12          ld   (de),a
153A: 12          ld   (de),a
153B: 12          ld   (de),a
153C: 11 11 11    ld   de,$1111
153F: 11 11 11    ld   de,$1111
1542: 11 11 10    ld   de,$1011
1545: 10 10       djnz $1557
1547: 10 10       djnz $1559
1549: 10 10       djnz $155B
154B: 10 0F       djnz $155C
154D: 0F          rrca
154E: 0F          rrca
154F: 0F          rrca
1550: 0F          rrca
1551: 0F          rrca
1552: 0F          rrca
1553: 0F          rrca
1554: 0E 0E       ld   c,$0E
1556: 0E 0E       ld   c,$0E
1558: 0E 0E       ld   c,$0E
155A: 0E 0E       ld   c,$0E
155C: 0D          dec  c
155D: 0D          dec  c
155E: 0D          dec  c
155F: 0D          dec  c
1560: 0D          dec  c
1561: 0D          dec  c
1562: 0D          dec  c
1563: 0D          dec  c
1564: 0C          inc  c
1565: 0C          inc  c
1566: 0C          inc  c
1567: 0C          inc  c
1568: 0C          inc  c
1569: 0C          inc  c
156A: 0C          inc  c
156B: 0C          inc  c
156C: 0B          dec  bc
156D: 0B          dec  bc
156E: 0B          dec  bc
156F: 0B          dec  bc
1570: 0B          dec  bc
1571: 0B          dec  bc
1572: 0B          dec  bc
1573: 0B          dec  bc
1574: 0A          ld   a,(bc)
1575: 0A          ld   a,(bc)
1576: 0A          ld   a,(bc)
1577: 0A          ld   a,(bc)
1578: 0A          ld   a,(bc)
1579: 0A          ld   a,(bc)
157A: 0A          ld   a,(bc)
157B: 0A          ld   a,(bc)
157C: 09          add  hl,bc
157D: 09          add  hl,bc
157E: 09          add  hl,bc
157F: 09          add  hl,bc
1580: 09          add  hl,bc
1581: 09          add  hl,bc
1582: 09          add  hl,bc
1583: 09          add  hl,bc
1584: 08          ex   af,af'
1585: 08          ex   af,af'
1586: 08          ex   af,af'
1587: 08          ex   af,af'
1588: 08          ex   af,af'
1589: 08          ex   af,af'
158A: 08          ex   af,af'
158B: 08          ex   af,af'
158C: 07          rlca
158D: 07          rlca
158E: 07          rlca
158F: 07          rlca
1590: 07          rlca
1591: 07          rlca
1592: 07          rlca
1593: 07          rlca
1594: 06 06       ld   b,$06
1596: 06 06       ld   b,$06
1598: 06 06       ld   b,$06
159A: 06 06       ld   b,$06
159C: 05          dec  b
159D: 05          dec  b
159E: 05          dec  b
159F: 05          dec  b
15A0: 05          dec  b
15A1: 05          dec  b
15A2: 05          dec  b
15A3: 05          dec  b
15A4: 04          inc  b
15A5: 04          inc  b
15A6: 04          inc  b
15A7: 04          inc  b
15A8: 04          inc  b
15A9: 04          inc  b
15AA: 04          inc  b
15AB: 04          inc  b
15AC: 03          inc  bc
15AD: 03          inc  bc
15AE: 03          inc  bc
15AF: 03          inc  bc
15B0: 03          inc  bc
15B1: 03          inc  bc
15B2: 03          inc  bc
15B3: 03          inc  bc
15B4: 02          ld   (bc),a
15B5: 02          ld   (bc),a
15B6: 02          ld   (bc),a
15B7: 02          ld   (bc),a
15B8: 02          ld   (bc),a
15B9: 02          ld   (bc),a
15BA: 02          ld   (bc),a
15BB: 02          ld   (bc),a
15BC: 01 01 01    ld   bc,$0101
15BF: 01 01 01    ld   bc,$0101
15C2: 01 01 00    ld   bc,$0001
15C5: 00          nop
15C6: 00          nop
15C7: 00          nop
15C8: 00          nop
15C9: 00          nop
15CA: 00          nop
15CB: 00          nop
15CC: FF          rst  $38
15CD: FF          rst  $38
15CE: FF          rst  $38
15CF: FF          rst  $38
15D0: FF          rst  $38
15D1: FF          rst  $38
15D2: FF          rst  $38
15D3: FF          rst  $38
15D4: FE FE       cp   $FE
15D6: 00          nop
15D7: 00          nop
15D8: 00          nop
15D9: 00          nop
15DA: 00          nop
15DB: 00          nop
15DC: 00          nop
15DD: 00          nop
15DE: 00          nop
15DF: 00          nop
15E0: 00          nop
15E1: 00          nop
15E2: 00          nop
15E3: 00          nop
15E4: 1F          rra
15E5: 1F          rra
15E6: 1F          rra
15E7: 1F          rra
15E8: 1F          rra
15E9: 1F          rra
15EA: 1F          rra
15EB: 1F          rra
15EC: 1E 1E       ld   e,$1E
15EE: 1E 1E       ld   e,$1E
15F0: 1E 1E       ld   e,$1E
15F2: 1E 1E       ld   e,$1E
15F4: 1D          dec  e
15F5: 1D          dec  e
15F6: 1D          dec  e
15F7: 1D          dec  e
15F8: 1D          dec  e
15F9: 1D          dec  e
15FA: 1D          dec  e
15FB: 1D          dec  e
15FC: 1C          inc  e
15FD: 1C          inc  e
15FE: 1C          inc  e
15FF: 1C          inc  e
1600: 1C          inc  e
1601: 1C          inc  e
1602: 1C          inc  e
1603: 1C          inc  e
1604: 1B          dec  de
1605: 1B          dec  de
1606: 1B          dec  de
1607: 1B          dec  de
1608: 1B          dec  de
1609: 1B          dec  de
160A: 1B          dec  de
160B: 1B          dec  de
160C: 1A          ld   a,(de)
160D: 1A          ld   a,(de)
160E: 1A          ld   a,(de)
160F: 1A          ld   a,(de)
1610: 1A          ld   a,(de)
1611: 1A          ld   a,(de)
1612: 1A          ld   a,(de)
1613: 1A          ld   a,(de)
1614: 19          add  hl,de
1615: 19          add  hl,de
1616: 19          add  hl,de
1617: 19          add  hl,de
1618: 19          add  hl,de
1619: 19          add  hl,de
161A: 19          add  hl,de
161B: 19          add  hl,de
161C: 18 18       jr   $1636
161E: 18 18       jr   $1638
1620: 18 18       jr   $163A
1622: 18 18       jr   $163C
1624: 17          rla
1625: 17          rla
1626: 17          rla
1627: 17          rla
1628: 17          rla
1629: 17          rla
162A: 17          rla
162B: 17          rla
162C: 16 16       ld   d,$16
162E: 16 16       ld   d,$16
1630: 16 16       ld   d,$16
1632: 16 16       ld   d,$16
1634: 15          dec  d
1635: 15          dec  d
1636: 15          dec  d
1637: 15          dec  d
1638: 15          dec  d
1639: 15          dec  d
163A: 15          dec  d
163B: 15          dec  d
163C: 14          inc  d
163D: 14          inc  d
163E: 14          inc  d
163F: 14          inc  d
1640: 14          inc  d
1641: 14          inc  d
1642: 14          inc  d
1643: 14          inc  d
1644: 13          inc  de
1645: 13          inc  de
1646: 13          inc  de
1647: 13          inc  de
1648: 13          inc  de
1649: 13          inc  de
164A: 13          inc  de
164B: 13          inc  de
164C: 12          ld   (de),a
164D: 12          ld   (de),a
164E: 12          ld   (de),a
164F: 12          ld   (de),a
1650: 12          ld   (de),a
1651: 12          ld   (de),a
1652: 12          ld   (de),a
1653: 12          ld   (de),a
1654: 11 11 11    ld   de,$1111
1657: 11 11 11    ld   de,$1111
165A: 11 11 10    ld   de,$1011
165D: 10 10       djnz $166F
165F: 10 10       djnz $1671
1661: 10 10       djnz $1673
1663: 10 0F       djnz $1674
1665: 0F          rrca
1666: 0F          rrca
1667: 0F          rrca
1668: 0F          rrca
1669: 0F          rrca
166A: 0F          rrca
166B: 0F          rrca
166C: 0E 0E       ld   c,$0E
166E: 0E 0E       ld   c,$0E
1670: 0E 0E       ld   c,$0E
1672: 0E 0E       ld   c,$0E
1674: 0D          dec  c
1675: 0D          dec  c
1676: 0D          dec  c
1677: 0D          dec  c
1678: 0D          dec  c
1679: 0D          dec  c
167A: 0D          dec  c
167B: 0D          dec  c
167C: 0C          inc  c
167D: 0C          inc  c
167E: 0C          inc  c
167F: 0C          inc  c
1680: 0C          inc  c
1681: 0C          inc  c
1682: 0C          inc  c
1683: 0C          inc  c
1684: 0B          dec  bc
1685: 0B          dec  bc
1686: 0B          dec  bc
1687: 0B          dec  bc
1688: 0B          dec  bc
1689: 0B          dec  bc
168A: 0B          dec  bc
168B: 0B          dec  bc
168C: 0A          ld   a,(bc)
168D: 0A          ld   a,(bc)
168E: 0A          ld   a,(bc)
168F: 0A          ld   a,(bc)
1690: 0A          ld   a,(bc)
1691: 0A          ld   a,(bc)
1692: 0A          ld   a,(bc)
1693: 0A          ld   a,(bc)
1694: 09          add  hl,bc
1695: 09          add  hl,bc
1696: 09          add  hl,bc
1697: 09          add  hl,bc
1698: 09          add  hl,bc
1699: 09          add  hl,bc
169A: 09          add  hl,bc
169B: 09          add  hl,bc
169C: 08          ex   af,af'
169D: 08          ex   af,af'
169E: 08          ex   af,af'
169F: 08          ex   af,af'
16A0: 08          ex   af,af'
16A1: 08          ex   af,af'
16A2: 08          ex   af,af'
16A3: 08          ex   af,af'
16A4: 07          rlca
16A5: 07          rlca
16A6: 07          rlca
16A7: 07          rlca
16A8: 07          rlca
16A9: 07          rlca
16AA: 07          rlca
16AB: 07          rlca
16AC: 06 06       ld   b,$06
16AE: 06 06       ld   b,$06
16B0: 06 06       ld   b,$06
16B2: 06 06       ld   b,$06
16B4: 05          dec  b
16B5: 05          dec  b
16B6: 05          dec  b
16B7: 05          dec  b
16B8: 05          dec  b
16B9: 05          dec  b
16BA: 05          dec  b
16BB: 05          dec  b
16BC: 04          inc  b
16BD: 04          inc  b
16BE: 04          inc  b
16BF: 04          inc  b
16C0: 04          inc  b
16C1: 04          inc  b
16C2: 04          inc  b
16C3: 04          inc  b
16C4: 03          inc  bc
16C5: 03          inc  bc
16C6: 03          inc  bc
16C7: 03          inc  bc
16C8: 03          inc  bc
16C9: 03          inc  bc
16CA: 03          inc  bc
16CB: 03          inc  bc
16CC: 02          ld   (bc),a
16CD: 02          ld   (bc),a
16CE: 02          ld   (bc),a
16CF: 02          ld   (bc),a
16D0: 02          ld   (bc),a
16D1: 02          ld   (bc),a
16D2: 02          ld   (bc),a
16D3: 02          ld   (bc),a
16D4: 01 01 01    ld   bc,$0101
16D7: 03          inc  bc
16D8: 05          dec  b
16D9: 07          rlca
16DA: 09          add  hl,bc
16DB: 0E 0F       ld   c,$0F
16DD: 10 11       djnz $16F0
16DF: 12          ld   (de),a
16E0: 14          inc  d
16E1: 15          dec  d
16E2: 16 17       ld   d,$17
16E4: 18 19       jr   $16FF
16E6: 00          nop
16E7: 00          nop
16E8: 00          nop
16E9: 00          nop
16EA: 00          nop
16EB: 00          nop
16EC: 00          nop
16ED: 00          nop
16EE: 00          nop
16EF: 00          nop
16F0: 00          nop
16F1: 00          nop
16F2: 00          nop
16F3: 00          nop
16F4: 00          nop
16F5: 00          nop
16F6: 00          nop
16F7: 00          nop
16F8: 00          nop
16F9: 00          nop
16FA: 00          nop
16FB: 00          nop
16FC: 00          nop
16FD: 00          nop
16FE: 00          nop
16FF: 00          nop
1700: 00          nop
1701: 00          nop
1702: 00          nop
1703: 00          nop
1704: 00          nop
1705: 00          nop
1706: 00          nop
1707: 00          nop
1708: 00          nop
1709: 00          nop
170A: 00          nop
170B: 00          nop
170C: 00          nop
170D: 00          nop
170E: 00          nop
170F: 00          nop
1710: 00          nop
1711: 00          nop
1712: 00          nop
1713: 00          nop
1714: 00          nop
1715: 00          nop
1716: 00          nop
1717: 00          nop
1718: 00          nop
1719: 00          nop
171A: 00          nop
171B: 00          nop
171C: 00          nop
171D: 00          nop
171E: 00          nop
171F: 00          nop
1720: 00          nop
1721: 00          nop
1722: 00          nop
1723: 00          nop
1724: 00          nop
1725: 00          nop
1726: 00          nop
1727: 00          nop
1728: 00          nop
1729: 00          nop
172A: 00          nop
172B: 00          nop
172C: 00          nop
172D: 00          nop
172E: 00          nop
172F: 00          nop
1730: 00          nop
1731: 00          nop
1732: 00          nop
1733: 00          nop
1734: 00          nop
1735: 00          nop
1736: 00          nop
1737: 00          nop
1738: 00          nop
1739: 00          nop
173A: 00          nop
173B: 00          nop
173C: 00          nop
173D: 00          nop
173E: 00          nop
173F: 00          nop
1740: 00          nop
1741: 00          nop
1742: 00          nop
1743: 00          nop
1744: 00          nop
1745: 00          nop
1746: 00          nop
1747: 00          nop
1748: 00          nop
1749: 00          nop
174A: 00          nop
174B: 00          nop
174C: 00          nop
174D: 00          nop
174E: 00          nop
174F: 00          nop
1750: 00          nop
1751: 00          nop
1752: 00          nop
1753: 00          nop
1754: 00          nop
1755: 00          nop
1756: 00          nop
1757: 00          nop
1758: 00          nop
1759: 00          nop
175A: 00          nop
175B: 00          nop
175C: 00          nop
175D: 00          nop
175E: 00          nop
175F: 00          nop
1760: 00          nop
1761: 00          nop
1762: 00          nop
1763: 00          nop
1764: 00          nop
1765: 00          nop
1766: 00          nop
1767: 00          nop
1768: 00          nop
1769: 00          nop
176A: 00          nop
176B: 00          nop
176C: 00          nop
176D: 00          nop
176E: 00          nop
176F: 00          nop
1770: 00          nop
1771: 00          nop
1772: 00          nop
1773: 00          nop
1774: 00          nop
1775: 00          nop
1776: 00          nop
1777: 00          nop
1778: 00          nop
1779: 00          nop
177A: 00          nop
177B: 00          nop
177C: 00          nop
177D: 00          nop
177E: 00          nop
177F: 00          nop
1780: 00          nop
1781: 00          nop
1782: 00          nop
1783: 00          nop
1784: 00          nop
1785: 00          nop
1786: 00          nop
1787: 00          nop
1788: 00          nop
1789: 00          nop
178A: 00          nop
178B: 00          nop
178C: 00          nop
178D: 00          nop
178E: 00          nop
178F: 00          nop
1790: 00          nop
1791: 00          nop
1792: 00          nop
1793: 00          nop
1794: 00          nop
1795: 00          nop
1796: 00          nop
1797: 00          nop
1798: 00          nop
1799: 00          nop
179A: 00          nop
179B: 00          nop
179C: 00          nop
179D: 00          nop
179E: 00          nop
179F: 00          nop
17A0: 00          nop
17A1: 00          nop
17A2: 00          nop
17A3: 00          nop
17A4: 00          nop
17A5: 00          nop
17A6: 00          nop
17A7: 00          nop
17A8: 00          nop
17A9: 00          nop
17AA: 00          nop
17AB: 00          nop
17AC: 00          nop
17AD: 00          nop
17AE: 00          nop
17AF: 00          nop
17B0: 00          nop
17B1: 00          nop
17B2: 00          nop
17B3: 00          nop
17B4: 00          nop
17B5: 00          nop
17B6: 00          nop
17B7: 00          nop
17B8: 00          nop
17B9: 00          nop
17BA: 00          nop
17BB: 00          nop
17BC: 00          nop
17BD: 00          nop
17BE: 00          nop
17BF: 00          nop
17C0: 00          nop
17C1: 00          nop
17C2: 00          nop
17C3: 00          nop
17C4: 00          nop
17C5: 00          nop
17C6: 00          nop
17C7: 00          nop
17C8: 00          nop
17C9: 00          nop
17CA: 00          nop
17CB: 00          nop
17CC: 00          nop
17CD: 00          nop
17CE: 00          nop
17CF: 00          nop
17D0: 00          nop
17D1: 00          nop
17D2: 00          nop
17D3: 00          nop
17D4: 00          nop
17D5: 00          nop
17D6: 00          nop
17D7: 00          nop
17D8: 00          nop
17D9: 00          nop
17DA: 00          nop
17DB: 00          nop
17DC: 00          nop
17DD: 00          nop
17DE: 00          nop
17DF: 00          nop
17E0: 00          nop
17E1: 00          nop
17E2: 00          nop
17E3: 00          nop
17E4: 00          nop
17E5: 00          nop
17E6: 00          nop
17E7: 00          nop
17E8: 00          nop
17E9: 00          nop
17EA: 00          nop
17EB: 00          nop
17EC: 00          nop
17ED: 00          nop
17EE: 00          nop
17EF: 00          nop
17F0: 00          nop
17F1: 00          nop
17F2: 00          nop
17F3: 00          nop
17F4: 00          nop
17F5: 00          nop
17F6: 00          nop
17F7: 00          nop
17F8: 00          nop
17F9: 00          nop
17FA: 00          nop
17FB: 00          nop
17FC: 00          nop
17FD: 00          nop
17FE: 00          nop
17FF: 00          nop
1800: 00          nop
1801: 00          nop
1802: 00          nop
1803: 00          nop
1804: 00          nop
1805: 00          nop
1806: 00          nop
1807: 00          nop
1808: 00          nop
1809: 00          nop
180A: 00          nop
180B: 00          nop
180C: 00          nop
180D: 00          nop
180E: 00          nop
180F: 00          nop
1810: 00          nop
1811: 00          nop
1812: 00          nop
1813: 00          nop
1814: 00          nop
1815: 00          nop
1816: 00          nop
1817: 00          nop
1818: 00          nop
1819: 00          nop
181A: 00          nop
181B: 00          nop
181C: 00          nop
181D: 00          nop
181E: 00          nop
181F: 00          nop
1820: 00          nop
1821: 00          nop
1822: 00          nop
1823: 00          nop
1824: 00          nop
1825: 00          nop
1826: 00          nop
1827: 00          nop
1828: 00          nop
1829: 00          nop
182A: 00          nop
182B: 00          nop
182C: 00          nop
182D: 00          nop
182E: 00          nop
182F: 00          nop
1830: 00          nop
1831: 00          nop
1832: 00          nop
1833: 00          nop
1834: 00          nop
1835: 00          nop
1836: 00          nop
1837: 00          nop
1838: 00          nop
1839: 00          nop
183A: 00          nop
183B: 00          nop
183C: 00          nop
183D: 00          nop
183E: 00          nop
183F: 00          nop
1840: 00          nop
1841: 00          nop
1842: 00          nop
1843: 00          nop
1844: 00          nop
1845: 00          nop
1846: 00          nop
1847: 00          nop
1848: 00          nop
1849: 00          nop
184A: 00          nop
184B: 00          nop
184C: 00          nop
184D: 00          nop
184E: 00          nop
184F: 00          nop
1850: 00          nop
1851: 00          nop
1852: 00          nop
1853: 00          nop
1854: 00          nop
1855: 00          nop
1856: 00          nop
1857: 00          nop
1858: 00          nop
1859: 00          nop
185A: 00          nop
185B: 00          nop
185C: 00          nop
185D: 00          nop
185E: 00          nop
185F: 00          nop
1860: 00          nop
1861: 00          nop
1862: 00          nop
1863: 00          nop
1864: 00          nop
1865: 00          nop
1866: 00          nop
1867: 00          nop
1868: 00          nop
1869: 00          nop
186A: 00          nop
186B: 00          nop
186C: 00          nop
186D: 00          nop
186E: 00          nop
186F: 00          nop
1870: 00          nop
1871: 00          nop
1872: 00          nop
1873: 00          nop
1874: 00          nop
1875: 00          nop
1876: 00          nop
1877: 00          nop
1878: 00          nop
1879: 00          nop
187A: 00          nop
187B: 00          nop
187C: 00          nop
187D: 00          nop
187E: 00          nop
187F: 00          nop
1880: 00          nop
1881: 00          nop
1882: 00          nop
1883: 00          nop
1884: 00          nop
1885: 00          nop
1886: 00          nop
1887: 00          nop
1888: 00          nop
1889: 00          nop
188A: 00          nop
188B: 00          nop
188C: 00          nop
188D: 00          nop
188E: 00          nop
188F: 00          nop
1890: 00          nop
1891: 00          nop
1892: 00          nop
1893: 00          nop
1894: 00          nop
1895: 00          nop
1896: 00          nop
1897: 00          nop
1898: 00          nop
1899: 00          nop
189A: 00          nop
189B: 00          nop
189C: 00          nop
189D: 00          nop
189E: 00          nop
189F: 00          nop
18A0: 00          nop
18A1: 00          nop
18A2: 00          nop
18A3: 00          nop
18A4: 00          nop
18A5: 00          nop
18A6: 00          nop
18A7: 00          nop
18A8: 00          nop
18A9: 00          nop
18AA: 00          nop
18AB: 00          nop
18AC: 00          nop
18AD: 00          nop
18AE: 00          nop
18AF: 00          nop
18B0: 00          nop
18B1: 00          nop
18B2: 00          nop
18B3: 00          nop
18B4: 00          nop
18B5: 00          nop
18B6: 00          nop
18B7: 00          nop
18B8: 00          nop
18B9: 00          nop
18BA: 00          nop
18BB: 00          nop
18BC: 00          nop
18BD: 00          nop
18BE: 00          nop
18BF: 00          nop
18C0: 00          nop
18C1: 00          nop
18C2: 00          nop
18C3: 00          nop
18C4: 00          nop
18C5: 00          nop
18C6: 00          nop
18C7: 00          nop
18C8: 00          nop
18C9: 00          nop
18CA: 00          nop
18CB: 00          nop
18CC: 00          nop
18CD: 00          nop
18CE: 00          nop
18CF: 00          nop
18D0: 00          nop
18D1: 00          nop
18D2: 00          nop
18D3: 00          nop
18D4: 00          nop
18D5: 00          nop
18D6: 00          nop
18D7: 00          nop
18D8: 00          nop
18D9: 00          nop
18DA: 00          nop
18DB: 00          nop
18DC: 00          nop
18DD: 00          nop
18DE: 00          nop
18DF: 00          nop
18E0: 00          nop
18E1: 00          nop
18E2: 00          nop
18E3: 00          nop
18E4: 00          nop
18E5: 00          nop
18E6: 00          nop
18E7: 00          nop
18E8: 00          nop
18E9: 00          nop
18EA: 00          nop
18EB: 00          nop
18EC: 00          nop
18ED: 00          nop
18EE: 00          nop
18EF: 00          nop
18F0: 00          nop
18F1: 00          nop
18F2: 00          nop
18F3: 00          nop
18F4: 00          nop
18F5: 00          nop
18F6: 00          nop
18F7: 00          nop
18F8: 00          nop
18F9: 00          nop
18FA: 00          nop
18FB: 00          nop
18FC: 00          nop
18FD: 00          nop
18FE: 00          nop
18FF: 00          nop
1900: 00          nop
1901: 00          nop
1902: 00          nop
1903: 00          nop
1904: 00          nop
1905: 00          nop
1906: 00          nop
1907: 00          nop
1908: 00          nop
1909: 00          nop
190A: 00          nop
190B: 00          nop
190C: 00          nop
190D: 00          nop
190E: 00          nop
190F: 00          nop
1910: 00          nop
1911: 00          nop
1912: 00          nop
1913: 00          nop
1914: 00          nop
1915: 00          nop
1916: 00          nop
1917: 00          nop
1918: 00          nop
1919: 00          nop
191A: 00          nop
191B: 00          nop
191C: 00          nop
191D: 00          nop
191E: 00          nop
191F: 00          nop
1920: 00          nop
1921: 00          nop
1922: 00          nop
1923: 00          nop
1924: 00          nop
1925: 00          nop
1926: 00          nop
1927: 00          nop
1928: 00          nop
1929: 00          nop
192A: 00          nop
192B: 00          nop
192C: 00          nop
192D: 00          nop
192E: 00          nop
192F: 00          nop
1930: 00          nop
1931: 00          nop
1932: 00          nop
1933: 00          nop
1934: 00          nop
1935: 00          nop
1936: 00          nop
1937: 00          nop
1938: 00          nop
1939: 00          nop
193A: 00          nop
193B: 00          nop
193C: 00          nop
193D: 00          nop
193E: 00          nop
193F: 00          nop
1940: 00          nop
1941: 00          nop
1942: 00          nop
1943: 00          nop
1944: 00          nop
1945: 00          nop
1946: 00          nop
1947: 00          nop
1948: 00          nop
1949: 00          nop
194A: 00          nop
194B: 00          nop
194C: 00          nop
194D: 00          nop
194E: 00          nop
194F: 00          nop
1950: 00          nop
1951: 00          nop
1952: 00          nop
1953: 00          nop
1954: 00          nop
1955: 00          nop
1956: 00          nop
1957: 00          nop
1958: 00          nop
1959: 00          nop
195A: 00          nop
195B: 00          nop
195C: 00          nop
195D: 00          nop
195E: 00          nop
195F: 00          nop
1960: 00          nop
1961: 00          nop
1962: 00          nop
1963: 00          nop
1964: 00          nop
1965: 00          nop
1966: 00          nop
1967: 00          nop
1968: 00          nop
1969: 00          nop
196A: 00          nop
196B: 00          nop
196C: 00          nop
196D: 00          nop
196E: 00          nop
196F: 00          nop
1970: 00          nop
1971: 00          nop
1972: 00          nop
1973: 00          nop
1974: 00          nop
1975: 00          nop
1976: 00          nop
1977: 00          nop
1978: 00          nop
1979: 00          nop
197A: 00          nop
197B: 00          nop
197C: 00          nop
197D: 00          nop
197E: 00          nop
197F: 00          nop
1980: 00          nop
1981: 00          nop
1982: 00          nop
1983: 00          nop
1984: 00          nop
1985: 00          nop
1986: 00          nop
1987: 00          nop
1988: 00          nop
1989: 00          nop
198A: 00          nop
198B: 00          nop
198C: 00          nop
198D: 00          nop
198E: 00          nop
198F: 00          nop
1990: 00          nop
1991: 00          nop
1992: 00          nop
1993: 00          nop
1994: 00          nop
1995: 00          nop
1996: 00          nop
1997: 00          nop
1998: 00          nop
1999: 00          nop
199A: 00          nop
199B: 00          nop
199C: 00          nop
199D: 00          nop
199E: 00          nop
199F: 00          nop
19A0: 00          nop
19A1: 00          nop
19A2: 00          nop
19A3: 00          nop
19A4: 00          nop
19A5: 00          nop
19A6: 00          nop
19A7: 00          nop
19A8: 00          nop
19A9: 00          nop
19AA: 00          nop
19AB: 00          nop
19AC: 00          nop
19AD: 00          nop
19AE: 00          nop
19AF: 00          nop
19B0: 00          nop
19B1: 00          nop
19B2: 00          nop
19B3: 00          nop
19B4: 00          nop
19B5: 00          nop
19B6: 00          nop
19B7: 00          nop
19B8: 00          nop
19B9: 00          nop
19BA: 00          nop
19BB: 00          nop
19BC: 00          nop
19BD: 00          nop
19BE: 00          nop
19BF: 00          nop
19C0: 00          nop
19C1: 00          nop
19C2: 00          nop
19C3: 00          nop
19C4: 00          nop
19C5: 00          nop
19C6: 00          nop
19C7: 00          nop
19C8: 00          nop
19C9: 00          nop
19CA: 00          nop
19CB: 00          nop
19CC: 00          nop
19CD: 00          nop
19CE: 00          nop
19CF: 00          nop
19D0: 00          nop
19D1: 00          nop
19D2: 00          nop
19D3: 00          nop
19D4: 00          nop
19D5: 00          nop
19D6: 00          nop
19D7: 00          nop
19D8: 00          nop
19D9: 00          nop
19DA: 00          nop
19DB: 00          nop
19DC: 00          nop
19DD: 00          nop
19DE: 00          nop
19DF: 00          nop
19E0: 00          nop
19E1: 00          nop
19E2: 00          nop
19E3: 00          nop
19E4: 00          nop
19E5: 00          nop
19E6: 00          nop
19E7: 00          nop
19E8: 00          nop
19E9: 00          nop
19EA: 00          nop
19EB: 00          nop
19EC: 00          nop
19ED: 00          nop
19EE: 00          nop
19EF: 00          nop
19F0: 00          nop
19F1: 00          nop
19F2: 00          nop
19F3: 00          nop
19F4: 00          nop
19F5: 00          nop
19F6: 00          nop
19F7: 00          nop
19F8: 00          nop
19F9: 00          nop
19FA: 00          nop
19FB: 00          nop
19FC: 00          nop
19FD: 00          nop
19FE: 00          nop
19FF: 00          nop
1A00: 00          nop
1A01: 00          nop
1A02: 00          nop
1A03: 00          nop
1A04: 00          nop
1A05: 00          nop
1A06: 00          nop
1A07: 00          nop
1A08: 00          nop
1A09: 00          nop
1A0A: 00          nop
1A0B: 00          nop
1A0C: 00          nop
1A0D: 00          nop
1A0E: 00          nop
1A0F: 00          nop
1A10: 00          nop
1A11: 00          nop
1A12: 00          nop
1A13: 00          nop
1A14: 00          nop
1A15: 00          nop
1A16: 00          nop
1A17: 00          nop
1A18: 00          nop
1A19: 00          nop
1A1A: 00          nop
1A1B: 00          nop
1A1C: 00          nop
1A1D: 00          nop
1A1E: 00          nop
1A1F: 00          nop
1A20: 00          nop
1A21: 00          nop
1A22: 00          nop
1A23: 00          nop
1A24: 00          nop
1A25: 00          nop
1A26: 00          nop
1A27: 00          nop
1A28: 00          nop
1A29: 00          nop
1A2A: 00          nop
1A2B: 00          nop
1A2C: 00          nop
1A2D: 00          nop
1A2E: 00          nop
1A2F: 00          nop
1A30: 00          nop
1A31: 00          nop
1A32: 00          nop
1A33: 00          nop
1A34: 00          nop
1A35: 00          nop
1A36: 00          nop
1A37: 00          nop
1A38: 00          nop
1A39: 00          nop
1A3A: 00          nop
1A3B: 00          nop
1A3C: 00          nop
1A3D: 00          nop
1A3E: 00          nop
1A3F: 00          nop
1A40: 00          nop
1A41: 00          nop
1A42: 00          nop
1A43: 00          nop
1A44: 00          nop
1A45: 00          nop
1A46: 00          nop
1A47: 00          nop
1A48: 00          nop
1A49: 00          nop
1A4A: 00          nop
1A4B: 00          nop
1A4C: 00          nop
1A4D: 00          nop
1A4E: 00          nop
1A4F: 00          nop
1A50: 00          nop
1A51: 00          nop
1A52: 00          nop
1A53: 00          nop
1A54: 00          nop
1A55: 00          nop
1A56: 00          nop
1A57: 00          nop
1A58: 00          nop
1A59: 00          nop
1A5A: 00          nop
1A5B: 00          nop
1A5C: 00          nop
1A5D: 00          nop
1A5E: 00          nop
1A5F: 00          nop
1A60: 00          nop
1A61: 00          nop
1A62: 00          nop
1A63: 00          nop
1A64: 00          nop
1A65: 00          nop
1A66: 00          nop
1A67: 00          nop
1A68: 00          nop
1A69: 00          nop
1A6A: 00          nop
1A6B: 00          nop
1A6C: 00          nop
1A6D: 00          nop
1A6E: 00          nop
1A6F: 00          nop
1A70: 00          nop
1A71: 00          nop
1A72: 00          nop
1A73: 00          nop
1A74: 00          nop
1A75: 00          nop
1A76: 00          nop
1A77: 00          nop
1A78: 00          nop
1A79: 00          nop
1A7A: 00          nop
1A7B: 00          nop
1A7C: 00          nop
1A7D: 00          nop
1A7E: 00          nop
1A7F: 00          nop
1A80: 00          nop
1A81: 00          nop
1A82: 00          nop
1A83: 00          nop
1A84: 00          nop
1A85: 00          nop
1A86: 00          nop
1A87: 00          nop
1A88: 00          nop
1A89: 00          nop
1A8A: 00          nop
1A8B: 00          nop
1A8C: 00          nop
1A8D: 00          nop
1A8E: 00          nop
1A8F: 00          nop
1A90: 00          nop
1A91: 00          nop
1A92: 00          nop
1A93: 00          nop
1A94: 00          nop
1A95: 00          nop
1A96: 00          nop
1A97: 00          nop
1A98: 00          nop
1A99: 00          nop
1A9A: 00          nop
1A9B: 00          nop
1A9C: 00          nop
1A9D: 00          nop
1A9E: 00          nop
1A9F: 00          nop
1AA0: 00          nop
1AA1: 00          nop
1AA2: 00          nop
1AA3: 00          nop
1AA4: 00          nop
1AA5: 00          nop
1AA6: 00          nop
1AA7: 00          nop
1AA8: 00          nop
1AA9: 00          nop
1AAA: 00          nop
1AAB: 00          nop
1AAC: 00          nop
1AAD: 00          nop
1AAE: 00          nop
1AAF: 00          nop
1AB0: 00          nop
1AB1: 00          nop
1AB2: 00          nop
1AB3: 00          nop
1AB4: 00          nop
1AB5: 00          nop
1AB6: 00          nop
1AB7: 00          nop
1AB8: 00          nop
1AB9: 00          nop
1ABA: 00          nop
1ABB: 00          nop
1ABC: 00          nop
1ABD: 00          nop
1ABE: 00          nop
1ABF: 00          nop
1AC0: 00          nop
1AC1: 00          nop
1AC2: 00          nop
1AC3: 00          nop
1AC4: 00          nop
1AC5: 00          nop
1AC6: 00          nop
1AC7: 00          nop
1AC8: 00          nop
1AC9: 00          nop
1ACA: 00          nop
1ACB: 00          nop
1ACC: 00          nop
1ACD: 00          nop
1ACE: 00          nop
1ACF: 00          nop
1AD0: 00          nop
1AD1: 00          nop
1AD2: 00          nop
1AD3: 00          nop
1AD4: 00          nop
1AD5: 00          nop
1AD6: 00          nop
1AD7: 00          nop
1AD8: 00          nop
1AD9: 00          nop
1ADA: 00          nop
1ADB: 00          nop
1ADC: 00          nop
1ADD: 00          nop
1ADE: 00          nop
1ADF: 00          nop
1AE0: 00          nop
1AE1: 00          nop
1AE2: 00          nop
1AE3: 00          nop
1AE4: 00          nop
1AE5: 00          nop
1AE6: 00          nop
1AE7: 00          nop
1AE8: 00          nop
1AE9: 00          nop
1AEA: 00          nop
1AEB: 00          nop
1AEC: 00          nop
1AED: 00          nop
1AEE: 00          nop
1AEF: 00          nop
1AF0: 00          nop
1AF1: 00          nop
1AF2: 00          nop
1AF3: 00          nop
1AF4: 00          nop
1AF5: 00          nop
1AF6: 00          nop
1AF7: 00          nop
1AF8: 00          nop
1AF9: 00          nop
1AFA: 00          nop
1AFB: 00          nop
1AFC: 00          nop
1AFD: 00          nop
1AFE: 00          nop
1AFF: 00          nop
1B00: 00          nop
1B01: 00          nop
1B02: 00          nop
1B03: 00          nop
1B04: 00          nop
1B05: 00          nop
1B06: 00          nop
1B07: 00          nop
1B08: 00          nop
1B09: 00          nop
1B0A: 00          nop
1B0B: 00          nop
1B0C: 00          nop
1B0D: 00          nop
1B0E: 00          nop
1B0F: 00          nop
1B10: 00          nop
1B11: 00          nop
1B12: 00          nop
1B13: 00          nop
1B14: 00          nop
1B15: 00          nop
1B16: 00          nop
1B17: 00          nop
1B18: 00          nop
1B19: 00          nop
1B1A: 00          nop
1B1B: 00          nop
1B1C: 00          nop
1B1D: 00          nop
1B1E: 00          nop
1B1F: 00          nop
1B20: 00          nop
1B21: 00          nop
1B22: 00          nop
1B23: 00          nop
1B24: 00          nop
1B25: 00          nop
1B26: 00          nop
1B27: 00          nop
1B28: 00          nop
1B29: 00          nop
1B2A: 00          nop
1B2B: 00          nop
1B2C: 00          nop
1B2D: 00          nop
1B2E: 00          nop
1B2F: 00          nop
1B30: 00          nop
1B31: 00          nop
1B32: 00          nop
1B33: 00          nop
1B34: 00          nop
1B35: 00          nop
1B36: 00          nop
1B37: 00          nop
1B38: 00          nop
1B39: 00          nop
1B3A: 00          nop
1B3B: 00          nop
1B3C: 00          nop
1B3D: 00          nop
1B3E: 00          nop
1B3F: 00          nop
1B40: 00          nop
1B41: 00          nop
1B42: 00          nop
1B43: 00          nop
1B44: 00          nop
1B45: 00          nop
1B46: 00          nop
1B47: 00          nop
1B48: 00          nop
1B49: 00          nop
1B4A: 00          nop
1B4B: 00          nop
1B4C: 00          nop
1B4D: 00          nop
1B4E: 00          nop
1B4F: 00          nop
1B50: 00          nop
1B51: 00          nop
1B52: 00          nop
1B53: 00          nop
1B54: 00          nop
1B55: 00          nop
1B56: 00          nop
1B57: 00          nop
1B58: 00          nop
1B59: 00          nop
1B5A: 00          nop
1B5B: 00          nop
1B5C: 00          nop
1B5D: 00          nop
1B5E: 00          nop
1B5F: 00          nop
1B60: 00          nop
1B61: 00          nop
1B62: 00          nop
1B63: 00          nop
1B64: 00          nop
1B65: 00          nop
1B66: 00          nop
1B67: 00          nop
1B68: 00          nop
1B69: 00          nop
1B6A: 00          nop
1B6B: 00          nop
1B6C: 00          nop
1B6D: 00          nop
1B6E: 00          nop
1B6F: 00          nop
1B70: 00          nop
1B71: 00          nop
1B72: 00          nop
1B73: 00          nop
1B74: 00          nop
1B75: 00          nop
1B76: 00          nop
1B77: 00          nop
1B78: 00          nop
1B79: 00          nop
1B7A: 00          nop
1B7B: 00          nop
1B7C: 00          nop
1B7D: 00          nop
1B7E: 00          nop
1B7F: 00          nop
1B80: 00          nop
1B81: 00          nop
1B82: 00          nop
1B83: 00          nop
1B84: 00          nop
1B85: 00          nop
1B86: 00          nop
1B87: 00          nop
1B88: 00          nop
1B89: 00          nop
1B8A: 00          nop
1B8B: 00          nop
1B8C: 00          nop
1B8D: 00          nop
1B8E: 00          nop
1B8F: 00          nop
1B90: 00          nop
1B91: 00          nop
1B92: 00          nop
1B93: 00          nop
1B94: 00          nop
1B95: 00          nop
1B96: 00          nop
1B97: 00          nop
1B98: 00          nop
1B99: 00          nop
1B9A: 00          nop
1B9B: 00          nop
1B9C: 00          nop
1B9D: 00          nop
1B9E: 00          nop
1B9F: 00          nop
1BA0: 00          nop
1BA1: 00          nop
1BA2: 00          nop
1BA3: 00          nop
1BA4: 00          nop
1BA5: 00          nop
1BA6: 00          nop
1BA7: 00          nop
1BA8: 00          nop
1BA9: 00          nop
1BAA: 00          nop
1BAB: 00          nop
1BAC: 00          nop
1BAD: 00          nop
1BAE: 00          nop
1BAF: 00          nop
1BB0: 00          nop
1BB1: 00          nop
1BB2: 00          nop
1BB3: 00          nop
1BB4: 00          nop
1BB5: 00          nop
1BB6: 00          nop
1BB7: 00          nop
1BB8: 00          nop
1BB9: 00          nop
1BBA: 00          nop
1BBB: 00          nop
1BBC: 00          nop
1BBD: 00          nop
1BBE: 00          nop
1BBF: 00          nop
1BC0: 00          nop
1BC1: 00          nop
1BC2: 00          nop
1BC3: 00          nop
1BC4: 00          nop
1BC5: 00          nop
1BC6: 00          nop
1BC7: 00          nop
1BC8: 00          nop
1BC9: 00          nop
1BCA: 00          nop
1BCB: 00          nop
1BCC: 00          nop
1BCD: 00          nop
1BCE: 00          nop
1BCF: 00          nop
1BD0: 00          nop
1BD1: 00          nop
1BD2: 00          nop
1BD3: 00          nop
1BD4: 00          nop
1BD5: 00          nop
1BD6: 00          nop
1BD7: 00          nop
1BD8: 00          nop
1BD9: 00          nop
1BDA: 00          nop
1BDB: 00          nop
1BDC: 00          nop
1BDD: 00          nop
1BDE: 00          nop
1BDF: 00          nop
1BE0: 00          nop
1BE1: 00          nop
1BE2: 00          nop
1BE3: 00          nop
1BE4: 00          nop
1BE5: 00          nop
1BE6: 00          nop
1BE7: 00          nop
1BE8: 00          nop
1BE9: 00          nop
1BEA: 00          nop
1BEB: 00          nop
1BEC: 00          nop
1BED: 00          nop
1BEE: 00          nop
1BEF: 00          nop
1BF0: 00          nop
1BF1: 00          nop
1BF2: 00          nop
1BF3: 00          nop
1BF4: 00          nop
1BF5: 00          nop
1BF6: 00          nop
1BF7: 00          nop
1BF8: 00          nop
1BF9: 00          nop
1BFA: 00          nop
1BFB: 00          nop
1BFC: 00          nop
1BFD: 00          nop
1BFE: 00          nop
1BFF: 00          nop
1C00: 00          nop
1C01: 00          nop
1C02: 00          nop
1C03: 00          nop
1C04: 00          nop
1C05: 00          nop
1C06: 00          nop
1C07: 00          nop
1C08: 00          nop
1C09: 00          nop
1C0A: 00          nop
1C0B: 00          nop
1C0C: 00          nop
1C0D: 00          nop
1C0E: 00          nop
1C0F: 00          nop
1C10: 00          nop
1C11: 00          nop
1C12: 00          nop
1C13: 00          nop
1C14: 00          nop
1C15: 00          nop
1C16: 00          nop
1C17: 00          nop
1C18: 00          nop
1C19: 00          nop
1C1A: 00          nop
1C1B: 00          nop
1C1C: 00          nop
1C1D: 00          nop
1C1E: 00          nop
1C1F: 00          nop
1C20: 00          nop
1C21: 00          nop
1C22: 00          nop
1C23: 00          nop
1C24: 00          nop
1C25: 00          nop
1C26: 00          nop
1C27: 00          nop
1C28: 00          nop
1C29: 00          nop
1C2A: 00          nop
1C2B: 00          nop
1C2C: 00          nop
1C2D: 00          nop
1C2E: 00          nop
1C2F: 00          nop
1C30: 00          nop
1C31: 00          nop
1C32: 00          nop
1C33: 00          nop
1C34: 00          nop
1C35: 00          nop
1C36: 00          nop
1C37: 00          nop
1C38: 00          nop
1C39: 00          nop
1C3A: 00          nop
1C3B: 00          nop
1C3C: 00          nop
1C3D: 00          nop
1C3E: 00          nop
1C3F: 00          nop
1C40: 00          nop
1C41: 00          nop
1C42: 00          nop
1C43: 00          nop
1C44: 00          nop
1C45: 00          nop
1C46: 00          nop
1C47: 00          nop
1C48: 00          nop
1C49: 00          nop
1C4A: 00          nop
1C4B: 00          nop
1C4C: 00          nop
1C4D: 00          nop
1C4E: 00          nop
1C4F: 00          nop
1C50: 00          nop
1C51: 00          nop
1C52: 00          nop
1C53: 00          nop
1C54: 00          nop
1C55: 00          nop
1C56: 00          nop
1C57: 00          nop
1C58: 00          nop
1C59: 00          nop
1C5A: 00          nop
1C5B: 00          nop
1C5C: 00          nop
1C5D: 00          nop
1C5E: 00          nop
1C5F: 00          nop
1C60: 00          nop
1C61: 00          nop
1C62: 00          nop
1C63: 00          nop
1C64: 00          nop
1C65: 00          nop
1C66: 00          nop
1C67: 00          nop
1C68: 00          nop
1C69: 00          nop
1C6A: 00          nop
1C6B: 00          nop
1C6C: 00          nop
1C6D: 00          nop
1C6E: 00          nop
1C6F: 00          nop
1C70: 00          nop
1C71: 00          nop
1C72: 00          nop
1C73: 00          nop
1C74: 00          nop
1C75: 00          nop
1C76: 00          nop
1C77: 00          nop
1C78: 00          nop
1C79: 00          nop
1C7A: 00          nop
1C7B: 00          nop
1C7C: 00          nop
1C7D: 00          nop
1C7E: 00          nop
1C7F: 00          nop
1C80: 00          nop
1C81: 00          nop
1C82: 00          nop
1C83: 00          nop
1C84: 00          nop
1C85: 00          nop
1C86: 00          nop
1C87: 00          nop
1C88: 00          nop
1C89: 00          nop
1C8A: 00          nop
1C8B: 00          nop
1C8C: 00          nop
1C8D: 00          nop
1C8E: 00          nop
1C8F: 00          nop
1C90: 00          nop
1C91: 00          nop
1C92: 00          nop
1C93: 00          nop
1C94: 00          nop
1C95: 00          nop
1C96: 00          nop
1C97: 00          nop
1C98: 00          nop
1C99: 00          nop
1C9A: 00          nop
1C9B: 00          nop
1C9C: 00          nop
1C9D: 00          nop
1C9E: 00          nop
1C9F: 00          nop
1CA0: 00          nop
1CA1: 00          nop
1CA2: 00          nop
1CA3: 00          nop
1CA4: 00          nop
1CA5: 00          nop
1CA6: 00          nop
1CA7: 00          nop
1CA8: 00          nop
1CA9: 00          nop
1CAA: 00          nop
1CAB: 00          nop
1CAC: 00          nop
1CAD: 00          nop
1CAE: 00          nop
1CAF: 00          nop
1CB0: 00          nop
1CB1: 00          nop
1CB2: 00          nop
1CB3: 00          nop
1CB4: 00          nop
1CB5: 00          nop
1CB6: 00          nop
1CB7: 00          nop
1CB8: 00          nop
1CB9: 00          nop
1CBA: 00          nop
1CBB: 00          nop
1CBC: 00          nop
1CBD: 00          nop
1CBE: 00          nop
1CBF: 00          nop
1CC0: 00          nop
1CC1: 00          nop
1CC2: 00          nop
1CC3: 00          nop
1CC4: 00          nop
1CC5: 00          nop
1CC6: 00          nop
1CC7: 00          nop
1CC8: 00          nop
1CC9: 00          nop
1CCA: 00          nop
1CCB: 00          nop
1CCC: 00          nop
1CCD: 00          nop
1CCE: 00          nop
1CCF: 00          nop
1CD0: 00          nop
1CD1: 00          nop
1CD2: 00          nop
1CD3: 00          nop
1CD4: 00          nop
1CD5: 00          nop
1CD6: 00          nop
1CD7: 00          nop
1CD8: 00          nop
1CD9: 00          nop
1CDA: 00          nop
1CDB: 00          nop
1CDC: 00          nop
1CDD: 00          nop
1CDE: 00          nop
1CDF: 00          nop
1CE0: 00          nop
1CE1: 00          nop
1CE2: 00          nop
1CE3: 00          nop
1CE4: 00          nop
1CE5: 00          nop
1CE6: 00          nop
1CE7: 00          nop
1CE8: 00          nop
1CE9: 00          nop
1CEA: 00          nop
1CEB: 00          nop
1CEC: 00          nop
1CED: 00          nop
1CEE: 00          nop
1CEF: 00          nop
1CF0: 00          nop
1CF1: 00          nop
1CF2: 00          nop
1CF3: 00          nop
1CF4: 00          nop
1CF5: 00          nop
1CF6: 00          nop
1CF7: 00          nop
1CF8: 00          nop
1CF9: 00          nop
1CFA: 00          nop
1CFB: 00          nop
1CFC: 00          nop
1CFD: 00          nop
1CFE: 00          nop
1CFF: 00          nop
1D00: 00          nop
1D01: 00          nop
1D02: 00          nop
1D03: 00          nop
1D04: 00          nop
1D05: 00          nop
1D06: 00          nop
1D07: 00          nop
1D08: 00          nop
1D09: 00          nop
1D0A: 00          nop
1D0B: 00          nop
1D0C: 00          nop
1D0D: 00          nop
1D0E: 00          nop
1D0F: 00          nop
1D10: 00          nop
1D11: 00          nop
1D12: 00          nop
1D13: 00          nop
1D14: 00          nop
1D15: 00          nop
1D16: 00          nop
1D17: 00          nop
1D18: 00          nop
1D19: 00          nop
1D1A: 00          nop
1D1B: 00          nop
1D1C: 00          nop
1D1D: 00          nop
1D1E: 00          nop
1D1F: 00          nop
1D20: 00          nop
1D21: 00          nop
1D22: 00          nop
1D23: 00          nop
1D24: 00          nop
1D25: 00          nop
1D26: 00          nop
1D27: 00          nop
1D28: 00          nop
1D29: 00          nop
1D2A: 00          nop
1D2B: 00          nop
1D2C: 00          nop
1D2D: 00          nop
1D2E: 00          nop
1D2F: 00          nop
1D30: 00          nop
1D31: 00          nop
1D32: 00          nop
1D33: 00          nop
1D34: 00          nop
1D35: 00          nop
1D36: 00          nop
1D37: 00          nop
1D38: 00          nop
1D39: 00          nop
1D3A: 00          nop
1D3B: 00          nop
1D3C: 00          nop
1D3D: 00          nop
1D3E: 00          nop
1D3F: 00          nop
1D40: 00          nop
1D41: 00          nop
1D42: 00          nop
1D43: 00          nop
1D44: 00          nop
1D45: 00          nop
1D46: 00          nop
1D47: 00          nop
1D48: 00          nop
1D49: 00          nop
1D4A: 00          nop
1D4B: 00          nop
1D4C: 00          nop
1D4D: 00          nop
1D4E: 00          nop
1D4F: 00          nop
1D50: 00          nop
1D51: 00          nop
1D52: 00          nop
1D53: 00          nop
1D54: 00          nop
1D55: 00          nop
1D56: 00          nop
1D57: 00          nop
1D58: 00          nop
1D59: 00          nop
1D5A: 00          nop
1D5B: 00          nop
1D5C: 00          nop
1D5D: 00          nop
1D5E: 00          nop
1D5F: 00          nop
1D60: 00          nop
1D61: 00          nop
1D62: 00          nop
1D63: 00          nop
1D64: 00          nop
1D65: 00          nop
1D66: 00          nop
1D67: 00          nop
1D68: 00          nop
1D69: 00          nop
1D6A: 00          nop
1D6B: 00          nop
1D6C: 00          nop
1D6D: 00          nop
1D6E: 00          nop
1D6F: 00          nop
1D70: 00          nop
1D71: 00          nop
1D72: 00          nop
1D73: 00          nop
1D74: 00          nop
1D75: 00          nop
1D76: 00          nop
1D77: 00          nop
1D78: 00          nop
1D79: 00          nop
1D7A: 00          nop
1D7B: 00          nop
1D7C: 00          nop
1D7D: 00          nop
1D7E: 00          nop
1D7F: 00          nop
1D80: 00          nop
1D81: 00          nop
1D82: 00          nop
1D83: 00          nop
1D84: 00          nop
1D85: 00          nop
1D86: 00          nop
1D87: 00          nop
1D88: 00          nop
1D89: 00          nop
1D8A: 00          nop
1D8B: 00          nop
1D8C: 00          nop
1D8D: 00          nop
1D8E: 00          nop
1D8F: 00          nop
1D90: 00          nop
1D91: 00          nop
1D92: 00          nop
1D93: 00          nop
1D94: 00          nop
1D95: 00          nop
1D96: 00          nop
1D97: 00          nop
1D98: 00          nop
1D99: 00          nop
1D9A: 00          nop
1D9B: 00          nop
1D9C: 00          nop
1D9D: 00          nop
1D9E: 00          nop
1D9F: 00          nop
1DA0: 00          nop
1DA1: 00          nop
1DA2: 00          nop
1DA3: 00          nop
1DA4: 00          nop
1DA5: 00          nop
1DA6: 00          nop
1DA7: 00          nop
1DA8: 00          nop
1DA9: 00          nop
1DAA: 00          nop
1DAB: 00          nop
1DAC: 00          nop
1DAD: 00          nop
1DAE: 00          nop
1DAF: 00          nop
1DB0: 00          nop
1DB1: 00          nop
1DB2: 00          nop
1DB3: 00          nop
1DB4: 00          nop
1DB5: 00          nop
1DB6: 00          nop
1DB7: 00          nop
1DB8: 00          nop
1DB9: 00          nop
1DBA: 00          nop
1DBB: 00          nop
1DBC: 00          nop
1DBD: 00          nop
1DBE: 00          nop
1DBF: 00          nop
1DC0: 00          nop
1DC1: 00          nop
1DC2: 00          nop
1DC3: 00          nop
1DC4: 00          nop
1DC5: 00          nop
1DC6: 00          nop
1DC7: 00          nop
1DC8: 00          nop
1DC9: 00          nop
1DCA: 00          nop
1DCB: 00          nop
1DCC: 00          nop
1DCD: 00          nop
1DCE: 00          nop
1DCF: 00          nop
1DD0: 00          nop
1DD1: 00          nop
1DD2: 00          nop
1DD3: 00          nop
1DD4: 00          nop
1DD5: 00          nop
1DD6: 00          nop
1DD7: 00          nop
1DD8: 00          nop
1DD9: 00          nop
1DDA: 00          nop
1DDB: 00          nop
1DDC: 00          nop
1DDD: 00          nop
1DDE: 00          nop
1DDF: 00          nop
1DE0: 00          nop
1DE1: 00          nop
1DE2: 00          nop
1DE3: 00          nop
1DE4: 00          nop
1DE5: 00          nop
1DE6: 00          nop
1DE7: 00          nop
1DE8: 00          nop
1DE9: 00          nop
1DEA: 00          nop
1DEB: 00          nop
1DEC: 00          nop
1DED: 00          nop
1DEE: 00          nop
1DEF: 00          nop
1DF0: 00          nop
1DF1: 00          nop
1DF2: 00          nop
1DF3: 00          nop
1DF4: 00          nop
1DF5: 00          nop
1DF6: 00          nop
1DF7: 00          nop
1DF8: 00          nop
1DF9: 00          nop
1DFA: 00          nop
1DFB: 00          nop
1DFC: 00          nop
1DFD: 00          nop
1DFE: 00          nop
1DFF: 00          nop
1E00: 00          nop
1E01: 00          nop
1E02: 00          nop
1E03: 00          nop
1E04: 00          nop
1E05: 00          nop
1E06: 00          nop
1E07: 00          nop
1E08: 00          nop
1E09: 00          nop
1E0A: 00          nop
1E0B: 00          nop
1E0C: 00          nop
1E0D: 00          nop
1E0E: 00          nop
1E0F: 00          nop
1E10: 00          nop
1E11: 00          nop
1E12: 00          nop
1E13: 00          nop
1E14: 00          nop
1E15: 00          nop
1E16: 00          nop
1E17: 00          nop
1E18: 00          nop
1E19: 00          nop
1E1A: 00          nop
1E1B: 00          nop
1E1C: 00          nop
1E1D: 00          nop
1E1E: 00          nop
1E1F: 00          nop
1E20: 00          nop
1E21: 00          nop
1E22: 00          nop
1E23: 00          nop
1E24: 00          nop
1E25: 00          nop
1E26: 00          nop
1E27: 00          nop
1E28: 00          nop
1E29: 00          nop
1E2A: 00          nop
1E2B: 00          nop
1E2C: 00          nop
1E2D: 00          nop
1E2E: 00          nop
1E2F: 00          nop
1E30: 00          nop
1E31: 00          nop
1E32: 00          nop
1E33: 00          nop
1E34: 00          nop
1E35: 00          nop
1E36: 00          nop
1E37: 00          nop
1E38: 00          nop
1E39: 00          nop
1E3A: 00          nop
1E3B: 00          nop
1E3C: 00          nop
1E3D: 00          nop
1E3E: 00          nop
1E3F: 00          nop
1E40: 00          nop
1E41: 00          nop
1E42: 00          nop
1E43: 00          nop
1E44: 00          nop
1E45: 00          nop
1E46: 00          nop
1E47: 00          nop
1E48: 00          nop
1E49: 00          nop
1E4A: 00          nop
1E4B: 00          nop
1E4C: 00          nop
1E4D: 00          nop
1E4E: 00          nop
1E4F: 00          nop
1E50: 00          nop
1E51: 00          nop
1E52: 00          nop
1E53: 00          nop
1E54: 00          nop
1E55: 00          nop
1E56: 00          nop
1E57: 00          nop
1E58: 00          nop
1E59: 00          nop
1E5A: 00          nop
1E5B: 00          nop
1E5C: 00          nop
1E5D: 00          nop
1E5E: 00          nop
1E5F: 00          nop
1E60: 00          nop
1E61: 00          nop
1E62: 00          nop
1E63: 00          nop
1E64: 00          nop
1E65: 00          nop
1E66: 00          nop
1E67: 00          nop
1E68: 00          nop
1E69: 00          nop
1E6A: 00          nop
1E6B: 00          nop
1E6C: 00          nop
1E6D: 00          nop
1E6E: 00          nop
1E6F: 00          nop
1E70: 00          nop
1E71: 00          nop
1E72: 00          nop
1E73: 00          nop
1E74: 00          nop
1E75: 00          nop
1E76: 00          nop
1E77: 00          nop
1E78: 00          nop
1E79: 00          nop
1E7A: 00          nop
1E7B: 00          nop
1E7C: 00          nop
1E7D: 00          nop
1E7E: 00          nop
1E7F: 00          nop
1E80: 00          nop
1E81: 00          nop
1E82: 00          nop
1E83: 00          nop
1E84: 00          nop
1E85: 00          nop
1E86: 00          nop
1E87: 00          nop
1E88: 00          nop
1E89: 00          nop
1E8A: 00          nop
1E8B: 00          nop
1E8C: 00          nop
1E8D: 00          nop
1E8E: 00          nop
1E8F: 00          nop
1E90: 00          nop
1E91: 00          nop
1E92: 00          nop
1E93: 00          nop
1E94: 00          nop
1E95: 00          nop
1E96: 00          nop
1E97: 00          nop
1E98: 00          nop
1E99: 00          nop
1E9A: 00          nop
1E9B: 00          nop
1E9C: 00          nop
1E9D: 00          nop
1E9E: 00          nop
1E9F: 00          nop
1EA0: 00          nop
1EA1: 00          nop
1EA2: 00          nop
1EA3: 00          nop
1EA4: 00          nop
1EA5: 00          nop
1EA6: 00          nop
1EA7: 00          nop
1EA8: 00          nop
1EA9: 00          nop
1EAA: 00          nop
1EAB: 00          nop
1EAC: 00          nop
1EAD: 00          nop
1EAE: 00          nop
1EAF: 00          nop
1EB0: 00          nop
1EB1: 00          nop
1EB2: 00          nop
1EB3: 00          nop
1EB4: 00          nop
1EB5: 00          nop
1EB6: 00          nop
1EB7: 00          nop
1EB8: 00          nop
1EB9: 00          nop
1EBA: 00          nop
1EBB: 00          nop
1EBC: 00          nop
1EBD: 00          nop
1EBE: 00          nop
1EBF: 00          nop
1EC0: 00          nop
1EC1: 00          nop
1EC2: 00          nop
1EC3: 00          nop
1EC4: 00          nop
1EC5: 00          nop
1EC6: 00          nop
1EC7: 00          nop
1EC8: 00          nop
1EC9: 00          nop
1ECA: 00          nop
1ECB: 00          nop
1ECC: 00          nop
1ECD: 00          nop
1ECE: 00          nop
1ECF: 00          nop
1ED0: 00          nop
1ED1: 00          nop
1ED2: 00          nop
1ED3: 00          nop
1ED4: 00          nop
1ED5: 00          nop
1ED6: 00          nop
1ED7: 00          nop
1ED8: 00          nop
1ED9: 00          nop
1EDA: 00          nop
1EDB: 00          nop
1EDC: 00          nop
1EDD: 00          nop
1EDE: 00          nop
1EDF: 00          nop
1EE0: 00          nop
1EE1: 00          nop
1EE2: 00          nop
1EE3: 00          nop
1EE4: 00          nop
1EE5: 00          nop
1EE6: 00          nop
1EE7: 00          nop
1EE8: 00          nop
1EE9: 00          nop
1EEA: 00          nop
1EEB: 00          nop
1EEC: 00          nop
1EED: 00          nop
1EEE: 00          nop
1EEF: 00          nop
1EF0: 00          nop
1EF1: 00          nop
1EF2: 00          nop
1EF3: 00          nop
1EF4: 00          nop
1EF5: 00          nop
1EF6: 00          nop
1EF7: 00          nop
1EF8: 00          nop
1EF9: 00          nop
1EFA: 00          nop
1EFB: 00          nop
1EFC: 00          nop
1EFD: 00          nop
1EFE: 00          nop
1EFF: 00          nop
1F00: 00          nop
1F01: 00          nop
1F02: 00          nop
1F03: 00          nop
1F04: 00          nop
1F05: 00          nop
1F06: 00          nop
1F07: 00          nop
1F08: 00          nop
1F09: 00          nop
1F0A: 00          nop
1F0B: 00          nop
1F0C: 00          nop
1F0D: 00          nop
1F0E: 00          nop
1F0F: 00          nop
1F10: 00          nop
1F11: 00          nop
1F12: 00          nop
1F13: 00          nop
1F14: 00          nop
1F15: 00          nop
1F16: 00          nop
1F17: 00          nop
1F18: 00          nop
1F19: 00          nop
1F1A: 00          nop
1F1B: 00          nop
1F1C: 00          nop
1F1D: 00          nop
1F1E: 00          nop
1F1F: 00          nop
1F20: 00          nop
1F21: 00          nop
1F22: 00          nop
1F23: 00          nop
1F24: 00          nop
1F25: 00          nop
1F26: 00          nop
1F27: 00          nop
1F28: 00          nop
1F29: 00          nop
1F2A: 00          nop
1F2B: 00          nop
1F2C: 00          nop
1F2D: 00          nop
1F2E: 00          nop
1F2F: 00          nop
1F30: 00          nop
1F31: 00          nop
1F32: 00          nop
1F33: 00          nop
1F34: 00          nop
1F35: 00          nop
1F36: 00          nop
1F37: 00          nop
1F38: 00          nop
1F39: 00          nop
1F3A: 00          nop
1F3B: 00          nop
1F3C: 00          nop
1F3D: 00          nop
1F3E: 00          nop
1F3F: 00          nop
1F40: 00          nop
1F41: 00          nop
1F42: 00          nop
1F43: 00          nop
1F44: 00          nop
1F45: 00          nop
1F46: 00          nop
1F47: 00          nop
1F48: 00          nop
1F49: 00          nop
1F4A: 00          nop
1F4B: 00          nop
1F4C: 00          nop
1F4D: 00          nop
1F4E: 00          nop
1F4F: 00          nop
1F50: 00          nop
1F51: 00          nop
1F52: 00          nop
1F53: 00          nop
1F54: 00          nop
1F55: 00          nop
1F56: 00          nop
1F57: 00          nop
1F58: 00          nop
1F59: 00          nop
1F5A: 00          nop
1F5B: 00          nop
1F5C: 00          nop
1F5D: 00          nop
1F5E: 00          nop
1F5F: 00          nop
1F60: 00          nop
1F61: 00          nop
1F62: 00          nop
1F63: 00          nop
1F64: 00          nop
1F65: 00          nop
1F66: 00          nop
1F67: 00          nop
1F68: 00          nop
1F69: 00          nop
1F6A: 00          nop
1F6B: 00          nop
1F6C: 00          nop
1F6D: 00          nop
1F6E: 00          nop
1F6F: 00          nop
1F70: 00          nop
1F71: 00          nop
1F72: 00          nop
1F73: 00          nop
1F74: 00          nop
1F75: 00          nop
1F76: 00          nop
1F77: 00          nop
1F78: 00          nop
1F79: 00          nop
1F7A: 00          nop
1F7B: 00          nop
1F7C: 00          nop
1F7D: 00          nop
1F7E: 00          nop
1F7F: 00          nop
1F80: 00          nop
1F81: 00          nop
1F82: 00          nop
1F83: 00          nop
1F84: 00          nop
1F85: 00          nop
1F86: 00          nop
1F87: 00          nop
1F88: 00          nop
1F89: 00          nop
1F8A: 00          nop
1F8B: 00          nop
1F8C: 00          nop
1F8D: 00          nop
1F8E: 00          nop
1F8F: 00          nop
1F90: 00          nop
1F91: 00          nop
1F92: 00          nop
1F93: 00          nop
1F94: 00          nop
1F95: 00          nop
1F96: 00          nop
1F97: 00          nop
1F98: 00          nop
1F99: 00          nop
1F9A: 00          nop
1F9B: 00          nop
1F9C: 00          nop
1F9D: 00          nop
1F9E: 00          nop
1F9F: 00          nop
1FA0: 00          nop
1FA1: 00          nop
1FA2: 00          nop
1FA3: 00          nop
1FA4: 00          nop
1FA5: 00          nop
1FA6: 00          nop
1FA7: 00          nop
1FA8: 00          nop
1FA9: 00          nop
1FAA: 00          nop
1FAB: 00          nop
1FAC: 00          nop
1FAD: 00          nop
1FAE: 00          nop
1FAF: 00          nop
1FB0: 00          nop
1FB1: 00          nop
1FB2: 00          nop
1FB3: 00          nop
1FB4: 00          nop
1FB5: 00          nop
1FB6: 00          nop
1FB7: 00          nop
1FB8: 00          nop
1FB9: 00          nop
1FBA: 00          nop
1FBB: 00          nop
1FBC: 00          nop
1FBD: 00          nop
1FBE: 00          nop
1FBF: 00          nop
1FC0: 00          nop
1FC1: 00          nop
1FC2: 00          nop
1FC3: 00          nop
1FC4: 00          nop
1FC5: 00          nop
1FC6: 00          nop
1FC7: 00          nop
1FC8: 00          nop
1FC9: 00          nop
1FCA: 00          nop
1FCB: 00          nop
1FCC: 00          nop
1FCD: 00          nop
1FCE: 00          nop
1FCF: 00          nop
1FD0: 00          nop
1FD1: 00          nop
1FD2: 00          nop
1FD3: 00          nop
1FD4: 00          nop
1FD5: 00          nop
1FD6: 00          nop
1FD7: 00          nop
1FD8: 00          nop
1FD9: 00          nop
1FDA: 00          nop
1FDB: 00          nop
1FDC: 00          nop
1FDD: 00          nop
1FDE: 00          nop
1FDF: 00          nop
1FE0: 00          nop
1FE1: 00          nop
1FE2: 00          nop
1FE3: 00          nop
1FE4: 00          nop
1FE5: 00          nop
1FE6: 00          nop
1FE7: 00          nop
1FE8: 00          nop
1FE9: 00          nop
1FEA: 00          nop
1FEB: 00          nop
1FEC: 00          nop
1FED: 00          nop
1FEE: 00          nop
1FEF: 00          nop
1FF0: 00          nop
1FF1: 00          nop
1FF2: 00          nop
1FF3: 00          nop
1FF4: 00          nop
1FF5: 00          nop
1FF6: 00          nop
1FF7: 00          nop
1FF8: 00          nop
1FF9: 00          nop
1FFA: 00          nop
1FFB: 00          nop
1FFC: 00          nop
1FFD: 00          nop
1FFE: 00          nop
1FFF: 00          nop
2000: 00          nop
2001: 00          nop
2002: 00          nop
2003: 00          nop
2004: 00          nop
2005: 00          nop
2006: 00          nop
2007: 00          nop
2008: 00          nop
2009: 00          nop
200A: 00          nop
200B: 00          nop
200C: 00          nop
200D: 00          nop
200E: 00          nop
200F: 00          nop
2010: 00          nop
2011: 00          nop
2012: 00          nop
2013: 00          nop
2014: 00          nop
2015: 00          nop
2016: 00          nop
2017: 00          nop
2018: 00          nop
2019: 00          nop
201A: 00          nop
201B: 00          nop
201C: 00          nop
201D: 00          nop
201E: 00          nop
201F: 00          nop
2020: 00          nop
2021: 00          nop
2022: 00          nop
2023: 00          nop
2024: 00          nop
2025: 00          nop
2026: 00          nop
2027: 00          nop
2028: 00          nop
2029: 00          nop
202A: 00          nop
202B: 00          nop
202C: 00          nop
202D: 00          nop
202E: 00          nop
202F: 00          nop
2030: 00          nop
2031: 00          nop
2032: 00          nop
2033: 00          nop
2034: 00          nop
2035: 00          nop
2036: 00          nop
2037: 00          nop
2038: 00          nop
2039: 00          nop
203A: 00          nop
203B: 00          nop
203C: 00          nop
203D: 00          nop
203E: 00          nop
203F: 00          nop
2040: 00          nop
2041: 00          nop
2042: 00          nop
2043: 00          nop
2044: 00          nop
2045: 00          nop
2046: 00          nop
2047: 00          nop
2048: 00          nop
2049: 00          nop
204A: 00          nop
204B: 00          nop
204C: 00          nop
204D: 00          nop
204E: 00          nop
204F: 00          nop
2050: 00          nop
2051: 00          nop
2052: 00          nop
2053: 00          nop
2054: 00          nop
2055: 00          nop
2056: 00          nop
2057: 00          nop
2058: 00          nop
2059: 00          nop
205A: 00          nop
205B: 00          nop
205C: 00          nop
205D: 00          nop
205E: 00          nop
205F: 00          nop
2060: 00          nop
2061: 00          nop
2062: 00          nop
2063: 00          nop
2064: 00          nop
2065: 00          nop
2066: 00          nop
2067: 00          nop
2068: 00          nop
2069: 00          nop
206A: 00          nop
206B: 00          nop
206C: 00          nop
206D: 00          nop
206E: 00          nop
206F: 00          nop
2070: 00          nop
2071: 00          nop
2072: 00          nop
2073: 00          nop
2074: 00          nop
2075: 00          nop
2076: 00          nop
2077: 00          nop
2078: 00          nop
2079: 00          nop
207A: 00          nop
207B: 00          nop
207C: 00          nop
207D: 00          nop
207E: 00          nop
207F: 00          nop
2080: 00          nop
2081: 00          nop
2082: 00          nop
2083: 00          nop
2084: 00          nop
2085: 00          nop
2086: 00          nop
2087: 00          nop
2088: 00          nop
2089: 00          nop
208A: 00          nop
208B: 00          nop
208C: 00          nop
208D: 00          nop
208E: 00          nop
208F: 00          nop
2090: 00          nop
2091: 00          nop
2092: 00          nop
2093: 00          nop
2094: 00          nop
2095: 00          nop
2096: 00          nop
2097: 00          nop
2098: 00          nop
2099: 00          nop
209A: 00          nop
209B: 00          nop
209C: 00          nop
209D: 00          nop
209E: 00          nop
209F: 00          nop
20A0: 00          nop
20A1: 00          nop
20A2: 00          nop
20A3: 00          nop
20A4: 00          nop
20A5: 00          nop
20A6: 00          nop
20A7: 00          nop
20A8: 00          nop
20A9: 00          nop
20AA: 00          nop
20AB: 00          nop
20AC: 00          nop
20AD: 00          nop
20AE: 00          nop
20AF: 00          nop
20B0: 00          nop
20B1: 00          nop
20B2: 00          nop
20B3: 00          nop
20B4: 00          nop
20B5: 00          nop
20B6: 00          nop
20B7: 00          nop
20B8: 00          nop
20B9: 00          nop
20BA: 00          nop
20BB: 00          nop
20BC: 00          nop
20BD: 00          nop
20BE: 00          nop
20BF: 00          nop
20C0: 00          nop
20C1: 00          nop
20C2: 00          nop
20C3: 00          nop
20C4: 00          nop
20C5: 00          nop
20C6: 00          nop
20C7: 00          nop
20C8: 00          nop
20C9: 00          nop
20CA: 00          nop
20CB: 00          nop
20CC: 00          nop
20CD: 00          nop
20CE: 00          nop
20CF: 00          nop
20D0: 00          nop
20D1: 00          nop
20D2: 00          nop
20D3: 00          nop
20D4: 00          nop
20D5: 00          nop
20D6: 00          nop
20D7: 00          nop
20D8: 00          nop
20D9: 00          nop
20DA: 00          nop
20DB: 00          nop
20DC: 00          nop
20DD: 00          nop
20DE: 00          nop
20DF: 00          nop
20E0: 00          nop
20E1: 00          nop
20E2: 00          nop
20E3: 00          nop
20E4: 00          nop
20E5: 00          nop
20E6: 00          nop
20E7: 00          nop
20E8: 00          nop
20E9: 00          nop
20EA: 00          nop
20EB: 00          nop
20EC: 00          nop
20ED: 00          nop
20EE: 00          nop
20EF: 00          nop
20F0: 00          nop
20F1: 00          nop
20F2: 00          nop
20F3: 00          nop
20F4: 00          nop
20F5: 00          nop
20F6: 00          nop
20F7: 00          nop
20F8: 00          nop
20F9: 00          nop
20FA: 00          nop
20FB: 00          nop
20FC: 00          nop
20FD: 00          nop
20FE: 00          nop
20FF: 00          nop
2100: 00          nop
2101: 00          nop
2102: 00          nop
2103: 00          nop
2104: 00          nop
2105: 00          nop
2106: 00          nop
2107: 00          nop
2108: 00          nop
2109: 00          nop
210A: 00          nop
210B: 00          nop
210C: 00          nop
210D: 00          nop
210E: 00          nop
210F: 00          nop
2110: 00          nop
2111: 00          nop
2112: 00          nop
2113: 00          nop
2114: 00          nop
2115: 00          nop
2116: 00          nop
2117: 00          nop
2118: 00          nop
2119: 00          nop
211A: 00          nop
211B: 00          nop
211C: 00          nop
211D: 00          nop
211E: 00          nop
211F: 00          nop
2120: 00          nop
2121: 00          nop
2122: 00          nop
2123: 00          nop
2124: 00          nop
2125: 00          nop
2126: 00          nop
2127: 00          nop
2128: 00          nop
2129: 00          nop
212A: 00          nop
212B: 00          nop
212C: 00          nop
212D: 00          nop
212E: 00          nop
212F: 00          nop
2130: 00          nop
2131: 00          nop
2132: 00          nop
2133: 00          nop
2134: 00          nop
2135: 00          nop
2136: 00          nop
2137: 00          nop
2138: 00          nop
2139: 00          nop
213A: 00          nop
213B: 00          nop
213C: 00          nop
213D: 00          nop
213E: 00          nop
213F: 00          nop
2140: 00          nop
2141: 00          nop
2142: 00          nop
2143: 00          nop
2144: 00          nop
2145: 00          nop
2146: 00          nop
2147: 00          nop
2148: 00          nop
2149: 00          nop
214A: 00          nop
214B: 00          nop
214C: 00          nop
214D: 00          nop
214E: 00          nop
214F: 00          nop
2150: 00          nop
2151: 00          nop
2152: 00          nop
2153: 00          nop
2154: 00          nop
2155: 00          nop
2156: 00          nop
2157: 00          nop
2158: 00          nop
2159: 00          nop
215A: 00          nop
215B: 00          nop
215C: 00          nop
215D: 00          nop
215E: 00          nop
215F: 00          nop
2160: 00          nop
2161: 00          nop
2162: 00          nop
2163: 00          nop
2164: 00          nop
2165: 00          nop
2166: 00          nop
2167: 00          nop
2168: 00          nop
2169: 00          nop
216A: 00          nop
216B: 00          nop
216C: 00          nop
216D: 00          nop
216E: 00          nop
216F: 00          nop
2170: 00          nop
2171: 00          nop
2172: 00          nop
2173: 00          nop
2174: 00          nop
2175: 00          nop
2176: 00          nop
2177: 00          nop
2178: 00          nop
2179: 00          nop
217A: 00          nop
217B: 00          nop
217C: 00          nop
217D: 00          nop
217E: 00          nop
217F: 00          nop
2180: 00          nop
2181: 00          nop
2182: 00          nop
2183: 00          nop
2184: 00          nop
2185: 00          nop
2186: 00          nop
2187: 00          nop
2188: 00          nop
2189: 00          nop
218A: 00          nop
218B: 00          nop
218C: 00          nop
218D: 00          nop
218E: 00          nop
218F: 00          nop
2190: 00          nop
2191: 00          nop
2192: 00          nop
2193: 00          nop
2194: 00          nop
2195: 00          nop
2196: 00          nop
2197: 00          nop
2198: 00          nop
2199: 00          nop
219A: 00          nop
219B: 00          nop
219C: 00          nop
219D: 00          nop
219E: 00          nop
219F: 00          nop
21A0: 00          nop
21A1: 00          nop
21A2: 00          nop
21A3: 00          nop
21A4: 00          nop
21A5: 00          nop
21A6: 00          nop
21A7: 00          nop
21A8: 00          nop
21A9: 00          nop
21AA: 00          nop
21AB: 00          nop
21AC: 00          nop
21AD: 00          nop
21AE: 00          nop
21AF: 00          nop
21B0: 00          nop
21B1: 00          nop
21B2: 00          nop
21B3: 00          nop
21B4: 00          nop
21B5: 00          nop
21B6: 00          nop
21B7: 00          nop
21B8: 00          nop
21B9: 00          nop
21BA: 00          nop
21BB: 00          nop
21BC: 00          nop
21BD: 00          nop
21BE: 00          nop
21BF: 00          nop
21C0: 00          nop
21C1: 00          nop
21C2: 00          nop
21C3: 00          nop
21C4: 00          nop
21C5: 00          nop
21C6: 00          nop
21C7: 00          nop
21C8: 00          nop
21C9: 00          nop
21CA: 00          nop
21CB: 00          nop
21CC: 00          nop
21CD: 00          nop
21CE: 00          nop
21CF: 00          nop
21D0: 00          nop
21D1: 00          nop
21D2: 00          nop
21D3: 00          nop
21D4: 00          nop
21D5: 00          nop
21D6: 00          nop
21D7: 00          nop
21D8: 00          nop
21D9: 00          nop
21DA: 00          nop
21DB: 00          nop
21DC: 00          nop
21DD: 00          nop
21DE: 00          nop
21DF: 00          nop
21E0: 00          nop
21E1: 00          nop
21E2: 00          nop
21E3: 00          nop
21E4: 00          nop
21E5: 00          nop
21E6: 00          nop
21E7: 00          nop
21E8: 00          nop
21E9: 00          nop
21EA: 00          nop
21EB: 00          nop
21EC: 00          nop
21ED: 00          nop
21EE: 00          nop
21EF: 00          nop
21F0: 00          nop
21F1: 00          nop
21F2: 00          nop
21F3: 00          nop
21F4: 00          nop
21F5: 00          nop
21F6: 00          nop
21F7: 00          nop
21F8: 00          nop
21F9: 00          nop
21FA: 00          nop
21FB: 00          nop
21FC: 00          nop
21FD: 00          nop
21FE: 00          nop
21FF: 00          nop
2200: 00          nop
2201: 00          nop
2202: 00          nop
2203: 00          nop
2204: 00          nop
2205: 00          nop
2206: 00          nop
2207: 00          nop
2208: 00          nop
2209: 00          nop
220A: 00          nop
220B: 00          nop
220C: 00          nop
220D: 00          nop
220E: 00          nop
220F: 00          nop
2210: 00          nop
2211: 00          nop
2212: 00          nop
2213: 00          nop
2214: 00          nop
2215: 00          nop
2216: 00          nop
2217: 00          nop
2218: 00          nop
2219: 00          nop
221A: 00          nop
221B: 00          nop
221C: 00          nop
221D: 00          nop
221E: 00          nop
221F: 00          nop
2220: 00          nop
2221: 00          nop
2222: 00          nop
2223: 00          nop
2224: 00          nop
2225: 00          nop
2226: 00          nop
2227: 00          nop
2228: 00          nop
2229: 00          nop
222A: 00          nop
222B: 00          nop
222C: 00          nop
222D: 00          nop
222E: 00          nop
222F: 00          nop
2230: 00          nop
2231: 00          nop
2232: 00          nop
2233: 00          nop
2234: 00          nop
2235: 00          nop
2236: 00          nop
2237: 00          nop
2238: 00          nop
2239: 00          nop
223A: 00          nop
223B: 00          nop
223C: 00          nop
223D: 00          nop
223E: 00          nop
223F: 00          nop
2240: 00          nop
2241: 00          nop
2242: 00          nop
2243: 00          nop
2244: 00          nop
2245: 00          nop
2246: 00          nop
2247: 00          nop
2248: 00          nop
2249: 00          nop
224A: 00          nop
224B: 00          nop
224C: 00          nop
224D: 00          nop
224E: 00          nop
224F: 00          nop
2250: 00          nop
2251: 00          nop
2252: 00          nop
2253: 00          nop
2254: 00          nop
2255: 00          nop
2256: 00          nop
2257: 00          nop
2258: 00          nop
2259: 00          nop
225A: 00          nop
225B: 00          nop
225C: 00          nop
225D: 00          nop
225E: 00          nop
225F: 00          nop
2260: 00          nop
2261: 00          nop
2262: 00          nop
2263: 00          nop
2264: 00          nop
2265: 00          nop
2266: 00          nop
2267: 00          nop
2268: 00          nop
2269: 00          nop
226A: 00          nop
226B: 00          nop
226C: 00          nop
226D: 00          nop
226E: 00          nop
226F: 00          nop
2270: 00          nop
2271: 00          nop
2272: 00          nop
2273: 00          nop
2274: 00          nop
2275: 00          nop
2276: 00          nop
2277: 00          nop
2278: 00          nop
2279: 00          nop
227A: 00          nop
227B: 00          nop
227C: 00          nop
227D: 00          nop
227E: 00          nop
227F: 00          nop
2280: 00          nop
2281: 00          nop
2282: 00          nop
2283: 00          nop
2284: 00          nop
2285: 00          nop
2286: 00          nop
2287: 00          nop
2288: 00          nop
2289: 00          nop
228A: 00          nop
228B: 00          nop
228C: 00          nop
228D: 00          nop
228E: 00          nop
228F: 00          nop
2290: 00          nop
2291: 00          nop
2292: 00          nop
2293: 00          nop
2294: 00          nop
2295: 00          nop
2296: 00          nop
2297: 00          nop
2298: 00          nop
2299: 00          nop
229A: 00          nop
229B: 00          nop
229C: 00          nop
229D: 00          nop
229E: 00          nop
229F: 00          nop
22A0: 00          nop
22A1: 00          nop
22A2: 00          nop
22A3: 00          nop
22A4: 00          nop
22A5: 00          nop
22A6: 00          nop
22A7: 00          nop
22A8: 00          nop
22A9: 00          nop
22AA: 00          nop
22AB: 00          nop
22AC: 00          nop
22AD: 00          nop
22AE: 00          nop
22AF: 00          nop
22B0: 00          nop
22B1: 00          nop
22B2: 00          nop
22B3: 00          nop
22B4: 00          nop
22B5: 00          nop
22B6: 00          nop
22B7: 00          nop
22B8: 00          nop
22B9: 00          nop
22BA: 00          nop
22BB: 00          nop
22BC: 00          nop
22BD: 00          nop
22BE: 00          nop
22BF: 00          nop
22C0: 00          nop
22C1: 00          nop
22C2: 00          nop
22C3: 00          nop
22C4: 00          nop
22C5: 00          nop
22C6: 00          nop
22C7: 00          nop
22C8: 00          nop
22C9: 00          nop
22CA: 00          nop
22CB: 00          nop
22CC: 00          nop
22CD: 00          nop
22CE: 00          nop
22CF: 00          nop
22D0: 00          nop
22D1: 00          nop
22D2: 00          nop
22D3: 00          nop
22D4: 00          nop
22D5: 00          nop
22D6: 00          nop
22D7: 00          nop
22D8: 00          nop
22D9: 00          nop
22DA: 00          nop
22DB: 00          nop
22DC: 00          nop
22DD: 00          nop
22DE: 00          nop
22DF: 00          nop
22E0: 00          nop
22E1: 00          nop
22E2: 00          nop
22E3: 00          nop
22E4: 00          nop
22E5: 00          nop
22E6: 00          nop
22E7: 00          nop
22E8: 00          nop
22E9: 00          nop
22EA: 00          nop
22EB: 00          nop
22EC: 00          nop
22ED: 00          nop
22EE: 00          nop
22EF: 00          nop
22F0: 00          nop
22F1: 00          nop
22F2: 00          nop
22F3: 00          nop
22F4: 00          nop
22F5: 00          nop
22F6: 00          nop
22F7: 00          nop
22F8: 00          nop
22F9: 00          nop
22FA: 00          nop
22FB: 00          nop
22FC: 00          nop
22FD: 00          nop
22FE: 00          nop
22FF: 00          nop
2300: 00          nop
2301: 00          nop
2302: 00          nop
2303: 00          nop
2304: 00          nop
2305: 00          nop
2306: 00          nop
2307: 00          nop
2308: 00          nop
2309: 00          nop
230A: 00          nop
230B: 00          nop
230C: 00          nop
230D: 00          nop
230E: 00          nop
230F: 00          nop
2310: 00          nop
2311: 00          nop
2312: 00          nop
2313: 00          nop
2314: 00          nop
2315: 00          nop
2316: 00          nop
2317: 00          nop
2318: 00          nop
2319: 00          nop
231A: 00          nop
231B: 00          nop
231C: 00          nop
231D: 00          nop
231E: 00          nop
231F: 00          nop
2320: 00          nop
2321: 00          nop
2322: 00          nop
2323: 00          nop
2324: 00          nop
2325: 00          nop
2326: 00          nop
2327: 00          nop
2328: 00          nop
2329: 00          nop
232A: 00          nop
232B: 00          nop
232C: 00          nop
232D: 00          nop
232E: 00          nop
232F: 00          nop
2330: 00          nop
2331: 00          nop
2332: 00          nop
2333: 00          nop
2334: 00          nop
2335: 00          nop
2336: 00          nop
2337: 00          nop
2338: 00          nop
2339: 00          nop
233A: 00          nop
233B: 00          nop
233C: 00          nop
233D: 00          nop
233E: 00          nop
233F: 00          nop
2340: 00          nop
2341: 00          nop
2342: 00          nop
2343: 00          nop
2344: 00          nop
2345: 00          nop
2346: 00          nop
2347: 00          nop
2348: 00          nop
2349: 00          nop
234A: 00          nop
234B: 00          nop
234C: 00          nop
234D: 00          nop
234E: 00          nop
234F: 00          nop
2350: 00          nop
2351: 00          nop
2352: 00          nop
2353: 00          nop
2354: 00          nop
2355: 00          nop
2356: 00          nop
2357: 00          nop
2358: 00          nop
2359: 00          nop
235A: 00          nop
235B: 00          nop
235C: 00          nop
235D: 00          nop
235E: 00          nop
235F: 00          nop
2360: 00          nop
2361: 00          nop
2362: 00          nop
2363: 00          nop
2364: 00          nop
2365: 00          nop
2366: 00          nop
2367: 00          nop
2368: 00          nop
2369: 00          nop
236A: 00          nop
236B: 00          nop
236C: 00          nop
236D: 00          nop
236E: 00          nop
236F: 00          nop
2370: 00          nop
2371: 00          nop
2372: 00          nop
2373: 00          nop
2374: 00          nop
2375: 00          nop
2376: 00          nop
2377: 00          nop
2378: 00          nop
2379: 00          nop
237A: 00          nop
237B: 00          nop
237C: 00          nop
237D: 00          nop
237E: 00          nop
237F: 00          nop
2380: 00          nop
2381: 00          nop
2382: 00          nop
2383: 00          nop
2384: 00          nop
2385: 00          nop
2386: 00          nop
2387: 00          nop
2388: 00          nop
2389: 00          nop
238A: 00          nop
238B: 00          nop
238C: 00          nop
238D: 00          nop
238E: 00          nop
238F: 00          nop
2390: 00          nop
2391: 00          nop
2392: 00          nop
2393: 00          nop
2394: 00          nop
2395: 00          nop
2396: 00          nop
2397: 00          nop
2398: 00          nop
2399: 00          nop
239A: 00          nop
239B: 00          nop
239C: 00          nop
239D: 00          nop
239E: 00          nop
239F: 00          nop
23A0: 00          nop
23A1: 00          nop
23A2: 00          nop
23A3: 00          nop
23A4: 00          nop
23A5: 00          nop
23A6: 00          nop
23A7: 00          nop
23A8: 00          nop
23A9: 00          nop
23AA: 00          nop
23AB: 00          nop
23AC: 00          nop
23AD: 00          nop
23AE: 00          nop
23AF: 00          nop
23B0: 00          nop
23B1: 00          nop
23B2: 00          nop
23B3: 00          nop
23B4: 00          nop
23B5: 00          nop
23B6: 00          nop
23B7: 00          nop
23B8: 00          nop
23B9: 00          nop
23BA: 00          nop
23BB: 00          nop
23BC: 00          nop
23BD: 00          nop
23BE: 00          nop
23BF: 00          nop
23C0: 00          nop
23C1: 00          nop
23C2: 00          nop
23C3: 00          nop
23C4: 00          nop
23C5: 00          nop
23C6: 00          nop
23C7: 00          nop
23C8: 00          nop
23C9: 00          nop
23CA: 00          nop
23CB: 00          nop
23CC: 00          nop
23CD: 00          nop
23CE: 00          nop
23CF: 00          nop
23D0: 00          nop
23D1: 00          nop
23D2: 00          nop
23D3: 00          nop
23D4: 00          nop
23D5: 00          nop
23D6: 00          nop
23D7: 00          nop
23D8: 00          nop
23D9: 00          nop
23DA: 00          nop
23DB: 00          nop
23DC: 00          nop
23DD: 00          nop
23DE: 00          nop
23DF: 00          nop
23E0: 00          nop
23E1: 00          nop
23E2: 00          nop
23E3: 00          nop
23E4: 00          nop
23E5: 00          nop
23E6: 00          nop
23E7: 00          nop
23E8: 00          nop
23E9: 00          nop
23EA: 00          nop
23EB: 00          nop
23EC: 00          nop
23ED: 00          nop
23EE: 00          nop
23EF: 00          nop
23F0: 00          nop
23F1: 00          nop
23F2: 00          nop
23F3: 00          nop
23F4: 00          nop
23F5: 00          nop
23F6: 00          nop
23F7: 00          nop
23F8: 00          nop
23F9: 00          nop
23FA: 00          nop
23FB: 00          nop
23FC: 00          nop
23FD: 00          nop
23FE: 00          nop
23FF: 00          nop
2400: 00          nop
2401: 00          nop
2402: 00          nop
2403: 00          nop
2404: 00          nop
2405: 00          nop
2406: 00          nop
2407: 00          nop
2408: 00          nop
2409: 00          nop
240A: 00          nop
240B: 00          nop
240C: 00          nop
240D: 00          nop
240E: 00          nop
240F: 00          nop
2410: 00          nop
2411: 00          nop
2412: 00          nop
2413: 00          nop
2414: 00          nop
2415: 00          nop
2416: 00          nop
2417: 00          nop
2418: 00          nop
2419: 00          nop
241A: 00          nop
241B: 00          nop
241C: 00          nop
241D: 00          nop
241E: 00          nop
241F: 00          nop
2420: 00          nop
2421: 00          nop
2422: 00          nop
2423: 00          nop
2424: 00          nop
2425: 00          nop
2426: 00          nop
2427: 00          nop
2428: 00          nop
2429: 00          nop
242A: 00          nop
242B: 00          nop
242C: 00          nop
242D: 00          nop
242E: 00          nop
242F: 00          nop
2430: 00          nop
2431: 00          nop
2432: 00          nop
2433: 00          nop
2434: 00          nop
2435: 00          nop
2436: 00          nop
2437: 00          nop
2438: 00          nop
2439: 00          nop
243A: 00          nop
243B: 00          nop
243C: 00          nop
243D: 00          nop
243E: 00          nop
243F: 00          nop
2440: 00          nop
2441: 00          nop
2442: 00          nop
2443: 00          nop
2444: 00          nop
2445: 00          nop
2446: 00          nop
2447: 00          nop
2448: 00          nop
2449: 00          nop
244A: 00          nop
244B: 00          nop
244C: 00          nop
244D: 00          nop
244E: 00          nop
244F: 00          nop
2450: 00          nop
2451: 00          nop
2452: 00          nop
2453: 00          nop
2454: 00          nop
2455: 00          nop
2456: 00          nop
2457: 00          nop
2458: 00          nop
2459: 00          nop
245A: 00          nop
245B: 00          nop
245C: 00          nop
245D: 00          nop
245E: 00          nop
245F: 00          nop
2460: 00          nop
2461: 00          nop
2462: 00          nop
2463: 00          nop
2464: 00          nop
2465: 00          nop
2466: 00          nop
2467: 00          nop
2468: 00          nop
2469: 00          nop
246A: 00          nop
246B: 00          nop
246C: 00          nop
246D: 00          nop
246E: 00          nop
246F: 00          nop
2470: 00          nop
2471: 00          nop
2472: 00          nop
2473: 00          nop
2474: 00          nop
2475: 00          nop
2476: 00          nop
2477: 00          nop
2478: 00          nop
2479: 00          nop
247A: 00          nop
247B: 00          nop
247C: 00          nop
247D: 00          nop
247E: 00          nop
247F: 00          nop
2480: 00          nop
2481: 00          nop
2482: 00          nop
2483: 00          nop
2484: 00          nop
2485: 00          nop
2486: 00          nop
2487: 00          nop
2488: 00          nop
2489: 00          nop
248A: 00          nop
248B: 00          nop
248C: 00          nop
248D: 00          nop
248E: 00          nop
248F: 00          nop
2490: 00          nop
2491: 00          nop
2492: 00          nop
2493: 00          nop
2494: 00          nop
2495: 00          nop
2496: 00          nop
2497: 00          nop
2498: 00          nop
2499: 00          nop
249A: 00          nop
249B: 00          nop
249C: 00          nop
249D: 00          nop
249E: 00          nop
249F: 00          nop
24A0: 00          nop
24A1: 00          nop
24A2: 00          nop
24A3: 00          nop
24A4: 00          nop
24A5: 00          nop
24A6: 00          nop
24A7: 00          nop
24A8: 00          nop
24A9: 00          nop
24AA: 00          nop
24AB: 00          nop
24AC: 00          nop
24AD: 00          nop
24AE: 00          nop
24AF: 00          nop
24B0: 00          nop
24B1: 00          nop
24B2: 00          nop
24B3: 00          nop
24B4: 00          nop
24B5: 00          nop
24B6: 00          nop
24B7: 00          nop
24B8: 00          nop
24B9: 00          nop
24BA: 00          nop
24BB: 00          nop
24BC: 00          nop
24BD: 00          nop
24BE: 00          nop
24BF: 00          nop
24C0: 00          nop
24C1: 00          nop
24C2: 00          nop
24C3: 00          nop
24C4: 00          nop
24C5: 00          nop
24C6: 00          nop
24C7: 00          nop
24C8: 00          nop
24C9: 00          nop
24CA: 00          nop
24CB: 00          nop
24CC: 00          nop
24CD: 00          nop
24CE: 00          nop
24CF: 00          nop
24D0: 00          nop
24D1: 00          nop
24D2: 00          nop
24D3: 00          nop
24D4: 00          nop
24D5: 00          nop
24D6: 00          nop
24D7: 00          nop
24D8: 00          nop
24D9: 00          nop
24DA: 00          nop
24DB: 00          nop
24DC: 00          nop
24DD: 00          nop
24DE: 00          nop
24DF: 00          nop
24E0: 00          nop
24E1: 00          nop
24E2: 00          nop
24E3: 00          nop
24E4: 00          nop
24E5: 00          nop
24E6: 00          nop
24E7: 00          nop
24E8: 00          nop
24E9: 00          nop
24EA: 00          nop
24EB: 00          nop
24EC: 00          nop
24ED: 00          nop
24EE: 00          nop
24EF: 00          nop
24F0: 00          nop
24F1: 00          nop
24F2: 00          nop
24F3: 00          nop
24F4: 00          nop
24F5: 00          nop
24F6: 00          nop
24F7: 00          nop
24F8: 00          nop
24F9: 00          nop
24FA: 00          nop
24FB: 00          nop
24FC: 00          nop
24FD: 00          nop
24FE: 00          nop
24FF: 00          nop
2500: 00          nop
2501: 00          nop
2502: 00          nop
2503: 00          nop
2504: 00          nop
2505: 00          nop
2506: 00          nop
2507: 00          nop
2508: 00          nop
2509: 00          nop
250A: 00          nop
250B: 00          nop
250C: 00          nop
250D: 00          nop
250E: 00          nop
250F: 00          nop
2510: 00          nop
2511: 00          nop
2512: 00          nop
2513: 00          nop
2514: 00          nop
2515: 00          nop
2516: 00          nop
2517: 00          nop
2518: 00          nop
2519: 00          nop
251A: 00          nop
251B: 00          nop
251C: 00          nop
251D: 00          nop
251E: 00          nop
251F: 00          nop
2520: 00          nop
2521: 00          nop
2522: 00          nop
2523: 00          nop
2524: 00          nop
2525: 00          nop
2526: 00          nop
2527: 00          nop
2528: 00          nop
2529: 00          nop
252A: 00          nop
252B: 00          nop
252C: 00          nop
252D: 00          nop
252E: 00          nop
252F: 00          nop
2530: 00          nop
2531: 00          nop
2532: 00          nop
2533: 00          nop
2534: 00          nop
2535: 00          nop
2536: 00          nop
2537: 00          nop
2538: 00          nop
2539: 00          nop
253A: 00          nop
253B: 00          nop
253C: 00          nop
253D: 00          nop
253E: 00          nop
253F: 00          nop
2540: 00          nop
2541: 00          nop
2542: 00          nop
2543: 00          nop
2544: 00          nop
2545: 00          nop
2546: 00          nop
2547: 00          nop
2548: 00          nop
2549: 00          nop
254A: 00          nop
254B: 00          nop
254C: 00          nop
254D: 00          nop
254E: 00          nop
254F: 00          nop
2550: 00          nop
2551: 00          nop
2552: 00          nop
2553: 00          nop
2554: 00          nop
2555: 00          nop
2556: 00          nop
2557: 00          nop
2558: 00          nop
2559: 00          nop
255A: 00          nop
255B: 00          nop
255C: 00          nop
255D: 00          nop
255E: 00          nop
255F: 00          nop
2560: 00          nop
2561: 00          nop
2562: 00          nop
2563: 00          nop
2564: 00          nop
2565: 00          nop
2566: 00          nop
2567: 00          nop
2568: 00          nop
2569: 00          nop
256A: 00          nop
256B: 00          nop
256C: 00          nop
256D: 00          nop
256E: 00          nop
256F: 00          nop
2570: 00          nop
2571: 00          nop
2572: 00          nop
2573: 00          nop
2574: 00          nop
2575: 00          nop
2576: 00          nop
2577: 00          nop
2578: 00          nop
2579: 00          nop
257A: 00          nop
257B: 00          nop
257C: 00          nop
257D: 00          nop
257E: 00          nop
257F: 00          nop
2580: 00          nop
2581: 00          nop
2582: 00          nop
2583: 00          nop
2584: 00          nop
2585: 00          nop
2586: 00          nop
2587: 00          nop
2588: 00          nop
2589: 00          nop
258A: 00          nop
258B: 00          nop
258C: 00          nop
258D: 00          nop
258E: 00          nop
258F: 00          nop
2590: 00          nop
2591: 00          nop
2592: 00          nop
2593: 00          nop
2594: 00          nop
2595: 00          nop
2596: 00          nop
2597: 00          nop
2598: 00          nop
2599: 00          nop
259A: 00          nop
259B: 00          nop
259C: 00          nop
259D: 00          nop
259E: 00          nop
259F: 00          nop
25A0: 00          nop
25A1: 00          nop
25A2: 00          nop
25A3: 00          nop
25A4: 00          nop
25A5: 00          nop
25A6: 00          nop
25A7: 00          nop
25A8: 00          nop
25A9: 00          nop
25AA: 00          nop
25AB: 00          nop
25AC: 00          nop
25AD: 00          nop
25AE: 00          nop
25AF: 00          nop
25B0: 00          nop
25B1: 00          nop
25B2: 00          nop
25B3: 00          nop
25B4: 00          nop
25B5: 00          nop
25B6: 00          nop
25B7: 00          nop
25B8: 00          nop
25B9: 00          nop
25BA: 00          nop
25BB: 00          nop
25BC: 00          nop
25BD: 00          nop
25BE: 00          nop
25BF: 00          nop
25C0: 00          nop
25C1: 00          nop
25C2: 00          nop
25C3: 00          nop
25C4: 00          nop
25C5: 00          nop
25C6: 00          nop
25C7: 00          nop
25C8: 00          nop
25C9: 00          nop
25CA: 00          nop
25CB: 00          nop
25CC: 00          nop
25CD: 00          nop
25CE: 00          nop
25CF: 00          nop
25D0: 00          nop
25D1: 00          nop
25D2: 00          nop
25D3: 00          nop
25D4: 00          nop
25D5: 00          nop
25D6: 00          nop
25D7: 00          nop
25D8: 00          nop
25D9: 00          nop
25DA: 00          nop
25DB: 00          nop
25DC: 00          nop
25DD: 00          nop
25DE: 00          nop
25DF: 00          nop
25E0: 00          nop
25E1: 00          nop
25E2: 00          nop
25E3: 00          nop
25E4: 00          nop
25E5: 00          nop
25E6: 00          nop
25E7: 00          nop
25E8: 00          nop
25E9: 00          nop
25EA: 00          nop
25EB: 00          nop
25EC: 00          nop
25ED: 00          nop
25EE: 00          nop
25EF: 00          nop
25F0: 00          nop
25F1: 00          nop
25F2: 00          nop
25F3: 00          nop
25F4: 00          nop
25F5: 00          nop
25F6: 00          nop
25F7: 00          nop
25F8: 00          nop
25F9: 00          nop
25FA: 00          nop
25FB: 00          nop
25FC: 00          nop
25FD: 00          nop
25FE: 00          nop
25FF: 00          nop
2600: 00          nop
2601: 00          nop
2602: 00          nop
2603: 00          nop
2604: 00          nop
2605: 00          nop
2606: 00          nop
2607: 00          nop
2608: 00          nop
2609: 00          nop
260A: 00          nop
260B: 00          nop
260C: 00          nop
260D: 00          nop
260E: 00          nop
260F: 00          nop
2610: 00          nop
2611: 00          nop
2612: 00          nop
2613: 00          nop
2614: 00          nop
2615: 00          nop
2616: 00          nop
2617: 00          nop
2618: 00          nop
2619: 00          nop
261A: 00          nop
261B: 00          nop
261C: 00          nop
261D: 00          nop
261E: 00          nop
261F: 00          nop
2620: 00          nop
2621: 00          nop
2622: 00          nop
2623: 00          nop
2624: 00          nop
2625: 00          nop
2626: 00          nop
2627: 00          nop
2628: 00          nop
2629: 00          nop
262A: 00          nop
262B: 00          nop
262C: 00          nop
262D: 00          nop
262E: 00          nop
262F: 00          nop
2630: 00          nop
2631: 00          nop
2632: 00          nop
2633: 00          nop
2634: 00          nop
2635: 00          nop
2636: 00          nop
2637: 00          nop
2638: 00          nop
2639: 00          nop
263A: 00          nop
263B: 00          nop
263C: 00          nop
263D: 00          nop
263E: 00          nop
263F: 00          nop
2640: 00          nop
2641: 00          nop
2642: 00          nop
2643: 00          nop
2644: 00          nop
2645: 00          nop
2646: 00          nop
2647: 00          nop
2648: 00          nop
2649: 00          nop
264A: 00          nop
264B: 00          nop
264C: 00          nop
264D: 00          nop
264E: 00          nop
264F: 00          nop
2650: 00          nop
2651: 00          nop
2652: 00          nop
2653: 00          nop
2654: 00          nop
2655: 00          nop
2656: 00          nop
2657: 00          nop
2658: 00          nop
2659: 00          nop
265A: 00          nop
265B: 00          nop
265C: 00          nop
265D: 00          nop
265E: 00          nop
265F: 00          nop
2660: 00          nop
2661: 00          nop
2662: 00          nop
2663: 00          nop
2664: 00          nop
2665: 00          nop
2666: 00          nop
2667: 00          nop
2668: 00          nop
2669: 00          nop
266A: 00          nop
266B: 00          nop
266C: 00          nop
266D: 00          nop
266E: 00          nop
266F: 00          nop
2670: 00          nop
2671: 00          nop
2672: 00          nop
2673: 00          nop
2674: 00          nop
2675: 00          nop
2676: 00          nop
2677: 00          nop
2678: 00          nop
2679: 00          nop
267A: 00          nop
267B: 00          nop
267C: 00          nop
267D: 00          nop
267E: 00          nop
267F: 00          nop
2680: 00          nop
2681: 00          nop
2682: 00          nop
2683: 00          nop
2684: 00          nop
2685: 00          nop
2686: 00          nop
2687: 00          nop
2688: 00          nop
2689: 00          nop
268A: 00          nop
268B: 00          nop
268C: 00          nop
268D: 00          nop
268E: 00          nop
268F: 00          nop
2690: 00          nop
2691: 00          nop
2692: 00          nop
2693: 00          nop
2694: 00          nop
2695: 00          nop
2696: 00          nop
2697: 00          nop
2698: 00          nop
2699: 00          nop
269A: 00          nop
269B: 00          nop
269C: 00          nop
269D: 00          nop
269E: 00          nop
269F: 00          nop
26A0: 00          nop
26A1: 00          nop
26A2: 00          nop
26A3: 00          nop
26A4: 00          nop
26A5: 00          nop
26A6: 00          nop
26A7: 00          nop
26A8: 00          nop
26A9: 00          nop
26AA: 00          nop
26AB: 00          nop
26AC: 00          nop
26AD: 00          nop
26AE: 00          nop
26AF: 00          nop
26B0: 00          nop
26B1: 00          nop
26B2: 00          nop
26B3: 00          nop
26B4: 00          nop
26B5: 00          nop
26B6: 00          nop
26B7: 00          nop
26B8: 00          nop
26B9: 00          nop
26BA: 00          nop
26BB: 00          nop
26BC: 00          nop
26BD: 00          nop
26BE: 00          nop
26BF: 00          nop
26C0: 00          nop
26C1: 00          nop
26C2: 00          nop
26C3: 00          nop
26C4: 00          nop
26C5: 00          nop
26C6: 00          nop
26C7: 00          nop
26C8: 00          nop
26C9: 00          nop
26CA: 00          nop
26CB: 00          nop
26CC: 00          nop
26CD: 00          nop
26CE: 00          nop
26CF: 00          nop
26D0: 00          nop
26D1: 00          nop
26D2: 00          nop
26D3: 00          nop
26D4: 00          nop
26D5: 00          nop
26D6: 00          nop
26D7: 00          nop
26D8: 00          nop
26D9: 00          nop
26DA: 00          nop
26DB: 00          nop
26DC: 00          nop
26DD: 00          nop
26DE: 00          nop
26DF: 00          nop
26E0: 00          nop
26E1: 00          nop
26E2: 00          nop
26E3: 00          nop
26E4: 00          nop
26E5: 00          nop
26E6: 00          nop
26E7: 00          nop
26E8: 00          nop
26E9: 00          nop
26EA: 00          nop
26EB: 00          nop
26EC: 00          nop
26ED: 00          nop
26EE: 00          nop
26EF: 00          nop
26F0: 00          nop
26F1: 00          nop
26F2: 00          nop
26F3: 00          nop
26F4: 00          nop
26F5: 00          nop
26F6: 00          nop
26F7: 00          nop
26F8: 00          nop
26F9: 00          nop
26FA: 00          nop
26FB: 00          nop
26FC: 00          nop
26FD: 00          nop
26FE: 00          nop
26FF: 00          nop
2700: 00          nop
2701: 00          nop
2702: 00          nop
2703: 00          nop
2704: 00          nop
2705: 00          nop
2706: 00          nop
2707: 00          nop
2708: 00          nop
2709: 00          nop
270A: 00          nop
270B: 00          nop
270C: 00          nop
270D: 00          nop
270E: 00          nop
270F: 00          nop
2710: 00          nop
2711: 00          nop
2712: 00          nop
2713: 00          nop
2714: 00          nop
2715: 00          nop
2716: 00          nop
2717: 00          nop
2718: 00          nop
2719: 00          nop
271A: 00          nop
271B: 00          nop
271C: 00          nop
271D: 00          nop
271E: 00          nop
271F: 00          nop
2720: 00          nop
2721: 00          nop
2722: 00          nop
2723: 00          nop
2724: 00          nop
2725: 00          nop
2726: 00          nop
2727: 00          nop
2728: 00          nop
2729: 00          nop
272A: 00          nop
272B: 00          nop
272C: 00          nop
272D: 00          nop
272E: 00          nop
272F: 00          nop
2730: 00          nop
2731: 00          nop
2732: 00          nop
2733: 00          nop
2734: 00          nop
2735: 00          nop
2736: 00          nop
2737: 00          nop
2738: 00          nop
2739: 00          nop
273A: 00          nop
273B: 00          nop
273C: 00          nop
273D: 00          nop
273E: 00          nop
273F: 00          nop
2740: 00          nop
2741: 00          nop
2742: 00          nop
2743: 00          nop
2744: 00          nop
2745: 00          nop
2746: 00          nop
2747: 00          nop
2748: 00          nop
2749: 00          nop
274A: 00          nop
274B: 00          nop
274C: 00          nop
274D: 00          nop
274E: 00          nop
274F: 00          nop
2750: 00          nop
2751: 00          nop
2752: 00          nop
2753: 00          nop
2754: 00          nop
2755: 00          nop
2756: 00          nop
2757: 00          nop
2758: 00          nop
2759: 00          nop
275A: 00          nop
275B: 00          nop
275C: 00          nop
275D: 00          nop
275E: 00          nop
275F: 00          nop
2760: 00          nop
2761: 00          nop
2762: 00          nop
2763: 00          nop
2764: 00          nop
2765: 00          nop
2766: 00          nop
2767: 00          nop
2768: 00          nop
2769: 00          nop
276A: 00          nop
276B: 00          nop
276C: 00          nop
276D: 00          nop
276E: 00          nop
276F: 00          nop
2770: 00          nop
2771: 00          nop
2772: 00          nop
2773: 00          nop
2774: 00          nop
2775: 00          nop
2776: 00          nop
2777: 00          nop
2778: 00          nop
2779: 00          nop
277A: 00          nop
277B: 00          nop
277C: 00          nop
277D: 00          nop
277E: 00          nop
277F: 00          nop
2780: 00          nop
2781: 00          nop
2782: 00          nop
2783: 00          nop
2784: 00          nop
2785: 00          nop
2786: 00          nop
2787: 00          nop
2788: 00          nop
2789: 00          nop
278A: 00          nop
278B: 00          nop
278C: 00          nop
278D: 00          nop
278E: 00          nop
278F: 00          nop
2790: 00          nop
2791: 00          nop
2792: 00          nop
2793: 00          nop
2794: 00          nop
2795: 00          nop
2796: 00          nop
2797: 00          nop
2798: 00          nop
2799: 00          nop
279A: 00          nop
279B: 00          nop
279C: 00          nop
279D: 00          nop
279E: 00          nop
279F: 00          nop
27A0: 00          nop
27A1: 00          nop
27A2: 00          nop
27A3: 00          nop
27A4: 00          nop
27A5: 00          nop
27A6: 00          nop
27A7: 00          nop
27A8: 00          nop
27A9: 00          nop
27AA: 00          nop
27AB: 00          nop
27AC: 00          nop
27AD: 00          nop
27AE: 00          nop
27AF: 00          nop
27B0: 00          nop
27B1: 00          nop
27B2: 00          nop
27B3: 00          nop
27B4: 00          nop
27B5: 00          nop
27B6: 00          nop
27B7: 00          nop
27B8: 00          nop
27B9: 00          nop
27BA: 00          nop
27BB: 00          nop
27BC: 00          nop
27BD: 00          nop
27BE: 00          nop
27BF: 00          nop
27C0: 00          nop
27C1: 00          nop
27C2: 00          nop
27C3: 00          nop
27C4: 00          nop
27C5: 00          nop
27C6: 00          nop
27C7: 00          nop
27C8: 00          nop
27C9: 00          nop
27CA: 00          nop
27CB: 00          nop
27CC: 00          nop
27CD: 00          nop
27CE: 00          nop
27CF: 00          nop
27D0: 00          nop
27D1: 00          nop
27D2: 00          nop
27D3: 00          nop
27D4: 00          nop
27D5: 00          nop
27D6: 00          nop
27D7: 00          nop
27D8: 00          nop
27D9: 00          nop
27DA: 00          nop
27DB: 00          nop
27DC: 00          nop
27DD: 00          nop
27DE: 00          nop
27DF: 00          nop
27E0: 00          nop
27E1: 00          nop
27E2: 00          nop
27E3: 00          nop
27E4: 00          nop
27E5: 00          nop
27E6: 00          nop
27E7: 00          nop
27E8: 00          nop
27E9: 00          nop
27EA: 00          nop
27EB: 00          nop
27EC: 00          nop
27ED: 00          nop
27EE: 00          nop
27EF: 00          nop
27F0: 00          nop
27F1: 00          nop
27F2: 00          nop
27F3: 00          nop
27F4: 00          nop
27F5: 00          nop
27F6: 00          nop
27F7: 00          nop
27F8: 00          nop
27F9: 00          nop
27FA: 00          nop
27FB: 00          nop
27FC: 00          nop
27FD: 00          nop
27FE: 00          nop
27FF: 00          nop
2800: 00          nop
2801: 00          nop
2802: 00          nop
2803: 00          nop
2804: 00          nop
2805: 00          nop
2806: 00          nop
2807: 00          nop
2808: 00          nop
2809: 00          nop
280A: 00          nop
280B: 00          nop
280C: 00          nop
280D: 00          nop
280E: 00          nop
280F: 00          nop
2810: 00          nop
2811: 00          nop
2812: 00          nop
2813: 00          nop
2814: 00          nop
2815: 00          nop
2816: 00          nop
2817: 00          nop
2818: 00          nop
2819: 00          nop
281A: 00          nop
281B: 00          nop
281C: 00          nop
281D: 00          nop
281E: 00          nop
281F: 00          nop
2820: 00          nop
2821: 00          nop
2822: 00          nop
2823: 00          nop
2824: 00          nop
2825: 00          nop
2826: 00          nop
2827: 00          nop
2828: 00          nop
2829: 00          nop
282A: 00          nop
282B: 00          nop
282C: 00          nop
282D: 00          nop
282E: 00          nop
282F: 00          nop
2830: 00          nop
2831: 00          nop
2832: 00          nop
2833: 00          nop
2834: 00          nop
2835: 00          nop
2836: 00          nop
2837: 00          nop
2838: 00          nop
2839: 00          nop
283A: 00          nop
283B: 00          nop
283C: 00          nop
283D: 00          nop
283E: 00          nop
283F: 00          nop
2840: 00          nop
2841: 00          nop
2842: 00          nop
2843: 00          nop
2844: 00          nop
2845: 00          nop
2846: 00          nop
2847: 00          nop
2848: 00          nop
2849: 00          nop
284A: 00          nop
284B: 00          nop
284C: 00          nop
284D: 00          nop
284E: 00          nop
284F: 00          nop
2850: 00          nop
2851: 00          nop
2852: 00          nop
2853: 00          nop
2854: 00          nop
2855: 00          nop
2856: 00          nop
2857: 00          nop
2858: 00          nop
2859: 00          nop
285A: 00          nop
285B: 00          nop
285C: 00          nop
285D: 00          nop
285E: 00          nop
285F: 00          nop
2860: 00          nop
2861: 00          nop
2862: 00          nop
2863: 00          nop
2864: 00          nop
2865: 00          nop
2866: 00          nop
2867: 00          nop
2868: 00          nop
2869: 00          nop
286A: 00          nop
286B: 00          nop
286C: 00          nop
286D: 00          nop
286E: 00          nop
286F: 00          nop
2870: 00          nop
2871: 00          nop
2872: 00          nop
2873: 00          nop
2874: 00          nop
2875: 00          nop
2876: 00          nop
2877: 00          nop
2878: 00          nop
2879: 00          nop
287A: 00          nop
287B: 00          nop
287C: 00          nop
287D: 00          nop
287E: 00          nop
287F: 00          nop
2880: 00          nop
2881: 00          nop
2882: 00          nop
2883: 00          nop
2884: 00          nop
2885: 00          nop
2886: 00          nop
2887: 00          nop
2888: 00          nop
2889: 00          nop
288A: 00          nop
288B: 00          nop
288C: 00          nop
288D: 00          nop
288E: 00          nop
288F: 00          nop
2890: 00          nop
2891: 00          nop
2892: 00          nop
2893: 00          nop
2894: 00          nop
2895: 00          nop
2896: 00          nop
2897: 00          nop
2898: 00          nop
2899: 00          nop
289A: 00          nop
289B: 00          nop
289C: 00          nop
289D: 00          nop
289E: 00          nop
289F: 00          nop
28A0: 00          nop
28A1: 00          nop
28A2: 00          nop
28A3: 00          nop
28A4: 00          nop
28A5: 00          nop
28A6: 00          nop
28A7: 00          nop
28A8: 00          nop
28A9: 00          nop
28AA: 00          nop
28AB: 00          nop
28AC: 00          nop
28AD: 00          nop
28AE: 00          nop
28AF: 00          nop
28B0: 00          nop
28B1: 00          nop
28B2: 00          nop
28B3: 00          nop
28B4: 00          nop
28B5: 00          nop
28B6: 00          nop
28B7: 00          nop
28B8: 00          nop
28B9: 00          nop
28BA: 00          nop
28BB: 00          nop
28BC: 00          nop
28BD: 00          nop
28BE: 00          nop
28BF: 00          nop
28C0: 00          nop
28C1: 00          nop
28C2: 00          nop
28C3: 00          nop
28C4: 00          nop
28C5: 00          nop
28C6: 00          nop
28C7: 00          nop
28C8: 00          nop
28C9: 00          nop
28CA: 00          nop
28CB: 00          nop
28CC: 00          nop
28CD: 00          nop
28CE: 00          nop
28CF: 00          nop
28D0: 00          nop
28D1: 00          nop
28D2: 00          nop
28D3: 00          nop
28D4: 00          nop
28D5: 00          nop
28D6: 00          nop
28D7: 00          nop
28D8: 00          nop
28D9: 00          nop
28DA: 00          nop
28DB: 00          nop
28DC: 00          nop
28DD: 00          nop
28DE: 00          nop
28DF: 00          nop
28E0: 00          nop
28E1: 00          nop
28E2: 00          nop
28E3: 00          nop
28E4: 00          nop
28E5: 00          nop
28E6: 00          nop
28E7: 00          nop
28E8: 00          nop
28E9: 00          nop
28EA: 00          nop
28EB: 00          nop
28EC: 00          nop
28ED: 00          nop
28EE: 00          nop
28EF: 00          nop
28F0: 00          nop
28F1: 00          nop
28F2: 00          nop
28F3: 00          nop
28F4: 00          nop
28F5: 00          nop
28F6: 00          nop
28F7: 00          nop
28F8: 00          nop
28F9: 00          nop
28FA: 00          nop
28FB: 00          nop
28FC: 00          nop
28FD: 00          nop
28FE: 00          nop
28FF: 00          nop
2900: 00          nop
2901: 00          nop
2902: 00          nop
2903: 00          nop
2904: 00          nop
2905: 00          nop
2906: 00          nop
2907: 00          nop
2908: 00          nop
2909: 00          nop
290A: 00          nop
290B: 00          nop
290C: 00          nop
290D: 00          nop
290E: 00          nop
290F: 00          nop
2910: 00          nop
2911: 00          nop
2912: 00          nop
2913: 00          nop
2914: 00          nop
2915: 00          nop
2916: 00          nop
2917: 00          nop
2918: 00          nop
2919: 00          nop
291A: 00          nop
291B: 00          nop
291C: 00          nop
291D: 00          nop
291E: 00          nop
291F: 00          nop
2920: 00          nop
2921: 00          nop
2922: 00          nop
2923: 00          nop
2924: 00          nop
2925: 00          nop
2926: 00          nop
2927: 00          nop
2928: 00          nop
2929: 00          nop
292A: 00          nop
292B: 00          nop
292C: 00          nop
292D: 00          nop
292E: 00          nop
292F: 00          nop
2930: 00          nop
2931: 00          nop
2932: 00          nop
2933: 00          nop
2934: 00          nop
2935: 00          nop
2936: 00          nop
2937: 00          nop
2938: 00          nop
2939: 00          nop
293A: 00          nop
293B: 00          nop
293C: 00          nop
293D: 00          nop
293E: 00          nop
293F: 00          nop
2940: 00          nop
2941: 00          nop
2942: 00          nop
2943: 00          nop
2944: 00          nop
2945: 00          nop
2946: 00          nop
2947: 00          nop
2948: 00          nop
2949: 00          nop
294A: 00          nop
294B: 00          nop
294C: 00          nop
294D: 00          nop
294E: 00          nop
294F: 00          nop
2950: 00          nop
2951: 00          nop
2952: 00          nop
2953: 00          nop
2954: 00          nop
2955: 00          nop
2956: 00          nop
2957: 00          nop
2958: 00          nop
2959: 00          nop
295A: 00          nop
295B: 00          nop
295C: 00          nop
295D: 00          nop
295E: 00          nop
295F: 00          nop
2960: 00          nop
2961: 00          nop
2962: 00          nop
2963: 00          nop
2964: 00          nop
2965: 00          nop
2966: 00          nop
2967: 00          nop
2968: 00          nop
2969: 00          nop
296A: 00          nop
296B: 00          nop
296C: 00          nop
296D: 00          nop
296E: 00          nop
296F: 00          nop
2970: 00          nop
2971: 00          nop
2972: 00          nop
2973: 00          nop
2974: 00          nop
2975: 00          nop
2976: 00          nop
2977: 00          nop
2978: 00          nop
2979: 00          nop
297A: 00          nop
297B: 00          nop
297C: 00          nop
297D: 00          nop
297E: 00          nop
297F: 00          nop
2980: 00          nop
2981: 00          nop
2982: 00          nop
2983: 00          nop
2984: 00          nop
2985: 00          nop
2986: 00          nop
2987: 00          nop
2988: 00          nop
2989: 00          nop
298A: 00          nop
298B: 00          nop
298C: 00          nop
298D: 00          nop
298E: 00          nop
298F: 00          nop
2990: 00          nop
2991: 00          nop
2992: 00          nop
2993: 00          nop
2994: 00          nop
2995: 00          nop
2996: 00          nop
2997: 00          nop
2998: 00          nop
2999: 00          nop
299A: 00          nop
299B: 00          nop
299C: 00          nop
299D: 00          nop
299E: 00          nop
299F: 00          nop
29A0: 00          nop
29A1: 00          nop
29A2: 00          nop
29A3: 00          nop
29A4: 00          nop
29A5: 00          nop
29A6: 00          nop
29A7: 00          nop
29A8: 00          nop
29A9: 00          nop
29AA: 00          nop
29AB: 00          nop
29AC: 00          nop
29AD: 00          nop
29AE: 00          nop
29AF: 00          nop
29B0: 00          nop
29B1: 00          nop
29B2: 00          nop
29B3: 00          nop
29B4: 00          nop
29B5: 00          nop
29B6: 00          nop
29B7: 00          nop
29B8: 00          nop
29B9: 00          nop
29BA: 00          nop
29BB: 00          nop
29BC: 00          nop
29BD: 00          nop
29BE: 00          nop
29BF: 00          nop
29C0: 00          nop
29C1: 00          nop
29C2: 00          nop
29C3: 00          nop
29C4: 00          nop
29C5: 00          nop
29C6: 00          nop
29C7: 00          nop
29C8: 00          nop
29C9: 00          nop
29CA: 00          nop
29CB: 00          nop
29CC: 00          nop
29CD: 00          nop
29CE: 00          nop
29CF: 00          nop
29D0: 00          nop
29D1: 00          nop
29D2: 00          nop
29D3: 00          nop
29D4: 00          nop
29D5: 00          nop
29D6: 00          nop
29D7: 00          nop
29D8: 00          nop
29D9: 00          nop
29DA: 00          nop
29DB: 00          nop
29DC: 00          nop
29DD: 00          nop
29DE: 00          nop
29DF: 00          nop
29E0: 00          nop
29E1: 00          nop
29E2: 00          nop
29E3: 00          nop
29E4: 00          nop
29E5: 00          nop
29E6: 00          nop
29E7: 00          nop
29E8: 00          nop
29E9: 00          nop
29EA: 00          nop
29EB: 00          nop
29EC: 00          nop
29ED: 00          nop
29EE: 00          nop
29EF: 00          nop
29F0: 00          nop
29F1: 00          nop
29F2: 00          nop
29F3: 00          nop
29F4: 00          nop
29F5: 00          nop
29F6: 00          nop
29F7: 00          nop
29F8: 00          nop
29F9: 00          nop
29FA: 00          nop
29FB: 00          nop
29FC: 00          nop
29FD: 00          nop
29FE: 00          nop
29FF: 00          nop
2A00: 00          nop
2A01: 00          nop
2A02: 00          nop
2A03: 00          nop
2A04: 00          nop
2A05: 00          nop
2A06: 00          nop
2A07: 00          nop
2A08: 00          nop
2A09: 00          nop
2A0A: 00          nop
2A0B: 00          nop
2A0C: 00          nop
2A0D: 00          nop
2A0E: 00          nop
2A0F: 00          nop
2A10: 00          nop
2A11: 00          nop
2A12: 00          nop
2A13: 00          nop
2A14: 00          nop
2A15: 00          nop
2A16: 00          nop
2A17: 00          nop
2A18: 00          nop
2A19: 00          nop
2A1A: 00          nop
2A1B: 00          nop
2A1C: 00          nop
2A1D: 00          nop
2A1E: 00          nop
2A1F: 00          nop
2A20: 00          nop
2A21: 00          nop
2A22: 00          nop
2A23: 00          nop
2A24: 00          nop
2A25: 00          nop
2A26: 00          nop
2A27: 00          nop
2A28: 00          nop
2A29: 00          nop
2A2A: 00          nop
2A2B: 00          nop
2A2C: 00          nop
2A2D: 00          nop
2A2E: 00          nop
2A2F: 00          nop
2A30: 00          nop
2A31: 00          nop
2A32: 00          nop
2A33: 00          nop
2A34: 00          nop
2A35: 00          nop
2A36: 00          nop
2A37: 00          nop
2A38: 00          nop
2A39: 00          nop
2A3A: 00          nop
2A3B: 00          nop
2A3C: 00          nop
2A3D: 00          nop
2A3E: 00          nop
2A3F: 00          nop
2A40: 00          nop
2A41: 00          nop
2A42: 00          nop
2A43: 00          nop
2A44: 00          nop
2A45: 00          nop
2A46: 00          nop
2A47: 00          nop
2A48: 00          nop
2A49: 00          nop
2A4A: 00          nop
2A4B: 00          nop
2A4C: 00          nop
2A4D: 00          nop
2A4E: 00          nop
2A4F: 00          nop
2A50: 00          nop
2A51: 00          nop
2A52: 00          nop
2A53: 00          nop
2A54: 00          nop
2A55: 00          nop
2A56: 00          nop
2A57: 00          nop
2A58: 00          nop
2A59: 00          nop
2A5A: 00          nop
2A5B: 00          nop
2A5C: 00          nop
2A5D: 00          nop
2A5E: 00          nop
2A5F: 00          nop
2A60: 00          nop
2A61: 00          nop
2A62: 00          nop
2A63: 00          nop
2A64: 00          nop
2A65: 00          nop
2A66: 00          nop
2A67: 00          nop
2A68: 00          nop
2A69: 00          nop
2A6A: 00          nop
2A6B: 00          nop
2A6C: 00          nop
2A6D: 00          nop
2A6E: 00          nop
2A6F: 00          nop
2A70: 00          nop
2A71: 00          nop
2A72: 00          nop
2A73: 00          nop
2A74: 00          nop
2A75: 00          nop
2A76: 00          nop
2A77: 00          nop
2A78: 00          nop
2A79: 00          nop
2A7A: 00          nop
2A7B: 00          nop
2A7C: 00          nop
2A7D: 00          nop
2A7E: 00          nop
2A7F: 00          nop
2A80: 00          nop
2A81: 00          nop
2A82: 00          nop
2A83: 00          nop
2A84: 00          nop
2A85: 00          nop
2A86: 00          nop
2A87: 00          nop
2A88: 00          nop
2A89: 00          nop
2A8A: 00          nop
2A8B: 00          nop
2A8C: 00          nop
2A8D: 00          nop
2A8E: 00          nop
2A8F: 00          nop
2A90: 00          nop
2A91: 00          nop
2A92: 00          nop
2A93: 00          nop
2A94: 00          nop
2A95: 00          nop
2A96: 00          nop
2A97: 00          nop
2A98: 00          nop
2A99: 00          nop
2A9A: 00          nop
2A9B: 00          nop
2A9C: 00          nop
2A9D: 00          nop
2A9E: 00          nop
2A9F: 00          nop
2AA0: 00          nop
2AA1: 00          nop
2AA2: 00          nop
2AA3: 00          nop
2AA4: 00          nop
2AA5: 00          nop
2AA6: 00          nop
2AA7: 00          nop
2AA8: 00          nop
2AA9: 00          nop
2AAA: 00          nop
2AAB: 00          nop
2AAC: 00          nop
2AAD: 00          nop
2AAE: 00          nop
2AAF: 00          nop
2AB0: 00          nop
2AB1: 00          nop
2AB2: 00          nop
2AB3: 00          nop
2AB4: 00          nop
2AB5: 00          nop
2AB6: 00          nop
2AB7: 00          nop
2AB8: 00          nop
2AB9: 00          nop
2ABA: 00          nop
2ABB: 00          nop
2ABC: 00          nop
2ABD: 00          nop
2ABE: 00          nop
2ABF: 00          nop
2AC0: 00          nop
2AC1: 00          nop
2AC2: 00          nop
2AC3: 00          nop
2AC4: 00          nop
2AC5: 00          nop
2AC6: 00          nop
2AC7: 00          nop
2AC8: 00          nop
2AC9: 00          nop
2ACA: 00          nop
2ACB: 00          nop
2ACC: 00          nop
2ACD: 00          nop
2ACE: 00          nop
2ACF: 00          nop
2AD0: 00          nop
2AD1: 00          nop
2AD2: 00          nop
2AD3: 00          nop
2AD4: 00          nop
2AD5: 00          nop
2AD6: 00          nop
2AD7: 00          nop
2AD8: 00          nop
2AD9: 00          nop
2ADA: 00          nop
2ADB: 00          nop
2ADC: 00          nop
2ADD: 00          nop
2ADE: 00          nop
2ADF: 00          nop
2AE0: 00          nop
2AE1: 00          nop
2AE2: 00          nop
2AE3: 00          nop
2AE4: 00          nop
2AE5: 00          nop
2AE6: 00          nop
2AE7: 00          nop
2AE8: 00          nop
2AE9: 00          nop
2AEA: 00          nop
2AEB: 00          nop
2AEC: 00          nop
2AED: 00          nop
2AEE: 00          nop
2AEF: 00          nop
2AF0: 00          nop
2AF1: 00          nop
2AF2: 00          nop
2AF3: 00          nop
2AF4: 00          nop
2AF5: 00          nop
2AF6: 00          nop
2AF7: 00          nop
2AF8: 00          nop
2AF9: 00          nop
2AFA: 00          nop
2AFB: 00          nop
2AFC: 00          nop
2AFD: 00          nop
2AFE: 00          nop
2AFF: 00          nop
2B00: 00          nop
2B01: 00          nop
2B02: 00          nop
2B03: 00          nop
2B04: 00          nop
2B05: 00          nop
2B06: 00          nop
2B07: 00          nop
2B08: 00          nop
2B09: 00          nop
2B0A: 00          nop
2B0B: 00          nop
2B0C: 00          nop
2B0D: 00          nop
2B0E: 00          nop
2B0F: 00          nop
2B10: 00          nop
2B11: 00          nop
2B12: 00          nop
2B13: 00          nop
2B14: 00          nop
2B15: 00          nop
2B16: 00          nop
2B17: 00          nop
2B18: 00          nop
2B19: 00          nop
2B1A: 00          nop
2B1B: 00          nop
2B1C: 00          nop
2B1D: 00          nop
2B1E: 00          nop
2B1F: 00          nop
2B20: 00          nop
2B21: 00          nop
2B22: 00          nop
2B23: 00          nop
2B24: 00          nop
2B25: 00          nop
2B26: 00          nop
2B27: 00          nop
2B28: 00          nop
2B29: 00          nop
2B2A: 00          nop
2B2B: 00          nop
2B2C: 00          nop
2B2D: 00          nop
2B2E: 00          nop
2B2F: 00          nop
2B30: 00          nop
2B31: 00          nop
2B32: 00          nop
2B33: 00          nop
2B34: 00          nop
2B35: 00          nop
2B36: 00          nop
2B37: 00          nop
2B38: 00          nop
2B39: 00          nop
2B3A: 00          nop
2B3B: 00          nop
2B3C: 00          nop
2B3D: 00          nop
2B3E: 00          nop
2B3F: 00          nop
2B40: 00          nop
2B41: 00          nop
2B42: 00          nop
2B43: 00          nop
2B44: 00          nop
2B45: 00          nop
2B46: 00          nop
2B47: 00          nop
2B48: 00          nop
2B49: 00          nop
2B4A: 00          nop
2B4B: 00          nop
2B4C: 00          nop
2B4D: 00          nop
2B4E: 00          nop
2B4F: 00          nop
2B50: 00          nop
2B51: 00          nop
2B52: 00          nop
2B53: 00          nop
2B54: 00          nop
2B55: 00          nop
2B56: 00          nop
2B57: 00          nop
2B58: 00          nop
2B59: 00          nop
2B5A: 00          nop
2B5B: 00          nop
2B5C: 00          nop
2B5D: 00          nop
2B5E: 00          nop
2B5F: 00          nop
2B60: 00          nop
2B61: 00          nop
2B62: 00          nop
2B63: 00          nop
2B64: 00          nop
2B65: 00          nop
2B66: 00          nop
2B67: 00          nop
2B68: 00          nop
2B69: 00          nop
2B6A: 00          nop
2B6B: 00          nop
2B6C: 00          nop
2B6D: 00          nop
2B6E: 00          nop
2B6F: 00          nop
2B70: 00          nop
2B71: 00          nop
2B72: 00          nop
2B73: 00          nop
2B74: 00          nop
2B75: 00          nop
2B76: 00          nop
2B77: 00          nop
2B78: 00          nop
2B79: 00          nop
2B7A: 00          nop
2B7B: 00          nop
2B7C: 00          nop
2B7D: 00          nop
2B7E: 00          nop
2B7F: 00          nop
2B80: 00          nop
2B81: 00          nop
2B82: 00          nop
2B83: 00          nop
2B84: 00          nop
2B85: 00          nop
2B86: 00          nop
2B87: 00          nop
2B88: 00          nop
2B89: 00          nop
2B8A: 00          nop
2B8B: 00          nop
2B8C: 00          nop
2B8D: 00          nop
2B8E: 00          nop
2B8F: 00          nop
2B90: 00          nop
2B91: 00          nop
2B92: 00          nop
2B93: 00          nop
2B94: 00          nop
2B95: 00          nop
2B96: 00          nop
2B97: 00          nop
2B98: 00          nop
2B99: 00          nop
2B9A: 00          nop
2B9B: 00          nop
2B9C: 00          nop
2B9D: 00          nop
2B9E: 00          nop
2B9F: 00          nop
2BA0: 00          nop
2BA1: 00          nop
2BA2: 00          nop
2BA3: 00          nop
2BA4: 00          nop
2BA5: 00          nop
2BA6: 00          nop
2BA7: 00          nop
2BA8: 00          nop
2BA9: 00          nop
2BAA: 00          nop
2BAB: 00          nop
2BAC: 00          nop
2BAD: 00          nop
2BAE: 00          nop
2BAF: 00          nop
2BB0: 00          nop
2BB1: 00          nop
2BB2: 00          nop
2BB3: 00          nop
2BB4: 00          nop
2BB5: 00          nop
2BB6: 00          nop
2BB7: 00          nop
2BB8: 00          nop
2BB9: 00          nop
2BBA: 00          nop
2BBB: 00          nop
2BBC: 00          nop
2BBD: 00          nop
2BBE: 00          nop
2BBF: 00          nop
2BC0: 00          nop
2BC1: 00          nop
2BC2: 00          nop
2BC3: 00          nop
2BC4: 00          nop
2BC5: 00          nop
2BC6: 00          nop
2BC7: 00          nop
2BC8: 00          nop
2BC9: 00          nop
2BCA: 00          nop
2BCB: 00          nop
2BCC: 00          nop
2BCD: 00          nop
2BCE: 00          nop
2BCF: 00          nop
2BD0: 00          nop
2BD1: 00          nop
2BD2: 00          nop
2BD3: 00          nop
2BD4: 00          nop
2BD5: 00          nop
2BD6: 00          nop
2BD7: 00          nop
2BD8: 00          nop
2BD9: 00          nop
2BDA: 00          nop
2BDB: 00          nop
2BDC: 00          nop
2BDD: 00          nop
2BDE: 00          nop
2BDF: 00          nop
2BE0: 00          nop
2BE1: 00          nop
2BE2: 00          nop
2BE3: 00          nop
2BE4: 00          nop
2BE5: 00          nop
2BE6: 00          nop
2BE7: 00          nop
2BE8: 00          nop
2BE9: 00          nop
2BEA: 00          nop
2BEB: 00          nop
2BEC: 00          nop
2BED: 00          nop
2BEE: 00          nop
2BEF: 00          nop
2BF0: 00          nop
2BF1: 00          nop
2BF2: 00          nop
2BF3: 00          nop
2BF4: 00          nop
2BF5: 00          nop
2BF6: 00          nop
2BF7: 00          nop
2BF8: 00          nop
2BF9: 00          nop
2BFA: 00          nop
2BFB: 00          nop
2BFC: 00          nop
2BFD: 00          nop
2BFE: 00          nop
2BFF: 00          nop
2C00: 00          nop
2C01: 00          nop
2C02: 00          nop
2C03: 00          nop
2C04: 00          nop
2C05: 00          nop
2C06: 00          nop
2C07: 00          nop
2C08: 00          nop
2C09: 00          nop
2C0A: 00          nop
2C0B: 00          nop
2C0C: 00          nop
2C0D: 00          nop
2C0E: 00          nop
2C0F: 00          nop
2C10: 00          nop
2C11: 00          nop
2C12: 00          nop
2C13: 00          nop
2C14: 00          nop
2C15: 00          nop
2C16: 00          nop
2C17: 00          nop
2C18: 00          nop
2C19: 00          nop
2C1A: 00          nop
2C1B: 00          nop
2C1C: 00          nop
2C1D: 00          nop
2C1E: 00          nop
2C1F: 00          nop
2C20: 00          nop
2C21: 00          nop
2C22: 00          nop
2C23: 00          nop
2C24: 00          nop
2C25: 00          nop
2C26: 00          nop
2C27: 00          nop
2C28: 00          nop
2C29: 00          nop
2C2A: 00          nop
2C2B: 00          nop
2C2C: 00          nop
2C2D: 00          nop
2C2E: 00          nop
2C2F: 00          nop
2C30: 00          nop
2C31: 00          nop
2C32: 00          nop
2C33: 00          nop
2C34: 00          nop
2C35: 00          nop
2C36: 00          nop
2C37: 00          nop
2C38: 00          nop
2C39: 00          nop
2C3A: 00          nop
2C3B: 00          nop
2C3C: 00          nop
2C3D: 00          nop
2C3E: 00          nop
2C3F: 00          nop
2C40: 00          nop
2C41: 00          nop
2C42: 00          nop
2C43: 00          nop
2C44: 00          nop
2C45: 00          nop
2C46: 00          nop
2C47: 00          nop
2C48: 00          nop
2C49: 00          nop
2C4A: 00          nop
2C4B: 00          nop
2C4C: 00          nop
2C4D: 00          nop
2C4E: 00          nop
2C4F: 00          nop
2C50: 00          nop
2C51: 00          nop
2C52: 00          nop
2C53: 00          nop
2C54: 00          nop
2C55: 00          nop
2C56: 00          nop
2C57: 00          nop
2C58: 00          nop
2C59: 00          nop
2C5A: 00          nop
2C5B: 00          nop
2C5C: 00          nop
2C5D: 00          nop
2C5E: 00          nop
2C5F: 00          nop
2C60: 00          nop
2C61: 00          nop
2C62: 00          nop
2C63: 00          nop
2C64: 00          nop
2C65: 00          nop
2C66: 00          nop
2C67: 00          nop
2C68: 00          nop
2C69: 00          nop
2C6A: 00          nop
2C6B: 00          nop
2C6C: 00          nop
2C6D: 00          nop
2C6E: 00          nop
2C6F: 00          nop
2C70: 00          nop
2C71: 00          nop
2C72: 00          nop
2C73: 00          nop
2C74: 00          nop
2C75: 00          nop
2C76: 00          nop
2C77: 00          nop
2C78: 00          nop
2C79: 00          nop
2C7A: 00          nop
2C7B: 00          nop
2C7C: 00          nop
2C7D: 00          nop
2C7E: 00          nop
2C7F: 00          nop
2C80: 00          nop
2C81: 00          nop
2C82: 00          nop
2C83: 00          nop
2C84: 00          nop
2C85: 00          nop
2C86: 00          nop
2C87: 00          nop
2C88: 00          nop
2C89: 00          nop
2C8A: 00          nop
2C8B: 00          nop
2C8C: 00          nop
2C8D: 00          nop
2C8E: 00          nop
2C8F: 00          nop
2C90: 00          nop
2C91: 00          nop
2C92: 00          nop
2C93: 00          nop
2C94: 00          nop
2C95: 00          nop
2C96: 00          nop
2C97: 00          nop
2C98: 00          nop
2C99: 00          nop
2C9A: 00          nop
2C9B: 00          nop
2C9C: 00          nop
2C9D: 00          nop
2C9E: 00          nop
2C9F: 00          nop
2CA0: 00          nop
2CA1: 00          nop
2CA2: 00          nop
2CA3: 00          nop
2CA4: 00          nop
2CA5: 00          nop
2CA6: 00          nop
2CA7: 00          nop
2CA8: 00          nop
2CA9: 00          nop
2CAA: 00          nop
2CAB: 00          nop
2CAC: 00          nop
2CAD: 00          nop
2CAE: 00          nop
2CAF: 00          nop
2CB0: 00          nop
2CB1: 00          nop
2CB2: 00          nop
2CB3: 00          nop
2CB4: 00          nop
2CB5: 00          nop
2CB6: 00          nop
2CB7: 00          nop
2CB8: 00          nop
2CB9: 00          nop
2CBA: 00          nop
2CBB: 00          nop
2CBC: 00          nop
2CBD: 00          nop
2CBE: 00          nop
2CBF: 00          nop
2CC0: 00          nop
2CC1: 00          nop
2CC2: 00          nop
2CC3: 00          nop
2CC4: 00          nop
2CC5: 00          nop
2CC6: 00          nop
2CC7: 00          nop
2CC8: 00          nop
2CC9: 00          nop
2CCA: 00          nop
2CCB: 00          nop
2CCC: 00          nop
2CCD: 00          nop
2CCE: 00          nop
2CCF: 00          nop
2CD0: 00          nop
2CD1: 00          nop
2CD2: 00          nop
2CD3: 00          nop
2CD4: 00          nop
2CD5: 00          nop
2CD6: 00          nop
2CD7: 00          nop
2CD8: 00          nop
2CD9: 00          nop
2CDA: 00          nop
2CDB: 00          nop
2CDC: 00          nop
2CDD: 00          nop
2CDE: 00          nop
2CDF: 00          nop
2CE0: 00          nop
2CE1: 00          nop
2CE2: 00          nop
2CE3: 00          nop
2CE4: 00          nop
2CE5: 00          nop
2CE6: 00          nop
2CE7: 00          nop
2CE8: 00          nop
2CE9: 00          nop
2CEA: 00          nop
2CEB: 00          nop
2CEC: 00          nop
2CED: 00          nop
2CEE: 00          nop
2CEF: 00          nop
2CF0: 00          nop
2CF1: 00          nop
2CF2: 00          nop
2CF3: 00          nop
2CF4: 00          nop
2CF5: 00          nop
2CF6: 00          nop
2CF7: 00          nop
2CF8: 00          nop
2CF9: 00          nop
2CFA: 00          nop
2CFB: 00          nop
2CFC: 00          nop
2CFD: 00          nop
2CFE: 00          nop
2CFF: 00          nop
2D00: 00          nop
2D01: 00          nop
2D02: 00          nop
2D03: 00          nop
2D04: 00          nop
2D05: 00          nop
2D06: 00          nop
2D07: 00          nop
2D08: 00          nop
2D09: 00          nop
2D0A: 00          nop
2D0B: 00          nop
2D0C: 00          nop
2D0D: 00          nop
2D0E: 00          nop
2D0F: 00          nop
2D10: 00          nop
2D11: 00          nop
2D12: 00          nop
2D13: 00          nop
2D14: 00          nop
2D15: 00          nop
2D16: 00          nop
2D17: 00          nop
2D18: 00          nop
2D19: 00          nop
2D1A: 00          nop
2D1B: 00          nop
2D1C: 00          nop
2D1D: 00          nop
2D1E: 00          nop
2D1F: 00          nop
2D20: 00          nop
2D21: 00          nop
2D22: 00          nop
2D23: 00          nop
2D24: 00          nop
2D25: 00          nop
2D26: 00          nop
2D27: 00          nop
2D28: 00          nop
2D29: 00          nop
2D2A: 00          nop
2D2B: 00          nop
2D2C: 00          nop
2D2D: 00          nop
2D2E: 00          nop
2D2F: 00          nop
2D30: 00          nop
2D31: 00          nop
2D32: 00          nop
2D33: 00          nop
2D34: 00          nop
2D35: 00          nop
2D36: 00          nop
2D37: 00          nop
2D38: 00          nop
2D39: 00          nop
2D3A: 00          nop
2D3B: 00          nop
2D3C: 00          nop
2D3D: 00          nop
2D3E: 00          nop
2D3F: 00          nop
2D40: 00          nop
2D41: 00          nop
2D42: 00          nop
2D43: 00          nop
2D44: 00          nop
2D45: 00          nop
2D46: 00          nop
2D47: 00          nop
2D48: 00          nop
2D49: 00          nop
2D4A: 00          nop
2D4B: 00          nop
2D4C: 00          nop
2D4D: 00          nop
2D4E: 00          nop
2D4F: 00          nop
2D50: 00          nop
2D51: 00          nop
2D52: 00          nop
2D53: 00          nop
2D54: 00          nop
2D55: 00          nop
2D56: 00          nop
2D57: 00          nop
2D58: 00          nop
2D59: 00          nop
2D5A: 00          nop
2D5B: 00          nop
2D5C: 00          nop
2D5D: 00          nop
2D5E: 00          nop
2D5F: 00          nop
2D60: 00          nop
2D61: 00          nop
2D62: 00          nop
2D63: 00          nop
2D64: 00          nop
2D65: 00          nop
2D66: 00          nop
2D67: 00          nop
2D68: 00          nop
2D69: 00          nop
2D6A: 00          nop
2D6B: 00          nop
2D6C: 00          nop
2D6D: 00          nop
2D6E: 00          nop
2D6F: 00          nop
2D70: 00          nop
2D71: 00          nop
2D72: 00          nop
2D73: 00          nop
2D74: 00          nop
2D75: 00          nop
2D76: 00          nop
2D77: 00          nop
2D78: 00          nop
2D79: 00          nop
2D7A: 00          nop
2D7B: 00          nop
2D7C: 00          nop
2D7D: 00          nop
2D7E: 00          nop
2D7F: 00          nop
2D80: 00          nop
2D81: 00          nop
2D82: 00          nop
2D83: 00          nop
2D84: 00          nop
2D85: 00          nop
2D86: 00          nop
2D87: 00          nop
2D88: 00          nop
2D89: 00          nop
2D8A: 00          nop
2D8B: 00          nop
2D8C: 00          nop
2D8D: 00          nop
2D8E: 00          nop
2D8F: 00          nop
2D90: 00          nop
2D91: 00          nop
2D92: 00          nop
2D93: 00          nop
2D94: 00          nop
2D95: 00          nop
2D96: 00          nop
2D97: 00          nop
2D98: 00          nop
2D99: 00          nop
2D9A: 00          nop
2D9B: 00          nop
2D9C: 00          nop
2D9D: 00          nop
2D9E: 00          nop
2D9F: 00          nop
2DA0: 00          nop
2DA1: 00          nop
2DA2: 00          nop
2DA3: 00          nop
2DA4: 00          nop
2DA5: 00          nop
2DA6: 00          nop
2DA7: 00          nop
2DA8: 00          nop
2DA9: 00          nop
2DAA: 00          nop
2DAB: 00          nop
2DAC: 00          nop
2DAD: 00          nop
2DAE: 00          nop
2DAF: 00          nop
2DB0: 00          nop
2DB1: 00          nop
2DB2: 00          nop
2DB3: 00          nop
2DB4: 00          nop
2DB5: 00          nop
2DB6: 00          nop
2DB7: 00          nop
2DB8: 00          nop
2DB9: 00          nop
2DBA: 00          nop
2DBB: 00          nop
2DBC: 00          nop
2DBD: 00          nop
2DBE: 00          nop
2DBF: 00          nop
2DC0: 00          nop
2DC1: 00          nop
2DC2: 00          nop
2DC3: 00          nop
2DC4: 00          nop
2DC5: 00          nop
2DC6: 00          nop
2DC7: 00          nop
2DC8: 00          nop
2DC9: 00          nop
2DCA: 00          nop
2DCB: 00          nop
2DCC: 00          nop
2DCD: 00          nop
2DCE: 00          nop
2DCF: 00          nop
2DD0: 00          nop
2DD1: 00          nop
2DD2: 00          nop
2DD3: 00          nop
2DD4: 00          nop
2DD5: 00          nop
2DD6: 00          nop
2DD7: 00          nop
2DD8: 00          nop
2DD9: 00          nop
2DDA: 00          nop
2DDB: 00          nop
2DDC: 00          nop
2DDD: 00          nop
2DDE: 00          nop
2DDF: 00          nop
2DE0: 00          nop
2DE1: 00          nop
2DE2: 00          nop
2DE3: 00          nop
2DE4: 00          nop
2DE5: 00          nop
2DE6: 00          nop
2DE7: 00          nop
2DE8: 00          nop
2DE9: 00          nop
2DEA: 00          nop
2DEB: 00          nop
2DEC: 00          nop
2DED: 00          nop
2DEE: 00          nop
2DEF: 00          nop
2DF0: 00          nop
2DF1: 00          nop
2DF2: 00          nop
2DF3: 00          nop
2DF4: 00          nop
2DF5: 00          nop
2DF6: 00          nop
2DF7: 00          nop
2DF8: 00          nop
2DF9: 00          nop
2DFA: 00          nop
2DFB: 00          nop
2DFC: 00          nop
2DFD: 00          nop
2DFE: 00          nop
2DFF: 00          nop
2E00: 00          nop
2E01: 00          nop
2E02: 00          nop
2E03: 00          nop
2E04: 00          nop
2E05: 00          nop
2E06: 00          nop
2E07: 00          nop
2E08: 00          nop
2E09: 00          nop
2E0A: 00          nop
2E0B: 00          nop
2E0C: 00          nop
2E0D: 00          nop
2E0E: 00          nop
2E0F: 00          nop
2E10: 00          nop
2E11: 00          nop
2E12: 00          nop
2E13: 00          nop
2E14: 00          nop
2E15: 00          nop
2E16: 00          nop
2E17: 00          nop
2E18: 00          nop
2E19: 00          nop
2E1A: 00          nop
2E1B: 00          nop
2E1C: 00          nop
2E1D: 00          nop
2E1E: 00          nop
2E1F: 00          nop
2E20: 00          nop
2E21: 00          nop
2E22: 00          nop
2E23: 00          nop
2E24: 00          nop
2E25: 00          nop
2E26: 00          nop
2E27: 00          nop
2E28: 00          nop
2E29: 00          nop
2E2A: 00          nop
2E2B: 00          nop
2E2C: 00          nop
2E2D: 00          nop
2E2E: 00          nop
2E2F: 00          nop
2E30: 00          nop
2E31: 00          nop
2E32: 00          nop
2E33: 00          nop
2E34: 00          nop
2E35: 00          nop
2E36: 00          nop
2E37: 00          nop
2E38: 00          nop
2E39: 00          nop
2E3A: 00          nop
2E3B: 00          nop
2E3C: 00          nop
2E3D: 00          nop
2E3E: 00          nop
2E3F: 00          nop
2E40: 00          nop
2E41: 00          nop
2E42: 00          nop
2E43: 00          nop
2E44: 00          nop
2E45: 00          nop
2E46: 00          nop
2E47: 00          nop
2E48: 00          nop
2E49: 00          nop
2E4A: 00          nop
2E4B: 00          nop
2E4C: 00          nop
2E4D: 00          nop
2E4E: 00          nop
2E4F: 00          nop
2E50: 00          nop
2E51: 00          nop
2E52: 00          nop
2E53: 00          nop
2E54: 00          nop
2E55: 00          nop
2E56: 00          nop
2E57: 00          nop
2E58: 00          nop
2E59: 00          nop
2E5A: 00          nop
2E5B: 00          nop
2E5C: 00          nop
2E5D: 00          nop
2E5E: 00          nop
2E5F: 00          nop
2E60: 00          nop
2E61: 00          nop
2E62: 00          nop
2E63: 00          nop
2E64: 00          nop
2E65: 00          nop
2E66: 00          nop
2E67: 00          nop
2E68: 00          nop
2E69: 00          nop
2E6A: 00          nop
2E6B: 00          nop
2E6C: 00          nop
2E6D: 00          nop
2E6E: 00          nop
2E6F: 00          nop
2E70: 00          nop
2E71: 00          nop
2E72: 00          nop
2E73: 00          nop
2E74: 00          nop
2E75: 00          nop
2E76: 00          nop
2E77: 00          nop
2E78: 00          nop
2E79: 00          nop
2E7A: 00          nop
2E7B: 00          nop
2E7C: 00          nop
2E7D: 00          nop
2E7E: 00          nop
2E7F: 00          nop
2E80: 00          nop
2E81: 00          nop
2E82: 00          nop
2E83: 00          nop
2E84: 00          nop
2E85: 00          nop
2E86: 00          nop
2E87: 00          nop
2E88: 00          nop
2E89: 00          nop
2E8A: 00          nop
2E8B: 00          nop
2E8C: 00          nop
2E8D: 00          nop
2E8E: 00          nop
2E8F: 00          nop
2E90: 00          nop
2E91: 00          nop
2E92: 00          nop
2E93: 00          nop
2E94: 00          nop
2E95: 00          nop
2E96: 00          nop
2E97: 00          nop
2E98: 00          nop
2E99: 00          nop
2E9A: 00          nop
2E9B: 00          nop
2E9C: 00          nop
2E9D: 00          nop
2E9E: 00          nop
2E9F: 00          nop
2EA0: 00          nop
2EA1: 00          nop
2EA2: 00          nop
2EA3: 00          nop
2EA4: 00          nop
2EA5: 00          nop
2EA6: 00          nop
2EA7: 00          nop
2EA8: 00          nop
2EA9: 00          nop
2EAA: 00          nop
2EAB: 00          nop
2EAC: 00          nop
2EAD: 00          nop
2EAE: 00          nop
2EAF: 00          nop
2EB0: 00          nop
2EB1: 00          nop
2EB2: 00          nop
2EB3: 00          nop
2EB4: 00          nop
2EB5: 00          nop
2EB6: 00          nop
2EB7: 00          nop
2EB8: 00          nop
2EB9: 00          nop
2EBA: 00          nop
2EBB: 00          nop
2EBC: 00          nop
2EBD: 00          nop
2EBE: 00          nop
2EBF: 00          nop
2EC0: 00          nop
2EC1: 00          nop
2EC2: 00          nop
2EC3: 00          nop
2EC4: 00          nop
2EC5: 00          nop
2EC6: 00          nop
2EC7: 00          nop
2EC8: 00          nop
2EC9: 00          nop
2ECA: 00          nop
2ECB: 00          nop
2ECC: 00          nop
2ECD: 00          nop
2ECE: 00          nop
2ECF: 00          nop
2ED0: 00          nop
2ED1: 00          nop
2ED2: 00          nop
2ED3: 00          nop
2ED4: 00          nop
2ED5: 00          nop
2ED6: 00          nop
2ED7: 00          nop
2ED8: 00          nop
2ED9: 00          nop
2EDA: 00          nop
2EDB: 00          nop
2EDC: 00          nop
2EDD: 00          nop
2EDE: 00          nop
2EDF: 00          nop
2EE0: 00          nop
2EE1: 00          nop
2EE2: 00          nop
2EE3: 00          nop
2EE4: 00          nop
2EE5: 00          nop
2EE6: 00          nop
2EE7: 00          nop
2EE8: 00          nop
2EE9: 00          nop
2EEA: 00          nop
2EEB: 00          nop
2EEC: 00          nop
2EED: 00          nop
2EEE: 00          nop
2EEF: 00          nop
2EF0: 00          nop
2EF1: 00          nop
2EF2: 00          nop
2EF3: 00          nop
2EF4: 00          nop
2EF5: 00          nop
2EF6: 00          nop
2EF7: 00          nop
2EF8: 00          nop
2EF9: 00          nop
2EFA: 00          nop
2EFB: 00          nop
2EFC: 00          nop
2EFD: 00          nop
2EFE: 00          nop
2EFF: 00          nop
2F00: 00          nop
2F01: 00          nop
2F02: 00          nop
2F03: 00          nop
2F04: 00          nop
2F05: 00          nop
2F06: 00          nop
2F07: 00          nop
2F08: 00          nop
2F09: 00          nop
2F0A: 00          nop
2F0B: 00          nop
2F0C: 00          nop
2F0D: 00          nop
2F0E: 00          nop
2F0F: 00          nop
2F10: 00          nop
2F11: 00          nop
2F12: 00          nop
2F13: 00          nop
2F14: 00          nop
2F15: 00          nop
2F16: 00          nop
2F17: 00          nop
2F18: 00          nop
2F19: 00          nop
2F1A: 00          nop
2F1B: 00          nop
2F1C: 00          nop
2F1D: 00          nop
2F1E: 00          nop
2F1F: 00          nop
2F20: 00          nop
2F21: 00          nop
2F22: 00          nop
2F23: 00          nop
2F24: 00          nop
2F25: 00          nop
2F26: 00          nop
2F27: 00          nop
2F28: 00          nop
2F29: 00          nop
2F2A: 00          nop
2F2B: 00          nop
2F2C: 00          nop
2F2D: 00          nop
2F2E: 00          nop
2F2F: 00          nop
2F30: 00          nop
2F31: 00          nop
2F32: 00          nop
2F33: 00          nop
2F34: 00          nop
2F35: 00          nop
2F36: 00          nop
2F37: 00          nop
2F38: 00          nop
2F39: 00          nop
2F3A: 00          nop
2F3B: 00          nop
2F3C: 00          nop
2F3D: 00          nop
2F3E: 00          nop
2F3F: 00          nop
2F40: 00          nop
2F41: 00          nop
2F42: 00          nop
2F43: 00          nop
2F44: 00          nop
2F45: 00          nop
2F46: 00          nop
2F47: 00          nop
2F48: 00          nop
2F49: 00          nop
2F4A: 00          nop
2F4B: 00          nop
2F4C: 00          nop
2F4D: 00          nop
2F4E: 00          nop
2F4F: 00          nop
2F50: 00          nop
2F51: 00          nop
2F52: 00          nop
2F53: 00          nop
2F54: 00          nop
2F55: 00          nop
2F56: 00          nop
2F57: 00          nop
2F58: 00          nop
2F59: 00          nop
2F5A: 00          nop
2F5B: 00          nop
2F5C: 00          nop
2F5D: 00          nop
2F5E: 00          nop
2F5F: 00          nop
2F60: 00          nop
2F61: 00          nop
2F62: 00          nop
2F63: 00          nop
2F64: 00          nop
2F65: 00          nop
2F66: 00          nop
2F67: 00          nop
2F68: 00          nop
2F69: 00          nop
2F6A: 00          nop
2F6B: 00          nop
2F6C: 00          nop
2F6D: 00          nop
2F6E: 00          nop
2F6F: 00          nop
2F70: 00          nop
2F71: 00          nop
2F72: 00          nop
2F73: 00          nop
2F74: 00          nop
2F75: 00          nop
2F76: 00          nop
2F77: 00          nop
2F78: 00          nop
2F79: 00          nop
2F7A: 00          nop
2F7B: 00          nop
2F7C: 00          nop
2F7D: 00          nop
2F7E: 00          nop
2F7F: 00          nop
2F80: 00          nop
2F81: 00          nop
2F82: 00          nop
2F83: 00          nop
2F84: 00          nop
2F85: 00          nop
2F86: 00          nop
2F87: 00          nop
2F88: 00          nop
2F89: 00          nop
2F8A: 00          nop
2F8B: 00          nop
2F8C: 00          nop
2F8D: 00          nop
2F8E: 00          nop
2F8F: 00          nop
2F90: 00          nop
2F91: 00          nop
2F92: 00          nop
2F93: 00          nop
2F94: 00          nop
2F95: 00          nop
2F96: 00          nop
2F97: 00          nop
2F98: 00          nop
2F99: 00          nop
2F9A: 00          nop
2F9B: 00          nop
2F9C: 00          nop
2F9D: 00          nop
2F9E: 00          nop
2F9F: 00          nop
2FA0: 00          nop
2FA1: 00          nop
2FA2: 00          nop
2FA3: 00          nop
2FA4: 00          nop
2FA5: 00          nop
2FA6: 00          nop
2FA7: 00          nop
2FA8: 00          nop
2FA9: 00          nop
2FAA: 00          nop
2FAB: 00          nop
2FAC: 00          nop
2FAD: 00          nop
2FAE: 00          nop
2FAF: 00          nop
2FB0: 00          nop
2FB1: 00          nop
2FB2: 00          nop
2FB3: 00          nop
2FB4: 00          nop
2FB5: 00          nop
2FB6: 00          nop
2FB7: 00          nop
2FB8: 00          nop
2FB9: 00          nop
2FBA: 00          nop
2FBB: 00          nop
2FBC: 00          nop
2FBD: 00          nop
2FBE: 00          nop
2FBF: 00          nop
2FC0: 00          nop
2FC1: 00          nop
2FC2: 00          nop
2FC3: 00          nop
2FC4: 00          nop
2FC5: 00          nop
2FC6: 00          nop
2FC7: 00          nop
2FC8: 00          nop
2FC9: 00          nop
2FCA: 00          nop
2FCB: 00          nop
2FCC: 00          nop
2FCD: 00          nop
2FCE: 00          nop
2FCF: 00          nop
2FD0: 00          nop
2FD1: 00          nop
2FD2: 00          nop
2FD3: 00          nop
2FD4: 00          nop
2FD5: 00          nop
2FD6: 00          nop
2FD7: 00          nop
2FD8: 00          nop
2FD9: 00          nop
2FDA: 00          nop
2FDB: 00          nop
2FDC: 00          nop
2FDD: 00          nop
2FDE: 00          nop
2FDF: 00          nop
2FE0: 00          nop
2FE1: 00          nop
2FE2: 00          nop
2FE3: 00          nop
2FE4: 00          nop
2FE5: 00          nop
2FE6: 00          nop
2FE7: 00          nop
2FE8: 00          nop
2FE9: 00          nop
2FEA: 00          nop
2FEB: 00          nop
2FEC: 00          nop
2FED: 00          nop
2FEE: 00          nop
2FEF: 00          nop
2FF0: 00          nop
2FF1: 00          nop
2FF2: 00          nop
2FF3: 00          nop
2FF4: 00          nop
2FF5: 00          nop
2FF6: 00          nop
2FF7: 00          nop
2FF8: 00          nop
2FF9: 00          nop
2FFA: 00          nop
2FFB: 00          nop
2FFC: 00          nop
2FFD: 00          nop
2FFE: 00          nop
2FFF: FD          db   $fd
3000: 00          nop
3001: 00          nop
3002: 00          nop
3003: 00          nop
3004: 00          nop
3005: 00          nop
3006: 00          nop
3007: 00          nop
3008: 00          nop
3009: 00          nop
300A: 00          nop
300B: 00          nop
300C: 00          nop
300D: 00          nop
300E: 00          nop
300F: 00          nop
3010: 00          nop
3011: 00          nop
3012: 00          nop
3013: 00          nop
3014: 00          nop
3015: 00          nop
3016: 00          nop
3017: 00          nop
3018: 00          nop
3019: 00          nop
301A: 00          nop
301B: 00          nop
301C: 00          nop
301D: 00          nop
301E: 00          nop
301F: 00          nop
3020: 00          nop
3021: 00          nop
3022: 00          nop
3023: 00          nop
3024: 00          nop
3025: 00          nop
3026: 00          nop
3027: 00          nop
3028: 00          nop
3029: 00          nop
302A: 00          nop
302B: 00          nop
302C: 00          nop
302D: 00          nop
302E: 00          nop
302F: 00          nop
3030: 00          nop
3031: 00          nop
3032: 00          nop
3033: 00          nop
3034: 00          nop
3035: 00          nop
3036: 00          nop
3037: 00          nop
3038: 00          nop
3039: 00          nop
303A: 00          nop
303B: 00          nop
303C: 00          nop
303D: 00          nop
303E: 00          nop
303F: 00          nop
3040: 00          nop
3041: 00          nop
3042: 00          nop
3043: 00          nop
3044: 00          nop
3045: 00          nop
3046: 00          nop
3047: 00          nop
3048: 00          nop
3049: 00          nop
304A: 00          nop
304B: 00          nop
304C: 00          nop
304D: 00          nop
304E: 00          nop
304F: 00          nop
3050: 00          nop
3051: 00          nop
3052: 00          nop
3053: 00          nop
3054: 00          nop
3055: 00          nop
3056: 00          nop
3057: 00          nop
3058: 00          nop
3059: 00          nop
305A: 00          nop
305B: 00          nop
305C: 00          nop
305D: 00          nop
305E: 00          nop
305F: 00          nop
3060: 00          nop
3061: 00          nop
3062: 00          nop
3063: 00          nop
3064: 00          nop
3065: 00          nop
3066: 00          nop
3067: 00          nop
3068: 00          nop
3069: 00          nop
306A: 00          nop
306B: 00          nop
306C: 00          nop
306D: 00          nop
306E: 00          nop
306F: 00          nop
3070: 00          nop
3071: 00          nop
3072: 00          nop
3073: 00          nop
3074: 00          nop
3075: 00          nop
3076: 00          nop
3077: 00          nop
3078: 00          nop
3079: 00          nop
307A: 00          nop
307B: 00          nop
307C: 00          nop
307D: 00          nop
307E: 00          nop
307F: 00          nop
3080: 00          nop
3081: 00          nop
3082: 00          nop
3083: 00          nop
3084: 00          nop
3085: 00          nop
3086: 00          nop
3087: 00          nop
3088: 00          nop
3089: 00          nop
308A: 00          nop
308B: 00          nop
308C: 00          nop
308D: 00          nop
308E: 00          nop
308F: 00          nop
3090: 00          nop
3091: 00          nop
3092: 00          nop
3093: 00          nop
3094: 00          nop
3095: 00          nop
3096: 00          nop
3097: 00          nop
3098: 00          nop
3099: 00          nop
309A: 00          nop
309B: 00          nop
309C: 00          nop
309D: 00          nop
309E: 00          nop
309F: 00          nop
30A0: 00          nop
30A1: 00          nop
30A2: 00          nop
30A3: 00          nop
30A4: 00          nop
30A5: 00          nop
30A6: 00          nop
30A7: 00          nop
30A8: 00          nop
30A9: 00          nop
30AA: 00          nop
30AB: 00          nop
30AC: 00          nop
30AD: 00          nop
30AE: 00          nop
30AF: 00          nop
30B0: 00          nop
30B1: 00          nop
30B2: 00          nop
30B3: 00          nop
30B4: 00          nop
30B5: 00          nop
30B6: 00          nop
30B7: 00          nop
30B8: 00          nop
30B9: 00          nop
30BA: 00          nop
30BB: 00          nop
30BC: 00          nop
30BD: 00          nop
30BE: 00          nop
30BF: 00          nop
30C0: 00          nop
30C1: 00          nop
30C2: 00          nop
30C3: 00          nop
30C4: 00          nop
30C5: 00          nop
30C6: 00          nop
30C7: 00          nop
30C8: 00          nop
30C9: 00          nop
30CA: 00          nop
30CB: 00          nop
30CC: 00          nop
30CD: 00          nop
30CE: 00          nop
30CF: 00          nop
30D0: 00          nop
30D1: 00          nop
30D2: 00          nop
30D3: 00          nop
30D4: 00          nop
30D5: 00          nop
30D6: 00          nop
30D7: 00          nop
30D8: 00          nop
30D9: 00          nop
30DA: 00          nop
30DB: 00          nop
30DC: 00          nop
30DD: 00          nop
30DE: 00          nop
30DF: 00          nop
30E0: 00          nop
30E1: 00          nop
30E2: 00          nop
30E3: 00          nop
30E4: 00          nop
30E5: 00          nop
30E6: 00          nop
30E7: 00          nop
30E8: 00          nop
30E9: 00          nop
30EA: 00          nop
30EB: 00          nop
30EC: 00          nop
30ED: 00          nop
30EE: 00          nop
30EF: 00          nop
30F0: 00          nop
30F1: 00          nop
30F2: 00          nop
30F3: 00          nop
30F4: 00          nop
30F5: 00          nop
30F6: 00          nop
30F7: 00          nop
30F8: 00          nop
30F9: 00          nop
30FA: 00          nop
30FB: 00          nop
30FC: 00          nop
30FD: 00          nop
30FE: 00          nop
30FF: 00          nop
3100: 00          nop
3101: 00          nop
3102: 00          nop
3103: 00          nop
3104: 00          nop
3105: 00          nop
3106: 00          nop
3107: 00          nop
3108: 00          nop
3109: 00          nop
310A: 00          nop
310B: 00          nop
310C: 00          nop
310D: 00          nop
310E: 00          nop
310F: 00          nop
3110: 00          nop
3111: 00          nop
3112: 00          nop
3113: 00          nop
3114: 00          nop
3115: 00          nop
3116: 00          nop
3117: 00          nop
3118: 00          nop
3119: 00          nop
311A: 00          nop
311B: 00          nop
311C: 00          nop
311D: 00          nop
311E: 00          nop
311F: 00          nop
3120: 00          nop
3121: 00          nop
3122: 00          nop
3123: 00          nop
3124: 00          nop
3125: 00          nop
3126: 00          nop
3127: 00          nop
3128: 00          nop
3129: 00          nop
312A: 00          nop
312B: 00          nop
312C: 00          nop
312D: 00          nop
312E: 00          nop
312F: 00          nop
3130: 00          nop
3131: 00          nop
3132: 00          nop
3133: 00          nop
3134: 00          nop
3135: 00          nop
3136: 00          nop
3137: 00          nop
3138: 00          nop
3139: 00          nop
313A: 00          nop
313B: 00          nop
313C: 00          nop
313D: 00          nop
313E: 00          nop
313F: 00          nop
3140: 00          nop
3141: 00          nop
3142: 00          nop
3143: 00          nop
3144: 00          nop
3145: 00          nop
3146: 00          nop
3147: 00          nop
3148: 00          nop
3149: 00          nop
314A: 00          nop
314B: 00          nop
314C: 00          nop
314D: 00          nop
314E: 00          nop
314F: 00          nop
3150: 00          nop
3151: 00          nop
3152: 00          nop
3153: 00          nop
3154: 00          nop
3155: 00          nop
3156: 00          nop
3157: 00          nop
3158: 00          nop
3159: 00          nop
315A: 00          nop
315B: 00          nop
315C: 00          nop
315D: 00          nop
315E: 00          nop
315F: 00          nop
3160: 00          nop
3161: 00          nop
3162: 00          nop
3163: 00          nop
3164: 00          nop
3165: 00          nop
3166: 00          nop
3167: 00          nop
3168: 00          nop
3169: 00          nop
316A: 00          nop
316B: 00          nop
316C: 00          nop
316D: 00          nop
316E: 00          nop
316F: 00          nop
3170: 00          nop
3171: 00          nop
3172: 00          nop
3173: 00          nop
3174: 00          nop
3175: 00          nop
3176: 00          nop
3177: 00          nop
3178: 00          nop
3179: 00          nop
317A: 00          nop
317B: 00          nop
317C: 00          nop
317D: 00          nop
317E: 00          nop
317F: 00          nop
3180: 00          nop
3181: 00          nop
3182: 00          nop
3183: 00          nop
3184: 00          nop
3185: 00          nop
3186: 00          nop
3187: 00          nop
3188: 00          nop
3189: 00          nop
318A: 00          nop
318B: 00          nop
318C: 00          nop
318D: 00          nop
318E: 00          nop
318F: 00          nop
3190: 00          nop
3191: 00          nop
3192: 00          nop
3193: 00          nop
3194: 00          nop
3195: 00          nop
3196: 00          nop
3197: 00          nop
3198: 00          nop
3199: 00          nop
319A: 00          nop
319B: 00          nop
319C: 00          nop
319D: 00          nop
319E: 00          nop
319F: 00          nop
31A0: 00          nop
31A1: 00          nop
31A2: 00          nop
31A3: 00          nop
31A4: 00          nop
31A5: 00          nop
31A6: 00          nop
31A7: 00          nop
31A8: 00          nop
31A9: 00          nop
31AA: 00          nop
31AB: 00          nop
31AC: 00          nop
31AD: 00          nop
31AE: 00          nop
31AF: 00          nop
31B0: 00          nop
31B1: 00          nop
31B2: 00          nop
31B3: 00          nop
31B4: 00          nop
31B5: 00          nop
31B6: 00          nop
31B7: 00          nop
31B8: 00          nop
31B9: 00          nop
31BA: 00          nop
31BB: 00          nop
31BC: 00          nop
31BD: 00          nop
31BE: 00          nop
31BF: 00          nop
31C0: 00          nop
31C1: 00          nop
31C2: 00          nop
31C3: 00          nop
31C4: 00          nop
31C5: 00          nop
31C6: 00          nop
31C7: 00          nop
31C8: 00          nop
31C9: 00          nop
31CA: 00          nop
31CB: 00          nop
31CC: 00          nop
31CD: 00          nop
31CE: 00          nop
31CF: 00          nop
31D0: 00          nop
31D1: 00          nop
31D2: 00          nop
31D3: 00          nop
31D4: 00          nop
31D5: 00          nop
31D6: 00          nop
31D7: 00          nop
31D8: 00          nop
31D9: 00          nop
31DA: 00          nop
31DB: 00          nop
31DC: 00          nop
31DD: 00          nop
31DE: 00          nop
31DF: 00          nop
31E0: 00          nop
31E1: 00          nop
31E2: 00          nop
31E3: 00          nop
31E4: 00          nop
31E5: 00          nop
31E6: 00          nop
31E7: 00          nop
31E8: 00          nop
31E9: 00          nop
31EA: 00          nop
31EB: 00          nop
31EC: 00          nop
31ED: 00          nop
31EE: 00          nop
31EF: 00          nop
31F0: 00          nop
31F1: 00          nop
31F2: 00          nop
31F3: 00          nop
31F4: 00          nop
31F5: 00          nop
31F6: 00          nop
31F7: 00          nop
31F8: 00          nop
31F9: 00          nop
31FA: 00          nop
31FB: 00          nop
31FC: 00          nop
31FD: 00          nop
31FE: 00          nop
31FF: 00          nop
3200: 00          nop
3201: 00          nop
3202: 00          nop
3203: 00          nop
3204: 00          nop
3205: 00          nop
3206: 00          nop
3207: 00          nop
3208: 00          nop
3209: 00          nop
320A: 00          nop
320B: 00          nop
320C: 00          nop
320D: 00          nop
320E: 00          nop
320F: 00          nop
3210: 00          nop
3211: 00          nop
3212: 00          nop
3213: 00          nop
3214: 00          nop
3215: 00          nop
3216: 00          nop
3217: 00          nop
3218: 00          nop
3219: 00          nop
321A: 00          nop
321B: 00          nop
321C: 00          nop
321D: 00          nop
321E: 00          nop
321F: 00          nop
3220: 00          nop
3221: 00          nop
3222: 00          nop
3223: 00          nop
3224: 00          nop
3225: 00          nop
3226: 00          nop
3227: 00          nop
3228: 00          nop
3229: 00          nop
322A: 00          nop
322B: 00          nop
322C: 00          nop
322D: 00          nop
322E: 00          nop
322F: 00          nop
3230: 00          nop
3231: 00          nop
3232: 00          nop
3233: 00          nop
3234: 00          nop
3235: 00          nop
3236: 00          nop
3237: 00          nop
3238: 00          nop
3239: 00          nop
323A: 00          nop
323B: 00          nop
323C: 00          nop
323D: 00          nop
323E: 00          nop
323F: 00          nop
3240: 00          nop
3241: 00          nop
3242: 00          nop
3243: 00          nop
3244: 00          nop
3245: 00          nop
3246: 00          nop
3247: 00          nop
3248: 00          nop
3249: 00          nop
324A: 00          nop
324B: 00          nop
324C: 00          nop
324D: 00          nop
324E: 00          nop
324F: 00          nop
3250: 00          nop
3251: 00          nop
3252: 00          nop
3253: 00          nop
3254: 00          nop
3255: 00          nop
3256: 00          nop
3257: 00          nop
3258: 00          nop
3259: 00          nop
325A: 00          nop
325B: 00          nop
325C: 00          nop
325D: 00          nop
325E: 00          nop
325F: 00          nop
3260: 00          nop
3261: 00          nop
3262: 00          nop
3263: 00          nop
3264: 00          nop
3265: 00          nop
3266: 00          nop
3267: 00          nop
3268: 00          nop
3269: 00          nop
326A: 00          nop
326B: 00          nop
326C: 00          nop
326D: 00          nop
326E: 00          nop
326F: 00          nop
3270: 00          nop
3271: 00          nop
3272: 00          nop
3273: 00          nop
3274: 00          nop
3275: 00          nop
3276: 00          nop
3277: 00          nop
3278: 00          nop
3279: 00          nop
327A: 00          nop
327B: 00          nop
327C: 00          nop
327D: 00          nop
327E: 00          nop
327F: 00          nop
3280: 00          nop
3281: 00          nop
3282: 00          nop
3283: 00          nop
3284: 00          nop
3285: 00          nop
3286: 00          nop
3287: 00          nop
3288: 00          nop
3289: 00          nop
328A: 00          nop
328B: 00          nop
328C: 00          nop
328D: 00          nop
328E: 00          nop
328F: 00          nop
3290: 00          nop
3291: 00          nop
3292: 00          nop
3293: 00          nop
3294: 00          nop
3295: 00          nop
3296: 00          nop
3297: 00          nop
3298: 00          nop
3299: 00          nop
329A: 00          nop
329B: 00          nop
329C: 00          nop
329D: 00          nop
329E: 00          nop
329F: 00          nop
32A0: 00          nop
32A1: 00          nop
32A2: 00          nop
32A3: 00          nop
32A4: 00          nop
32A5: 00          nop
32A6: 00          nop
32A7: 00          nop
32A8: 00          nop
32A9: 00          nop
32AA: 00          nop
32AB: 00          nop
32AC: 00          nop
32AD: 00          nop
32AE: 00          nop
32AF: 00          nop
32B0: 00          nop
32B1: 00          nop
32B2: 00          nop
32B3: 00          nop
32B4: 00          nop
32B5: 00          nop
32B6: 00          nop
32B7: 00          nop
32B8: 00          nop
32B9: 00          nop
32BA: 00          nop
32BB: 00          nop
32BC: 00          nop
32BD: 00          nop
32BE: 00          nop
32BF: 00          nop
32C0: 00          nop
32C1: 00          nop
32C2: 00          nop
32C3: 00          nop
32C4: 00          nop
32C5: 00          nop
32C6: 00          nop
32C7: 00          nop
32C8: 00          nop
32C9: 00          nop
32CA: 00          nop
32CB: 00          nop
32CC: 00          nop
32CD: 00          nop
32CE: 00          nop
32CF: 00          nop
32D0: 00          nop
32D1: 00          nop
32D2: 00          nop
32D3: 00          nop
32D4: 00          nop
32D5: 00          nop
32D6: 00          nop
32D7: 00          nop
32D8: 00          nop
32D9: 00          nop
32DA: 00          nop
32DB: 00          nop
32DC: 00          nop
32DD: 00          nop
32DE: 00          nop
32DF: 00          nop
32E0: 00          nop
32E1: 00          nop
32E2: 00          nop
32E3: 00          nop
32E4: 00          nop
32E5: 00          nop
32E6: 00          nop
32E7: 00          nop
32E8: 00          nop
32E9: 00          nop
32EA: 00          nop
32EB: 00          nop
32EC: 00          nop
32ED: 00          nop
32EE: 00          nop
32EF: 00          nop
32F0: 00          nop
32F1: 00          nop
32F2: 00          nop
32F3: 00          nop
32F4: 00          nop
32F5: 00          nop
32F6: 00          nop
32F7: 00          nop
32F8: 00          nop
32F9: 00          nop
32FA: 00          nop
32FB: 00          nop
32FC: 00          nop
32FD: 00          nop
32FE: 00          nop
32FF: 00          nop
3300: 00          nop
3301: 00          nop
3302: 00          nop
3303: 00          nop
3304: 00          nop
3305: 00          nop
3306: 00          nop
3307: 00          nop
3308: 00          nop
3309: 00          nop
330A: 00          nop
330B: 00          nop
330C: 00          nop
330D: 00          nop
330E: 00          nop
330F: 00          nop
3310: 00          nop
3311: 00          nop
3312: 00          nop
3313: 00          nop
3314: 00          nop
3315: 00          nop
3316: 00          nop
3317: 00          nop
3318: 00          nop
3319: 00          nop
331A: 00          nop
331B: 00          nop
331C: 00          nop
331D: 00          nop
331E: 00          nop
331F: 00          nop
3320: 00          nop
3321: 00          nop
3322: 00          nop
3323: 00          nop
3324: 00          nop
3325: 00          nop
3326: 00          nop
3327: 00          nop
3328: 00          nop
3329: 00          nop
332A: 00          nop
332B: 00          nop
332C: 00          nop
332D: 00          nop
332E: 00          nop
332F: 00          nop
3330: 00          nop
3331: 00          nop
3332: 00          nop
3333: 00          nop
3334: 00          nop
3335: 00          nop
3336: 00          nop
3337: 00          nop
3338: 00          nop
3339: 00          nop
333A: 00          nop
333B: 00          nop
333C: 00          nop
333D: 00          nop
333E: 00          nop
333F: 00          nop
3340: 00          nop
3341: 00          nop
3342: 00          nop
3343: 00          nop
3344: 00          nop
3345: 00          nop
3346: 00          nop
3347: 00          nop
3348: 00          nop
3349: 00          nop
334A: 00          nop
334B: 00          nop
334C: 00          nop
334D: 00          nop
334E: 00          nop
334F: 00          nop
3350: 00          nop
3351: 00          nop
3352: 00          nop
3353: 00          nop
3354: 00          nop
3355: 00          nop
3356: 00          nop
3357: 00          nop
3358: 00          nop
3359: 00          nop
335A: 00          nop
335B: 00          nop
335C: 00          nop
335D: 00          nop
335E: 00          nop
335F: 00          nop
3360: 00          nop
3361: 00          nop
3362: 00          nop
3363: 00          nop
3364: 00          nop
3365: 00          nop
3366: 00          nop
3367: 00          nop
3368: 00          nop
3369: 00          nop
336A: 00          nop
336B: 00          nop
336C: 00          nop
336D: 00          nop
336E: 00          nop
336F: 00          nop
3370: 00          nop
3371: 00          nop
3372: 00          nop
3373: 00          nop
3374: 00          nop
3375: 00          nop
3376: 00          nop
3377: 00          nop
3378: 00          nop
3379: 00          nop
337A: 00          nop
337B: 00          nop
337C: 00          nop
337D: 00          nop
337E: 00          nop
337F: 00          nop
3380: 00          nop
3381: 00          nop
3382: 00          nop
3383: 00          nop
3384: 00          nop
3385: 00          nop
3386: 00          nop
3387: 00          nop
3388: 00          nop
3389: 00          nop
338A: 00          nop
338B: 00          nop
338C: 00          nop
338D: 00          nop
338E: 00          nop
338F: 00          nop
3390: 00          nop
3391: 00          nop
3392: 00          nop
3393: 00          nop
3394: 00          nop
3395: 00          nop
3396: 00          nop
3397: 00          nop
3398: 00          nop
3399: 00          nop
339A: 00          nop
339B: 00          nop
339C: 00          nop
339D: 00          nop
339E: 00          nop
339F: 00          nop
33A0: 00          nop
33A1: 00          nop
33A2: 00          nop
33A3: 00          nop
33A4: 00          nop
33A5: 00          nop
33A6: 00          nop
33A7: 00          nop
33A8: 00          nop
33A9: 00          nop
33AA: 00          nop
33AB: 00          nop
33AC: 00          nop
33AD: 00          nop
33AE: 00          nop
33AF: 00          nop
33B0: 00          nop
33B1: 00          nop
33B2: 00          nop
33B3: 00          nop
33B4: 00          nop
33B5: 00          nop
33B6: 00          nop
33B7: 00          nop
33B8: 00          nop
33B9: 00          nop
33BA: 00          nop
33BB: 00          nop
33BC: 00          nop
33BD: 00          nop
33BE: 00          nop
33BF: 00          nop
33C0: 00          nop
33C1: 00          nop
33C2: 00          nop
33C3: 00          nop
33C4: 00          nop
33C5: 00          nop
33C6: 00          nop
33C7: 00          nop
33C8: 00          nop
33C9: 00          nop
33CA: 00          nop
33CB: 00          nop
33CC: 00          nop
33CD: 00          nop
33CE: 00          nop
33CF: 00          nop
33D0: 00          nop
33D1: 00          nop
33D2: 00          nop
33D3: 00          nop
33D4: 00          nop
33D5: 00          nop
33D6: 00          nop
33D7: 00          nop
33D8: 00          nop
33D9: 00          nop
33DA: 00          nop
33DB: 00          nop
33DC: 00          nop
33DD: 00          nop
33DE: 00          nop
33DF: 00          nop
33E0: 00          nop
33E1: 00          nop
33E2: 00          nop
33E3: 00          nop
33E4: 00          nop
33E5: 00          nop
33E6: 00          nop
33E7: 00          nop
33E8: 00          nop
33E9: 00          nop
33EA: 00          nop
33EB: 00          nop
33EC: 00          nop
33ED: 00          nop
33EE: 00          nop
33EF: 00          nop
33F0: 00          nop
33F1: 00          nop
33F2: 00          nop
33F3: 00          nop
33F4: 00          nop
33F5: 00          nop
33F6: 00          nop
33F7: 00          nop
33F8: 00          nop
33F9: 00          nop
33FA: 00          nop
33FB: 00          nop
33FC: 00          nop
33FD: 00          nop
33FE: 00          nop
33FF: 00          nop
3400: 00          nop
3401: 00          nop
3402: 00          nop
3403: 00          nop
3404: 00          nop
3405: 00          nop
3406: 00          nop
3407: 00          nop
3408: 00          nop
3409: 00          nop
340A: 00          nop
340B: 00          nop
340C: 00          nop
340D: 00          nop
340E: 00          nop
340F: 00          nop
3410: 00          nop
3411: 00          nop
3412: 00          nop
3413: 00          nop
3414: 00          nop
3415: 00          nop
3416: 00          nop
3417: 00          nop
3418: 00          nop
3419: 00          nop
341A: 00          nop
341B: 00          nop
341C: 00          nop
341D: 00          nop
341E: 00          nop
341F: 00          nop
3420: 00          nop
3421: 00          nop
3422: 00          nop
3423: 00          nop
3424: 00          nop
3425: 00          nop
3426: 00          nop
3427: 00          nop
3428: 00          nop
3429: 00          nop
342A: 00          nop
342B: 00          nop
342C: 00          nop
342D: 00          nop
342E: 00          nop
342F: 00          nop
3430: 00          nop
3431: 00          nop
3432: 00          nop
3433: 00          nop
3434: 00          nop
3435: 00          nop
3436: 00          nop
3437: 00          nop
3438: 00          nop
3439: 00          nop
343A: 00          nop
343B: 00          nop
343C: 00          nop
343D: 00          nop
343E: 00          nop
343F: 00          nop
3440: 00          nop
3441: 00          nop
3442: 00          nop
3443: 00          nop
3444: 00          nop
3445: 00          nop
3446: 00          nop
3447: 00          nop
3448: 00          nop
3449: 00          nop
344A: 00          nop
344B: 00          nop
344C: 00          nop
344D: 00          nop
344E: 00          nop
344F: 00          nop
3450: 00          nop
3451: 00          nop
3452: 00          nop
3453: 00          nop
3454: 00          nop
3455: 00          nop
3456: 00          nop
3457: 00          nop
3458: 00          nop
3459: 00          nop
345A: 00          nop
345B: 00          nop
345C: 00          nop
345D: 00          nop
345E: 00          nop
345F: 00          nop
3460: 00          nop
3461: 00          nop
3462: 00          nop
3463: 00          nop
3464: 00          nop
3465: 00          nop
3466: 00          nop
3467: 00          nop
3468: 00          nop
3469: 00          nop
346A: 00          nop
346B: 00          nop
346C: 00          nop
346D: 00          nop
346E: 00          nop
346F: 00          nop
3470: 00          nop
3471: 00          nop
3472: 00          nop
3473: 00          nop
3474: 00          nop
3475: 00          nop
3476: 00          nop
3477: 00          nop
3478: 00          nop
3479: 00          nop
347A: 00          nop
347B: 00          nop
347C: 00          nop
347D: 00          nop
347E: 00          nop
347F: 00          nop
3480: 00          nop
3481: 00          nop
3482: 00          nop
3483: 00          nop
3484: 00          nop
3485: 00          nop
3486: 00          nop
3487: 00          nop
3488: 00          nop
3489: 00          nop
348A: 00          nop
348B: 00          nop
348C: 00          nop
348D: 00          nop
348E: 00          nop
348F: 00          nop
3490: 00          nop
3491: 00          nop
3492: 00          nop
3493: 00          nop
3494: 00          nop
3495: 00          nop
3496: 00          nop
3497: 00          nop
3498: 00          nop
3499: 00          nop
349A: 00          nop
349B: 00          nop
349C: 00          nop
349D: 00          nop
349E: 00          nop
349F: 00          nop
34A0: 00          nop
34A1: 00          nop
34A2: 00          nop
34A3: 00          nop
34A4: 00          nop
34A5: 00          nop
34A6: 00          nop
34A7: 00          nop
34A8: 00          nop
34A9: 00          nop
34AA: 00          nop
34AB: 00          nop
34AC: 00          nop
34AD: 00          nop
34AE: 00          nop
34AF: 00          nop
34B0: 00          nop
34B1: 00          nop
34B2: 00          nop
34B3: 00          nop
34B4: 00          nop
34B5: 00          nop
34B6: 00          nop
34B7: 00          nop
34B8: 00          nop
34B9: 00          nop
34BA: 00          nop
34BB: 00          nop
34BC: 00          nop
34BD: 00          nop
34BE: 00          nop
34BF: 00          nop
34C0: 00          nop
34C1: 00          nop
34C2: 00          nop
34C3: 00          nop
34C4: 00          nop
34C5: 00          nop
34C6: 00          nop
34C7: 00          nop
34C8: 00          nop
34C9: 00          nop
34CA: 00          nop
34CB: 00          nop
34CC: 00          nop
34CD: 00          nop
34CE: 00          nop
34CF: 00          nop
34D0: 00          nop
34D1: 00          nop
34D2: 00          nop
34D3: 00          nop
34D4: 00          nop
34D5: 00          nop
34D6: 00          nop
34D7: 00          nop
34D8: 00          nop
34D9: 00          nop
34DA: 00          nop
34DB: 00          nop
34DC: 00          nop
34DD: 00          nop
34DE: 00          nop
34DF: 00          nop
34E0: 00          nop
34E1: 00          nop
34E2: 00          nop
34E3: 00          nop
34E4: 00          nop
34E5: 00          nop
34E6: 00          nop
34E7: 00          nop
34E8: 00          nop
34E9: 00          nop
34EA: 00          nop
34EB: 00          nop
34EC: 00          nop
34ED: 00          nop
34EE: 00          nop
34EF: 00          nop
34F0: 00          nop
34F1: 00          nop
34F2: 00          nop
34F3: 00          nop
34F4: 00          nop
34F5: 00          nop
34F6: 00          nop
34F7: 00          nop
34F8: 00          nop
34F9: 00          nop
34FA: 00          nop
34FB: 00          nop
34FC: 00          nop
34FD: 00          nop
34FE: 00          nop
34FF: 00          nop
3500: 00          nop
3501: 00          nop
3502: 00          nop
3503: 00          nop
3504: 00          nop
3505: 00          nop
3506: 00          nop
3507: 00          nop
3508: 00          nop
3509: 00          nop
350A: 00          nop
350B: 00          nop
350C: 00          nop
350D: 00          nop
350E: 00          nop
350F: 00          nop
3510: 00          nop
3511: 00          nop
3512: 00          nop
3513: 00          nop
3514: 00          nop
3515: 00          nop
3516: 00          nop
3517: 00          nop
3518: 00          nop
3519: 00          nop
351A: 00          nop
351B: 00          nop
351C: 00          nop
351D: 00          nop
351E: 00          nop
351F: 00          nop
3520: 00          nop
3521: 00          nop
3522: 00          nop
3523: 00          nop
3524: 00          nop
3525: 00          nop
3526: 00          nop
3527: 00          nop
3528: 00          nop
3529: 00          nop
352A: 00          nop
352B: 00          nop
352C: 00          nop
352D: 00          nop
352E: 00          nop
352F: 00          nop
3530: 00          nop
3531: 00          nop
3532: 00          nop
3533: 00          nop
3534: 00          nop
3535: 00          nop
3536: 00          nop
3537: 00          nop
3538: 00          nop
3539: 00          nop
353A: 00          nop
353B: 00          nop
353C: 00          nop
353D: 00          nop
353E: 00          nop
353F: 00          nop
3540: 00          nop
3541: 00          nop
3542: 00          nop
3543: 00          nop
3544: 00          nop
3545: 00          nop
3546: 00          nop
3547: 00          nop
3548: 00          nop
3549: 00          nop
354A: 00          nop
354B: 00          nop
354C: 00          nop
354D: 00          nop
354E: 00          nop
354F: 00          nop
3550: 00          nop
3551: 00          nop
3552: 00          nop
3553: 00          nop
3554: 00          nop
3555: 00          nop
3556: 00          nop
3557: 00          nop
3558: 00          nop
3559: 00          nop
355A: 00          nop
355B: 00          nop
355C: 00          nop
355D: 00          nop
355E: 00          nop
355F: 00          nop
3560: 00          nop
3561: 00          nop
3562: 00          nop
3563: 00          nop
3564: 00          nop
3565: 00          nop
3566: 00          nop
3567: 00          nop
3568: 00          nop
3569: 00          nop
356A: 00          nop
356B: 00          nop
356C: 00          nop
356D: 00          nop
356E: 00          nop
356F: 00          nop
3570: 00          nop
3571: 00          nop
3572: 00          nop
3573: 00          nop
3574: 00          nop
3575: 00          nop
3576: 00          nop
3577: 00          nop
3578: 00          nop
3579: 00          nop
357A: 00          nop
357B: 00          nop
357C: 00          nop
357D: 00          nop
357E: 00          nop
357F: 00          nop
3580: 00          nop
3581: 00          nop
3582: 00          nop
3583: 00          nop
3584: 00          nop
3585: 00          nop
3586: 00          nop
3587: 00          nop
3588: 00          nop
3589: 00          nop
358A: 00          nop
358B: 00          nop
358C: 00          nop
358D: 00          nop
358E: 00          nop
358F: 00          nop
3590: 00          nop
3591: 00          nop
3592: 00          nop
3593: 00          nop
3594: 00          nop
3595: 00          nop
3596: 00          nop
3597: 00          nop
3598: 00          nop
3599: 00          nop
359A: 00          nop
359B: 00          nop
359C: 00          nop
359D: 00          nop
359E: 00          nop
359F: 00          nop
35A0: 00          nop
35A1: 00          nop
35A2: 00          nop
35A3: 00          nop
35A4: 00          nop
35A5: 00          nop
35A6: 00          nop
35A7: 00          nop
35A8: 00          nop
35A9: 00          nop
35AA: 00          nop
35AB: 00          nop
35AC: 00          nop
35AD: 00          nop
35AE: 00          nop
35AF: 00          nop
35B0: 00          nop
35B1: 00          nop
35B2: 00          nop
35B3: 00          nop
35B4: 00          nop
35B5: 00          nop
35B6: 00          nop
35B7: 00          nop
35B8: 00          nop
35B9: 00          nop
35BA: 00          nop
35BB: 00          nop
35BC: 00          nop
35BD: 00          nop
35BE: 00          nop
35BF: 00          nop
35C0: 00          nop
35C1: 00          nop
35C2: 00          nop
35C3: 00          nop
35C4: 00          nop
35C5: 00          nop
35C6: 00          nop
35C7: 00          nop
35C8: 00          nop
35C9: 00          nop
35CA: 00          nop
35CB: 00          nop
35CC: 00          nop
35CD: 00          nop
35CE: 00          nop
35CF: 00          nop
35D0: 00          nop
35D1: 00          nop
35D2: 00          nop
35D3: 00          nop
35D4: 00          nop
35D5: 00          nop
35D6: 00          nop
35D7: 00          nop
35D8: 00          nop
35D9: 00          nop
35DA: 00          nop
35DB: 00          nop
35DC: 00          nop
35DD: 00          nop
35DE: 00          nop
35DF: 00          nop
35E0: 00          nop
35E1: 00          nop
35E2: 00          nop
35E3: 00          nop
35E4: 00          nop
35E5: 00          nop
35E6: 00          nop
35E7: 00          nop
35E8: 00          nop
35E9: 00          nop
35EA: 00          nop
35EB: 00          nop
35EC: 00          nop
35ED: 00          nop
35EE: 00          nop
35EF: 00          nop
35F0: 00          nop
35F1: 00          nop
35F2: 00          nop
35F3: 00          nop
35F4: 00          nop
35F5: 00          nop
35F6: 00          nop
35F7: 00          nop
35F8: 00          nop
35F9: 00          nop
35FA: 00          nop
35FB: 00          nop
35FC: 00          nop
35FD: 00          nop
35FE: 00          nop
35FF: 00          nop
3600: 00          nop
3601: 00          nop
3602: 00          nop
3603: 00          nop
3604: 00          nop
3605: 00          nop
3606: 00          nop
3607: 00          nop
3608: 00          nop
3609: 00          nop
360A: 00          nop
360B: 00          nop
360C: 00          nop
360D: 00          nop
360E: 00          nop
360F: 00          nop
3610: 00          nop
3611: 00          nop
3612: 00          nop
3613: 00          nop
3614: 00          nop
3615: 00          nop
3616: 00          nop
3617: 00          nop
3618: 00          nop
3619: 00          nop
361A: 00          nop
361B: 00          nop
361C: 00          nop
361D: 00          nop
361E: 00          nop
361F: 00          nop
3620: 00          nop
3621: 00          nop
3622: 00          nop
3623: 00          nop
3624: 00          nop
3625: 00          nop
3626: 00          nop
3627: 00          nop
3628: 00          nop
3629: 00          nop
362A: 00          nop
362B: 00          nop
362C: 00          nop
362D: 00          nop
362E: 00          nop
362F: 00          nop
3630: 00          nop
3631: 00          nop
3632: 00          nop
3633: 00          nop
3634: 00          nop
3635: 00          nop
3636: 00          nop
3637: 00          nop
3638: 00          nop
3639: 00          nop
363A: 00          nop
363B: 00          nop
363C: 00          nop
363D: 00          nop
363E: 00          nop
363F: 00          nop
3640: 00          nop
3641: 00          nop
3642: 00          nop
3643: 00          nop
3644: 00          nop
3645: 00          nop
3646: 00          nop
3647: 00          nop
3648: 00          nop
3649: 00          nop
364A: 00          nop
364B: 00          nop
364C: 00          nop
364D: 00          nop
364E: 00          nop
364F: 00          nop
3650: 00          nop
3651: 00          nop
3652: 00          nop
3653: 00          nop
3654: 00          nop
3655: 00          nop
3656: 00          nop
3657: 00          nop
3658: 00          nop
3659: 00          nop
365A: 00          nop
365B: 00          nop
365C: 00          nop
365D: 00          nop
365E: 00          nop
365F: 00          nop
3660: 00          nop
3661: 00          nop
3662: 00          nop
3663: 00          nop
3664: 00          nop
3665: 00          nop
3666: 00          nop
3667: 00          nop
3668: 00          nop
3669: 00          nop
366A: 00          nop
366B: 00          nop
366C: 00          nop
366D: 00          nop
366E: 00          nop
366F: 00          nop
3670: 00          nop
3671: 00          nop
3672: 00          nop
3673: 00          nop
3674: 00          nop
3675: 00          nop
3676: 00          nop
3677: 00          nop
3678: 00          nop
3679: 00          nop
367A: 00          nop
367B: 00          nop
367C: 00          nop
367D: 00          nop
367E: 00          nop
367F: 00          nop
3680: 00          nop
3681: 00          nop
3682: 00          nop
3683: 00          nop
3684: 00          nop
3685: 00          nop
3686: 00          nop
3687: 00          nop
3688: 00          nop
3689: 00          nop
368A: 00          nop
368B: 00          nop
368C: 00          nop
368D: 00          nop
368E: 00          nop
368F: 00          nop
3690: 00          nop
3691: 00          nop
3692: 00          nop
3693: 00          nop
3694: 00          nop
3695: 00          nop
3696: 00          nop
3697: 00          nop
3698: 00          nop
3699: 00          nop
369A: 00          nop
369B: 00          nop
369C: 00          nop
369D: 00          nop
369E: 00          nop
369F: 00          nop
36A0: 00          nop
36A1: 00          nop
36A2: 00          nop
36A3: 00          nop
36A4: 00          nop
36A5: 00          nop
36A6: 00          nop
36A7: 00          nop
36A8: 00          nop
36A9: 00          nop
36AA: 00          nop
36AB: 00          nop
36AC: 00          nop
36AD: 00          nop
36AE: 00          nop
36AF: 00          nop
36B0: 00          nop
36B1: 00          nop
36B2: 00          nop
36B3: 00          nop
36B4: 00          nop
36B5: 00          nop
36B6: 00          nop
36B7: 00          nop
36B8: 00          nop
36B9: 00          nop
36BA: 00          nop
36BB: 00          nop
36BC: 00          nop
36BD: 00          nop
36BE: 00          nop
36BF: 00          nop
36C0: 00          nop
36C1: 00          nop
36C2: 00          nop
36C3: 00          nop
36C4: 00          nop
36C5: 00          nop
36C6: 00          nop
36C7: 00          nop
36C8: 00          nop
36C9: 00          nop
36CA: 00          nop
36CB: 00          nop
36CC: 00          nop
36CD: 00          nop
36CE: 00          nop
36CF: 00          nop
36D0: 00          nop
36D1: 00          nop
36D2: 00          nop
36D3: 00          nop
36D4: 00          nop
36D5: 00          nop
36D6: 00          nop
36D7: 00          nop
36D8: 00          nop
36D9: 00          nop
36DA: 00          nop
36DB: 00          nop
36DC: 00          nop
36DD: 00          nop
36DE: 00          nop
36DF: 00          nop
36E0: 00          nop
36E1: 00          nop
36E2: 00          nop
36E3: 00          nop
36E4: 00          nop
36E5: 00          nop
36E6: 00          nop
36E7: 00          nop
36E8: 00          nop
36E9: 00          nop
36EA: 00          nop
36EB: 00          nop
36EC: 00          nop
36ED: 00          nop
36EE: 00          nop
36EF: 00          nop
36F0: 00          nop
36F1: 00          nop
36F2: 00          nop
36F3: 00          nop
36F4: 00          nop
36F5: 00          nop
36F6: 00          nop
36F7: 00          nop
36F8: 00          nop
36F9: 00          nop
36FA: 00          nop
36FB: 00          nop
36FC: 00          nop
36FD: 00          nop
36FE: 00          nop
36FF: 00          nop
3700: 00          nop
3701: 00          nop
3702: 00          nop
3703: 00          nop
3704: 00          nop
3705: 00          nop
3706: 00          nop
3707: 00          nop
3708: 00          nop
3709: 00          nop
370A: 00          nop
370B: 00          nop
370C: 00          nop
370D: 00          nop
370E: 00          nop
370F: 00          nop
3710: 00          nop
3711: 00          nop
3712: 00          nop
3713: 00          nop
3714: 00          nop
3715: 00          nop
3716: 00          nop
3717: 00          nop
3718: 00          nop
3719: 00          nop
371A: 00          nop
371B: 00          nop
371C: 00          nop
371D: 00          nop
371E: 00          nop
371F: 00          nop
3720: 00          nop
3721: 00          nop
3722: 00          nop
3723: 00          nop
3724: 00          nop
3725: 00          nop
3726: 00          nop
3727: 00          nop
3728: 00          nop
3729: 00          nop
372A: 00          nop
372B: 00          nop
372C: 00          nop
372D: 00          nop
372E: 00          nop
372F: 00          nop
3730: 00          nop
3731: 00          nop
3732: 00          nop
3733: 00          nop
3734: 00          nop
3735: 00          nop
3736: 00          nop
3737: 00          nop
3738: 00          nop
3739: 00          nop
373A: 00          nop
373B: 00          nop
373C: 00          nop
373D: 00          nop
373E: 00          nop
373F: 00          nop
3740: 00          nop
3741: 00          nop
3742: 00          nop
3743: 00          nop
3744: 00          nop
3745: 00          nop
3746: 00          nop
3747: 00          nop
3748: 00          nop
3749: 00          nop
374A: 00          nop
374B: 00          nop
374C: 00          nop
374D: 00          nop
374E: 00          nop
374F: 00          nop
3750: 00          nop
3751: 00          nop
3752: 00          nop
3753: 00          nop
3754: 00          nop
3755: 00          nop
3756: 00          nop
3757: 00          nop
3758: 00          nop
3759: 00          nop
375A: 00          nop
375B: 00          nop
375C: 00          nop
375D: 00          nop
375E: 00          nop
375F: 00          nop
3760: 00          nop
3761: 00          nop
3762: 00          nop
3763: 00          nop
3764: 00          nop
3765: 00          nop
3766: 00          nop
3767: 00          nop
3768: 00          nop
3769: 00          nop
376A: 00          nop
376B: 00          nop
376C: 00          nop
376D: 00          nop
376E: 00          nop
376F: 00          nop
3770: 00          nop
3771: 00          nop
3772: 00          nop
3773: 00          nop
3774: 00          nop
3775: 00          nop
3776: 00          nop
3777: 00          nop
3778: 00          nop
3779: 00          nop
377A: 00          nop
377B: 00          nop
377C: 00          nop
377D: 00          nop
377E: 00          nop
377F: 00          nop
3780: 00          nop
3781: 00          nop
3782: 00          nop
3783: 00          nop
3784: 00          nop
3785: 00          nop
3786: 00          nop
3787: 00          nop
3788: 00          nop
3789: 00          nop
378A: 00          nop
378B: 00          nop
378C: 00          nop
378D: 00          nop
378E: 00          nop
378F: 00          nop
3790: 00          nop
3791: 00          nop
3792: 00          nop
3793: 00          nop
3794: 00          nop
3795: 00          nop
3796: 00          nop
3797: 00          nop
3798: 00          nop
3799: 00          nop
379A: 00          nop
379B: 00          nop
379C: 00          nop
379D: 00          nop
379E: 00          nop
379F: 00          nop
37A0: 00          nop
37A1: 00          nop
37A2: 00          nop
37A3: 00          nop
37A4: 00          nop
37A5: 00          nop
37A6: 00          nop
37A7: 00          nop
37A8: 00          nop
37A9: 00          nop
37AA: 00          nop
37AB: 00          nop
37AC: 00          nop
37AD: 00          nop
37AE: 00          nop
37AF: 00          nop
37B0: 00          nop
37B1: 00          nop
37B2: 00          nop
37B3: 00          nop
37B4: 00          nop
37B5: 00          nop
37B6: 00          nop
37B7: 00          nop
37B8: 00          nop
37B9: 00          nop
37BA: 00          nop
37BB: 00          nop
37BC: 00          nop
37BD: 00          nop
37BE: 00          nop
37BF: 00          nop
37C0: 00          nop
37C1: 00          nop
37C2: 00          nop
37C3: 00          nop
37C4: 00          nop
37C5: 00          nop
37C6: 00          nop
37C7: 00          nop
37C8: 00          nop
37C9: 00          nop
37CA: 00          nop
37CB: 00          nop
37CC: 00          nop
37CD: 00          nop
37CE: 00          nop
37CF: 00          nop
37D0: 00          nop
37D1: 00          nop
37D2: 00          nop
37D3: 00          nop
37D4: 00          nop
37D5: 00          nop
37D6: 00          nop
37D7: 00          nop
37D8: 00          nop
37D9: 00          nop
37DA: 00          nop
37DB: 00          nop
37DC: 00          nop
37DD: 00          nop
37DE: 00          nop
37DF: 00          nop
37E0: 00          nop
37E1: 00          nop
37E2: 00          nop
37E3: 00          nop
37E4: 00          nop
37E5: 00          nop
37E6: 00          nop
37E7: 00          nop
37E8: 00          nop
37E9: 00          nop
37EA: 00          nop
37EB: 00          nop
37EC: 00          nop
37ED: 00          nop
37EE: 00          nop
37EF: 00          nop
37F0: 00          nop
37F1: 00          nop
37F2: 00          nop
37F3: 00          nop
37F4: 00          nop
37F5: 00          nop
37F6: 00          nop
37F7: 00          nop
37F8: 00          nop
37F9: 00          nop
37FA: 00          nop
37FB: 00          nop
37FC: 00          nop
37FD: 00          nop
37FE: 00          nop
37FF: 00          nop
3800: 00          nop
3801: 00          nop
3802: 00          nop
3803: 00          nop
3804: 00          nop
3805: 00          nop
3806: 00          nop
3807: 00          nop
3808: 00          nop
3809: 00          nop
380A: 00          nop
380B: 00          nop
380C: 00          nop
380D: 00          nop
380E: 00          nop
380F: 00          nop
3810: 00          nop
3811: 00          nop
3812: 00          nop
3813: 00          nop
3814: 00          nop
3815: 00          nop
3816: 00          nop
3817: 00          nop
3818: 00          nop
3819: 00          nop
381A: 00          nop
381B: 00          nop
381C: 00          nop
381D: 00          nop
381E: 00          nop
381F: 00          nop
3820: 00          nop
3821: 00          nop
3822: 00          nop
3823: 00          nop
3824: 00          nop
3825: 00          nop
3826: 00          nop
3827: 00          nop
3828: 00          nop
3829: 00          nop
382A: 00          nop
382B: 00          nop
382C: 00          nop
382D: 00          nop
382E: 00          nop
382F: 00          nop
3830: 00          nop
3831: 00          nop
3832: 00          nop
3833: 00          nop
3834: 00          nop
3835: 00          nop
3836: 00          nop
3837: 00          nop
3838: 00          nop
3839: 00          nop
383A: 00          nop
383B: 00          nop
383C: 00          nop
383D: 00          nop
383E: 00          nop
383F: 00          nop
3840: 00          nop
3841: 00          nop
3842: 00          nop
3843: 00          nop
3844: 00          nop
3845: 00          nop
3846: 00          nop
3847: 00          nop
3848: 00          nop
3849: 00          nop
384A: 00          nop
384B: 00          nop
384C: 00          nop
384D: 00          nop
384E: 00          nop
384F: 00          nop
3850: 00          nop
3851: 00          nop
3852: 00          nop
3853: 00          nop
3854: 00          nop
3855: 00          nop
3856: 00          nop
3857: 00          nop
3858: 00          nop
3859: 00          nop
385A: 00          nop
385B: 00          nop
385C: 00          nop
385D: 00          nop
385E: 00          nop
385F: 00          nop
3860: 00          nop
3861: 00          nop
3862: 00          nop
3863: 00          nop
3864: 00          nop
3865: 00          nop
3866: 00          nop
3867: 00          nop
3868: 00          nop
3869: 00          nop
386A: 00          nop
386B: 00          nop
386C: 00          nop
386D: 00          nop
386E: 00          nop
386F: 00          nop
3870: 00          nop
3871: 00          nop
3872: 00          nop
3873: 00          nop
3874: 00          nop
3875: 00          nop
3876: 00          nop
3877: 00          nop
3878: 00          nop
3879: 00          nop
387A: 00          nop
387B: 00          nop
387C: 00          nop
387D: 00          nop
387E: 00          nop
387F: 00          nop
3880: 00          nop
3881: 00          nop
3882: 00          nop
3883: 00          nop
3884: 00          nop
3885: 00          nop
3886: 00          nop
3887: 00          nop
3888: 00          nop
3889: 00          nop
388A: 00          nop
388B: 00          nop
388C: 00          nop
388D: 00          nop
388E: 00          nop
388F: 00          nop
3890: 00          nop
3891: 00          nop
3892: 00          nop
3893: 00          nop
3894: 00          nop
3895: 00          nop
3896: 00          nop
3897: 00          nop
3898: 00          nop
3899: 00          nop
389A: 00          nop
389B: 00          nop
389C: 00          nop
389D: 00          nop
389E: 00          nop
389F: 00          nop
38A0: 00          nop
38A1: 00          nop
38A2: 00          nop
38A3: 00          nop
38A4: 00          nop
38A5: 00          nop
38A6: 00          nop
38A7: 00          nop
38A8: 00          nop
38A9: 00          nop
38AA: 00          nop
38AB: 00          nop
38AC: 00          nop
38AD: 00          nop
38AE: 00          nop
38AF: 00          nop
38B0: 00          nop
38B1: 00          nop
38B2: 00          nop
38B3: 00          nop
38B4: 00          nop
38B5: 00          nop
38B6: 00          nop
38B7: 00          nop
38B8: 00          nop
38B9: 00          nop
38BA: 00          nop
38BB: 00          nop
38BC: 00          nop
38BD: 00          nop
38BE: 00          nop
38BF: 00          nop
38C0: 00          nop
38C1: 00          nop
38C2: 00          nop
38C3: 00          nop
38C4: 00          nop
38C5: 00          nop
38C6: 00          nop
38C7: 00          nop
38C8: 00          nop
38C9: 00          nop
38CA: 00          nop
38CB: 00          nop
38CC: 00          nop
38CD: 00          nop
38CE: 00          nop
38CF: 00          nop
38D0: 00          nop
38D1: 00          nop
38D2: 00          nop
38D3: 00          nop
38D4: 00          nop
38D5: 00          nop
38D6: 00          nop
38D7: 00          nop
38D8: 00          nop
38D9: 00          nop
38DA: 00          nop
38DB: 00          nop
38DC: 00          nop
38DD: 00          nop
38DE: 00          nop
38DF: 00          nop
38E0: 00          nop
38E1: 00          nop
38E2: 00          nop
38E3: 00          nop
38E4: 00          nop
38E5: 00          nop
38E6: 00          nop
38E7: 00          nop
38E8: 00          nop
38E9: 00          nop
38EA: 00          nop
38EB: 00          nop
38EC: 00          nop
38ED: 00          nop
38EE: 00          nop
38EF: 00          nop
38F0: 00          nop
38F1: 00          nop
38F2: 00          nop
38F3: 00          nop
38F4: 00          nop
38F5: 00          nop
38F6: 00          nop
38F7: 00          nop
38F8: 00          nop
38F9: 00          nop
38FA: 00          nop
38FB: 00          nop
38FC: 00          nop
38FD: 00          nop
38FE: 00          nop
38FF: 00          nop
3900: 00          nop
3901: 00          nop
3902: 00          nop
3903: 00          nop
3904: 00          nop
3905: 00          nop
3906: 00          nop
3907: 00          nop
3908: 00          nop
3909: 00          nop
390A: 00          nop
390B: 00          nop
390C: 00          nop
390D: 00          nop
390E: 00          nop
390F: 00          nop
3910: 00          nop
3911: 00          nop
3912: 00          nop
3913: 00          nop
3914: 00          nop
3915: 00          nop
3916: 00          nop
3917: 00          nop
3918: 00          nop
3919: 00          nop
391A: 00          nop
391B: 00          nop
391C: 00          nop
391D: 00          nop
391E: 00          nop
391F: 00          nop
3920: 00          nop
3921: 00          nop
3922: 00          nop
3923: 00          nop
3924: 00          nop
3925: 00          nop
3926: 00          nop
3927: 00          nop
3928: 00          nop
3929: 00          nop
392A: 00          nop
392B: 00          nop
392C: 00          nop
392D: 00          nop
392E: 00          nop
392F: 00          nop
3930: 00          nop
3931: 00          nop
3932: 00          nop
3933: 00          nop
3934: 00          nop
3935: 00          nop
3936: 00          nop
3937: 00          nop
3938: 00          nop
3939: 00          nop
393A: 00          nop
393B: 00          nop
393C: 00          nop
393D: 00          nop
393E: 00          nop
393F: 00          nop
3940: 00          nop
3941: 00          nop
3942: 00          nop
3943: 00          nop
3944: 00          nop
3945: 00          nop
3946: 00          nop
3947: 00          nop
3948: 00          nop
3949: 00          nop
394A: 00          nop
394B: 00          nop
394C: 00          nop
394D: 00          nop
394E: 00          nop
394F: 00          nop
3950: 00          nop
3951: 00          nop
3952: 00          nop
3953: 00          nop
3954: 00          nop
3955: 00          nop
3956: 00          nop
3957: 00          nop
3958: 00          nop
3959: 00          nop
395A: 00          nop
395B: 00          nop
395C: 00          nop
395D: 00          nop
395E: 00          nop
395F: 00          nop
3960: 00          nop
3961: 00          nop
3962: 00          nop
3963: 00          nop
3964: 00          nop
3965: 00          nop
3966: 00          nop
3967: 00          nop
3968: 00          nop
3969: 00          nop
396A: 00          nop
396B: 00          nop
396C: 00          nop
396D: 00          nop
396E: 00          nop
396F: 00          nop
3970: 00          nop
3971: 00          nop
3972: 00          nop
3973: 00          nop
3974: 00          nop
3975: 00          nop
3976: 00          nop
3977: 00          nop
3978: 00          nop
3979: 00          nop
397A: 00          nop
397B: 00          nop
397C: 00          nop
397D: 00          nop
397E: 00          nop
397F: 00          nop
3980: 00          nop
3981: 00          nop
3982: 00          nop
3983: 00          nop
3984: 00          nop
3985: 00          nop
3986: 00          nop
3987: 00          nop
3988: 00          nop
3989: 00          nop
398A: 00          nop
398B: 00          nop
398C: 00          nop
398D: 00          nop
398E: 00          nop
398F: 00          nop
3990: 00          nop
3991: 00          nop
3992: 00          nop
3993: 00          nop
3994: 00          nop
3995: 00          nop
3996: 00          nop
3997: 00          nop
3998: 00          nop
3999: 00          nop
399A: 00          nop
399B: 00          nop
399C: 00          nop
399D: 00          nop
399E: 00          nop
399F: 00          nop
39A0: 00          nop
39A1: 00          nop
39A2: 00          nop
39A3: 00          nop
39A4: 00          nop
39A5: 00          nop
39A6: 00          nop
39A7: 00          nop
39A8: 00          nop
39A9: 00          nop
39AA: 00          nop
39AB: 00          nop
39AC: 00          nop
39AD: 00          nop
39AE: 00          nop
39AF: 00          nop
39B0: 00          nop
39B1: 00          nop
39B2: 00          nop
39B3: 00          nop
39B4: 00          nop
39B5: 00          nop
39B6: 00          nop
39B7: 00          nop
39B8: 00          nop
39B9: 00          nop
39BA: 00          nop
39BB: 00          nop
39BC: 00          nop
39BD: 00          nop
39BE: 00          nop
39BF: 00          nop
39C0: 00          nop
39C1: 00          nop
39C2: 00          nop
39C3: 00          nop
39C4: 00          nop
39C5: 00          nop
39C6: 00          nop
39C7: 00          nop
39C8: 00          nop
39C9: 00          nop
39CA: 00          nop
39CB: 00          nop
39CC: 00          nop
39CD: 00          nop
39CE: 00          nop
39CF: 00          nop
39D0: 00          nop
39D1: 00          nop
39D2: 00          nop
39D3: 00          nop
39D4: 00          nop
39D5: 00          nop
39D6: 00          nop
39D7: 00          nop
39D8: 00          nop
39D9: 00          nop
39DA: 00          nop
39DB: 00          nop
39DC: 00          nop
39DD: 00          nop
39DE: 00          nop
39DF: 00          nop
39E0: 00          nop
39E1: 00          nop
39E2: 00          nop
39E3: 00          nop
39E4: 00          nop
39E5: 00          nop
39E6: 00          nop
39E7: 00          nop
39E8: 00          nop
39E9: 00          nop
39EA: 00          nop
39EB: 00          nop
39EC: 00          nop
39ED: 00          nop
39EE: 00          nop
39EF: 00          nop
39F0: 00          nop
39F1: 00          nop
39F2: 00          nop
39F3: 00          nop
39F4: 00          nop
39F5: 00          nop
39F6: 00          nop
39F7: 00          nop
39F8: 00          nop
39F9: 00          nop
39FA: 00          nop
39FB: 00          nop
39FC: 00          nop
39FD: 00          nop
39FE: 00          nop
39FF: 00          nop
3A00: 00          nop
3A01: 00          nop
3A02: 00          nop
3A03: 00          nop
3A04: 00          nop
3A05: 00          nop
3A06: 00          nop
3A07: 00          nop
3A08: 00          nop
3A09: 00          nop
3A0A: 00          nop
3A0B: 00          nop
3A0C: 00          nop
3A0D: 00          nop
3A0E: 00          nop
3A0F: 00          nop
3A10: 00          nop
3A11: 00          nop
3A12: 00          nop
3A13: 00          nop
3A14: 00          nop
3A15: 00          nop
3A16: 00          nop
3A17: 00          nop
3A18: 00          nop
3A19: 00          nop
3A1A: 00          nop
3A1B: 00          nop
3A1C: 00          nop
3A1D: 00          nop
3A1E: 00          nop
3A1F: 00          nop
3A20: 00          nop
3A21: 00          nop
3A22: 00          nop
3A23: 00          nop
3A24: 00          nop
3A25: 00          nop
3A26: 00          nop
3A27: 00          nop
3A28: 00          nop
3A29: 00          nop
3A2A: 00          nop
3A2B: 00          nop
3A2C: 00          nop
3A2D: 00          nop
3A2E: 00          nop
3A2F: 00          nop
3A30: 00          nop
3A31: 00          nop
3A32: 00          nop
3A33: 00          nop
3A34: 00          nop
3A35: 00          nop
3A36: 00          nop
3A37: 00          nop
3A38: 00          nop
3A39: 00          nop
3A3A: 00          nop
3A3B: 00          nop
3A3C: 00          nop
3A3D: 00          nop
3A3E: 00          nop
3A3F: 00          nop
3A40: 00          nop
3A41: 00          nop
3A42: 00          nop
3A43: 00          nop
3A44: 00          nop
3A45: 00          nop
3A46: 00          nop
3A47: 00          nop
3A48: 00          nop
3A49: 00          nop
3A4A: 00          nop
3A4B: 00          nop
3A4C: 00          nop
3A4D: 00          nop
3A4E: 00          nop
3A4F: 00          nop
3A50: 00          nop
3A51: 00          nop
3A52: 00          nop
3A53: 00          nop
3A54: 00          nop
3A55: 00          nop
3A56: 00          nop
3A57: 00          nop
3A58: 00          nop
3A59: 00          nop
3A5A: 00          nop
3A5B: 00          nop
3A5C: 00          nop
3A5D: 00          nop
3A5E: 00          nop
3A5F: 00          nop
3A60: 00          nop
3A61: 00          nop
3A62: 00          nop
3A63: 00          nop
3A64: 00          nop
3A65: 00          nop
3A66: 00          nop
3A67: 00          nop
3A68: 00          nop
3A69: 00          nop
3A6A: 00          nop
3A6B: 00          nop
3A6C: 00          nop
3A6D: 00          nop
3A6E: 00          nop
3A6F: 00          nop
3A70: 00          nop
3A71: 00          nop
3A72: 00          nop
3A73: 00          nop
3A74: 00          nop
3A75: 00          nop
3A76: 00          nop
3A77: 00          nop
3A78: 00          nop
3A79: 00          nop
3A7A: 00          nop
3A7B: 00          nop
3A7C: 00          nop
3A7D: 00          nop
3A7E: 00          nop
3A7F: 00          nop
3A80: 00          nop
3A81: 00          nop
3A82: 00          nop
3A83: 00          nop
3A84: 00          nop
3A85: 00          nop
3A86: 00          nop
3A87: 00          nop
3A88: 00          nop
3A89: 00          nop
3A8A: 00          nop
3A8B: 00          nop
3A8C: 00          nop
3A8D: 00          nop
3A8E: 00          nop
3A8F: 00          nop
3A90: 00          nop
3A91: 00          nop
3A92: 00          nop
3A93: 00          nop
3A94: 00          nop
3A95: 00          nop
3A96: 00          nop
3A97: 00          nop
3A98: 00          nop
3A99: 00          nop
3A9A: 00          nop
3A9B: 00          nop
3A9C: 00          nop
3A9D: 00          nop
3A9E: 00          nop
3A9F: 00          nop
3AA0: 00          nop
3AA1: 00          nop
3AA2: 00          nop
3AA3: 00          nop
3AA4: 00          nop
3AA5: 00          nop
3AA6: 00          nop
3AA7: 00          nop
3AA8: 00          nop
3AA9: 00          nop
3AAA: 00          nop
3AAB: 00          nop
3AAC: 00          nop
3AAD: 00          nop
3AAE: 00          nop
3AAF: 00          nop
3AB0: 00          nop
3AB1: 00          nop
3AB2: 00          nop
3AB3: 00          nop
3AB4: 00          nop
3AB5: 00          nop
3AB6: 00          nop
3AB7: 00          nop
3AB8: 00          nop
3AB9: 00          nop
3ABA: 00          nop
3ABB: 00          nop
3ABC: 00          nop
3ABD: 00          nop
3ABE: 00          nop
3ABF: 00          nop
3AC0: 00          nop
3AC1: 00          nop
3AC2: 00          nop
3AC3: 00          nop
3AC4: 00          nop
3AC5: 00          nop
3AC6: 00          nop
3AC7: 00          nop
3AC8: 00          nop
3AC9: 00          nop
3ACA: 00          nop
3ACB: 00          nop
3ACC: 00          nop
3ACD: 00          nop
3ACE: 00          nop
3ACF: 00          nop
3AD0: 00          nop
3AD1: 00          nop
3AD2: 00          nop
3AD3: 00          nop
3AD4: 00          nop
3AD5: 00          nop
3AD6: 00          nop
3AD7: 00          nop
3AD8: 00          nop
3AD9: 00          nop
3ADA: 00          nop
3ADB: 00          nop
3ADC: 00          nop
3ADD: 00          nop
3ADE: 00          nop
3ADF: 00          nop
3AE0: 00          nop
3AE1: 00          nop
3AE2: 00          nop
3AE3: 00          nop
3AE4: 00          nop
3AE5: 00          nop
3AE6: 00          nop
3AE7: 00          nop
3AE8: 00          nop
3AE9: 00          nop
3AEA: 00          nop
3AEB: 00          nop
3AEC: 00          nop
3AED: 00          nop
3AEE: 00          nop
3AEF: 00          nop
3AF0: 00          nop
3AF1: 00          nop
3AF2: 00          nop
3AF3: 00          nop
3AF4: 00          nop
3AF5: 00          nop
3AF6: 00          nop
3AF7: 00          nop
3AF8: 00          nop
3AF9: 00          nop
3AFA: 00          nop
3AFB: 00          nop
3AFC: 00          nop
3AFD: 00          nop
3AFE: 00          nop
3AFF: 00          nop
3B00: 00          nop
3B01: 00          nop
3B02: 00          nop
3B03: 00          nop
3B04: 00          nop
3B05: 00          nop
3B06: 00          nop
3B07: 00          nop
3B08: 00          nop
3B09: 00          nop
3B0A: 00          nop
3B0B: 00          nop
3B0C: 00          nop
3B0D: 00          nop
3B0E: 00          nop
3B0F: 00          nop
3B10: 00          nop
3B11: 00          nop
3B12: 00          nop
3B13: 00          nop
3B14: 00          nop
3B15: 00          nop
3B16: 00          nop
3B17: 00          nop
3B18: 00          nop
3B19: 00          nop
3B1A: 00          nop
3B1B: 00          nop
3B1C: 00          nop
3B1D: 00          nop
3B1E: 00          nop
3B1F: 00          nop
3B20: 00          nop
3B21: 00          nop
3B22: 00          nop
3B23: 00          nop
3B24: 00          nop
3B25: 00          nop
3B26: 00          nop
3B27: 00          nop
3B28: 00          nop
3B29: 00          nop
3B2A: 00          nop
3B2B: 00          nop
3B2C: 00          nop
3B2D: 00          nop
3B2E: 00          nop
3B2F: 00          nop
3B30: 00          nop
3B31: 00          nop
3B32: 00          nop
3B33: 00          nop
3B34: 00          nop
3B35: 00          nop
3B36: 00          nop
3B37: 00          nop
3B38: 00          nop
3B39: 00          nop
3B3A: 00          nop
3B3B: 00          nop
3B3C: 00          nop
3B3D: 00          nop
3B3E: 00          nop
3B3F: 00          nop
3B40: 00          nop
3B41: 00          nop
3B42: 00          nop
3B43: 00          nop
3B44: 00          nop
3B45: 00          nop
3B46: 00          nop
3B47: 00          nop
3B48: 00          nop
3B49: 00          nop
3B4A: 00          nop
3B4B: 00          nop
3B4C: 00          nop
3B4D: 00          nop
3B4E: 00          nop
3B4F: 00          nop
3B50: 00          nop
3B51: 00          nop
3B52: 00          nop
3B53: 00          nop
3B54: 00          nop
3B55: 00          nop
3B56: 00          nop
3B57: 00          nop
3B58: 00          nop
3B59: 00          nop
3B5A: 00          nop
3B5B: 00          nop
3B5C: 00          nop
3B5D: 00          nop
3B5E: 00          nop
3B5F: 00          nop
3B60: 00          nop
3B61: 00          nop
3B62: 00          nop
3B63: 00          nop
3B64: 00          nop
3B65: 00          nop
3B66: 00          nop
3B67: 00          nop
3B68: 00          nop
3B69: 00          nop
3B6A: 00          nop
3B6B: 00          nop
3B6C: 00          nop
3B6D: 00          nop
3B6E: 00          nop
3B6F: 00          nop
3B70: 00          nop
3B71: 00          nop
3B72: 00          nop
3B73: 00          nop
3B74: 00          nop
3B75: 00          nop
3B76: 00          nop
3B77: 00          nop
3B78: 00          nop
3B79: 00          nop
3B7A: 00          nop
3B7B: 00          nop
3B7C: 00          nop
3B7D: 00          nop
3B7E: 00          nop
3B7F: 00          nop
3B80: 00          nop
3B81: 00          nop
3B82: 00          nop
3B83: 00          nop
3B84: 00          nop
3B85: 00          nop
3B86: 00          nop
3B87: 00          nop
3B88: 00          nop
3B89: 00          nop
3B8A: 00          nop
3B8B: 00          nop
3B8C: 00          nop
3B8D: 00          nop
3B8E: 00          nop
3B8F: 00          nop
3B90: 00          nop
3B91: 00          nop
3B92: 00          nop
3B93: 00          nop
3B94: 00          nop
3B95: 00          nop
3B96: 00          nop
3B97: 00          nop
3B98: 00          nop
3B99: 00          nop
3B9A: 00          nop
3B9B: 00          nop
3B9C: 00          nop
3B9D: 00          nop
3B9E: 00          nop
3B9F: 00          nop
3BA0: 00          nop
3BA1: 00          nop
3BA2: 00          nop
3BA3: 00          nop
3BA4: 00          nop
3BA5: 00          nop
3BA6: 00          nop
3BA7: 00          nop
3BA8: 00          nop
3BA9: 00          nop
3BAA: 00          nop
3BAB: 00          nop
3BAC: 00          nop
3BAD: 00          nop
3BAE: 00          nop
3BAF: 00          nop
3BB0: 00          nop
3BB1: 00          nop
3BB2: 00          nop
3BB3: 00          nop
3BB4: 00          nop
3BB5: 00          nop
3BB6: 00          nop
3BB7: 00          nop
3BB8: 00          nop
3BB9: 00          nop
3BBA: 00          nop
3BBB: 00          nop
3BBC: 00          nop
3BBD: 00          nop
3BBE: 00          nop
3BBF: 00          nop
3BC0: 00          nop
3BC1: 00          nop
3BC2: 00          nop
3BC3: 00          nop
3BC4: 00          nop
3BC5: 00          nop
3BC6: 00          nop
3BC7: 00          nop
3BC8: 00          nop
3BC9: 00          nop
3BCA: 00          nop
3BCB: 00          nop
3BCC: 00          nop
3BCD: 00          nop
3BCE: 00          nop
3BCF: 00          nop
3BD0: 00          nop
3BD1: 00          nop
3BD2: 00          nop
3BD3: 00          nop
3BD4: 00          nop
3BD5: 00          nop
3BD6: 00          nop
3BD7: 00          nop
3BD8: 00          nop
3BD9: 00          nop
3BDA: 00          nop
3BDB: 00          nop
3BDC: 00          nop
3BDD: 00          nop
3BDE: 00          nop
3BDF: 00          nop
3BE0: 00          nop
3BE1: 00          nop
3BE2: 00          nop
3BE3: 00          nop
3BE4: 00          nop
3BE5: 00          nop
3BE6: 00          nop
3BE7: 00          nop
3BE8: 00          nop
3BE9: 00          nop
3BEA: 00          nop
3BEB: 00          nop
3BEC: 00          nop
3BED: 00          nop
3BEE: 00          nop
3BEF: 00          nop
3BF0: 00          nop
3BF1: 00          nop
3BF2: 00          nop
3BF3: 00          nop
3BF4: 00          nop
3BF5: 00          nop
3BF6: 00          nop
3BF7: 00          nop
3BF8: 00          nop
3BF9: 00          nop
3BFA: 00          nop
3BFB: 00          nop
3BFC: 00          nop
3BFD: 00          nop
3BFE: 00          nop
3BFF: 00          nop
3C00: 00          nop
3C01: 00          nop
3C02: 00          nop
3C03: 00          nop
3C04: 00          nop
3C05: 00          nop
3C06: 00          nop
3C07: 00          nop
3C08: 00          nop
3C09: 00          nop
3C0A: 00          nop
3C0B: 00          nop
3C0C: 00          nop
3C0D: 00          nop
3C0E: 00          nop
3C0F: 00          nop
3C10: 00          nop
3C11: 00          nop
3C12: 00          nop
3C13: 00          nop
3C14: 00          nop
3C15: 00          nop
3C16: 00          nop
3C17: 00          nop
3C18: 00          nop
3C19: 00          nop
3C1A: 00          nop
3C1B: 00          nop
3C1C: 00          nop
3C1D: 00          nop
3C1E: 00          nop
3C1F: 00          nop
3C20: 00          nop
3C21: 00          nop
3C22: 00          nop
3C23: 00          nop
3C24: 00          nop
3C25: 00          nop
3C26: 00          nop
3C27: 00          nop
3C28: 00          nop
3C29: 00          nop
3C2A: 00          nop
3C2B: 00          nop
3C2C: 00          nop
3C2D: 00          nop
3C2E: 00          nop
3C2F: 00          nop
3C30: 00          nop
3C31: 00          nop
3C32: 00          nop
3C33: 00          nop
3C34: 00          nop
3C35: 00          nop
3C36: 00          nop
3C37: 00          nop
3C38: 00          nop
3C39: 00          nop
3C3A: 00          nop
3C3B: 00          nop
3C3C: 00          nop
3C3D: 00          nop
3C3E: 00          nop
3C3F: 00          nop
3C40: 00          nop
3C41: 00          nop
3C42: 00          nop
3C43: 00          nop
3C44: 00          nop
3C45: 00          nop
3C46: 00          nop
3C47: 00          nop
3C48: 00          nop
3C49: 00          nop
3C4A: 00          nop
3C4B: 00          nop
3C4C: 00          nop
3C4D: 00          nop
3C4E: 00          nop
3C4F: 00          nop
3C50: 00          nop
3C51: 00          nop
3C52: 00          nop
3C53: 00          nop
3C54: 00          nop
3C55: 00          nop
3C56: 00          nop
3C57: 00          nop
3C58: 00          nop
3C59: 00          nop
3C5A: 00          nop
3C5B: 00          nop
3C5C: 00          nop
3C5D: 00          nop
3C5E: 00          nop
3C5F: 00          nop
3C60: 00          nop
3C61: 00          nop
3C62: 00          nop
3C63: 00          nop
3C64: 00          nop
3C65: 00          nop
3C66: 00          nop
3C67: 00          nop
3C68: 00          nop
3C69: 00          nop
3C6A: 00          nop
3C6B: 00          nop
3C6C: 00          nop
3C6D: 00          nop
3C6E: 00          nop
3C6F: 00          nop
3C70: 00          nop
3C71: 00          nop
3C72: 00          nop
3C73: 00          nop
3C74: 00          nop
3C75: 00          nop
3C76: 00          nop
3C77: 00          nop
3C78: 00          nop
3C79: 00          nop
3C7A: 00          nop
3C7B: 00          nop
3C7C: 00          nop
3C7D: 00          nop
3C7E: 00          nop
3C7F: 00          nop
3C80: 00          nop
3C81: 00          nop
3C82: 00          nop
3C83: 00          nop
3C84: 00          nop
3C85: 00          nop
3C86: 00          nop
3C87: 00          nop
3C88: 00          nop
3C89: 00          nop
3C8A: 00          nop
3C8B: 00          nop
3C8C: 00          nop
3C8D: 00          nop
3C8E: 00          nop
3C8F: 00          nop
3C90: 00          nop
3C91: 00          nop
3C92: 00          nop
3C93: 00          nop
3C94: 00          nop
3C95: 00          nop
3C96: 00          nop
3C97: 00          nop
3C98: 00          nop
3C99: 00          nop
3C9A: 00          nop
3C9B: 00          nop
3C9C: 00          nop
3C9D: 00          nop
3C9E: 00          nop
3C9F: 00          nop
3CA0: 00          nop
3CA1: 00          nop
3CA2: 00          nop
3CA3: 00          nop
3CA4: 00          nop
3CA5: 00          nop
3CA6: 00          nop
3CA7: 00          nop
3CA8: 00          nop
3CA9: 00          nop
3CAA: 00          nop
3CAB: 00          nop
3CAC: 00          nop
3CAD: 00          nop
3CAE: 00          nop
3CAF: 00          nop
3CB0: 00          nop
3CB1: 00          nop
3CB2: 00          nop
3CB3: 00          nop
3CB4: 00          nop
3CB5: 00          nop
3CB6: 00          nop
3CB7: 00          nop
3CB8: 00          nop
3CB9: 00          nop
3CBA: 00          nop
3CBB: 00          nop
3CBC: 00          nop
3CBD: 00          nop
3CBE: 00          nop
3CBF: 00          nop
3CC0: 00          nop
3CC1: 00          nop
3CC2: 00          nop
3CC3: 00          nop
3CC4: 00          nop
3CC5: 00          nop
3CC6: 00          nop
3CC7: 00          nop
3CC8: 00          nop
3CC9: 00          nop
3CCA: 00          nop
3CCB: 00          nop
3CCC: 00          nop
3CCD: 00          nop
3CCE: 00          nop
3CCF: 00          nop
3CD0: 00          nop
3CD1: 00          nop
3CD2: 00          nop
3CD3: 00          nop
3CD4: 00          nop
3CD5: 00          nop
3CD6: 00          nop
3CD7: 00          nop
3CD8: 00          nop
3CD9: 00          nop
3CDA: 00          nop
3CDB: 00          nop
3CDC: 00          nop
3CDD: 00          nop
3CDE: 00          nop
3CDF: 00          nop
3CE0: 00          nop
3CE1: 00          nop
3CE2: 00          nop
3CE3: 00          nop
3CE4: 00          nop
3CE5: 00          nop
3CE6: 00          nop
3CE7: 00          nop
3CE8: 00          nop
3CE9: 00          nop
3CEA: 00          nop
3CEB: 00          nop
3CEC: 00          nop
3CED: 00          nop
3CEE: 00          nop
3CEF: 00          nop
3CF0: 00          nop
3CF1: 00          nop
3CF2: 00          nop
3CF3: 00          nop
3CF4: 00          nop
3CF5: 00          nop
3CF6: 00          nop
3CF7: 00          nop
3CF8: 00          nop
3CF9: 00          nop
3CFA: 00          nop
3CFB: 00          nop
3CFC: 00          nop
3CFD: 00          nop
3CFE: 00          nop
3CFF: 00          nop
3D00: 00          nop
3D01: 00          nop
3D02: 00          nop
3D03: 00          nop
3D04: 00          nop
3D05: 00          nop
3D06: 00          nop
3D07: 00          nop
3D08: 00          nop
3D09: 00          nop
3D0A: 00          nop
3D0B: 00          nop
3D0C: 00          nop
3D0D: 00          nop
3D0E: 00          nop
3D0F: 00          nop
3D10: 00          nop
3D11: 00          nop
3D12: 00          nop
3D13: 00          nop
3D14: 00          nop
3D15: 00          nop
3D16: 00          nop
3D17: 00          nop
3D18: 00          nop
3D19: 00          nop
3D1A: 00          nop
3D1B: 00          nop
3D1C: 00          nop
3D1D: 00          nop
3D1E: 00          nop
3D1F: 00          nop
3D20: 00          nop
3D21: 00          nop
3D22: 00          nop
3D23: 00          nop
3D24: 00          nop
3D25: 00          nop
3D26: 00          nop
3D27: 00          nop
3D28: 00          nop
3D29: 00          nop
3D2A: 00          nop
3D2B: 00          nop
3D2C: 00          nop
3D2D: 00          nop
3D2E: 00          nop
3D2F: 00          nop
3D30: 00          nop
3D31: 00          nop
3D32: 00          nop
3D33: 00          nop
3D34: 00          nop
3D35: 00          nop
3D36: 00          nop
3D37: 00          nop
3D38: 00          nop
3D39: 00          nop
3D3A: 00          nop
3D3B: 00          nop
3D3C: 00          nop
3D3D: 00          nop
3D3E: 00          nop
3D3F: 00          nop
3D40: 00          nop
3D41: 00          nop
3D42: 00          nop
3D43: 00          nop
3D44: 00          nop
3D45: 00          nop
3D46: 00          nop
3D47: 00          nop
3D48: 00          nop
3D49: 00          nop
3D4A: 00          nop
3D4B: 00          nop
3D4C: 00          nop
3D4D: 00          nop
3D4E: 00          nop
3D4F: 00          nop
3D50: 00          nop
3D51: 00          nop
3D52: 00          nop
3D53: 00          nop
3D54: 00          nop
3D55: 00          nop
3D56: 00          nop
3D57: 00          nop
3D58: 00          nop
3D59: 00          nop
3D5A: 00          nop
3D5B: 00          nop
3D5C: 00          nop
3D5D: 00          nop
3D5E: 00          nop
3D5F: 00          nop
3D60: 00          nop
3D61: 00          nop
3D62: 00          nop
3D63: 00          nop
3D64: 00          nop
3D65: 00          nop
3D66: 00          nop
3D67: 00          nop
3D68: 00          nop
3D69: 00          nop
3D6A: 00          nop
3D6B: 00          nop
3D6C: 00          nop
3D6D: 00          nop
3D6E: 00          nop
3D6F: 00          nop
3D70: 00          nop
3D71: 00          nop
3D72: 00          nop
3D73: 00          nop
3D74: 00          nop
3D75: 00          nop
3D76: 00          nop
3D77: 00          nop
3D78: 00          nop
3D79: 00          nop
3D7A: 00          nop
3D7B: 00          nop
3D7C: 00          nop
3D7D: 00          nop
3D7E: 00          nop
3D7F: 00          nop
3D80: 00          nop
3D81: 00          nop
3D82: 00          nop
3D83: 00          nop
3D84: 00          nop
3D85: 00          nop
3D86: 00          nop
3D87: 00          nop
3D88: 00          nop
3D89: 00          nop
3D8A: 00          nop
3D8B: 00          nop
3D8C: 00          nop
3D8D: 00          nop
3D8E: 00          nop
3D8F: 00          nop
3D90: 00          nop
3D91: 00          nop
3D92: 00          nop
3D93: 00          nop
3D94: 00          nop
3D95: 00          nop
3D96: 00          nop
3D97: 00          nop
3D98: 00          nop
3D99: 00          nop
3D9A: 00          nop
3D9B: 00          nop
3D9C: 00          nop
3D9D: 00          nop
3D9E: 00          nop
3D9F: 00          nop
3DA0: 00          nop
3DA1: 00          nop
3DA2: 00          nop
3DA3: 00          nop
3DA4: 00          nop
3DA5: 00          nop
3DA6: 00          nop
3DA7: 00          nop
3DA8: 00          nop
3DA9: 00          nop
3DAA: 00          nop
3DAB: 00          nop
3DAC: 00          nop
3DAD: 00          nop
3DAE: 00          nop
3DAF: 00          nop
3DB0: 00          nop
3DB1: 00          nop
3DB2: 00          nop
3DB3: 00          nop
3DB4: 00          nop
3DB5: 00          nop
3DB6: 00          nop
3DB7: 00          nop
3DB8: 00          nop
3DB9: 00          nop
3DBA: 00          nop
3DBB: 00          nop
3DBC: 00          nop
3DBD: 00          nop
3DBE: 00          nop
3DBF: 00          nop
3DC0: 00          nop
3DC1: 00          nop
3DC2: 00          nop
3DC3: 00          nop
3DC4: 00          nop
3DC5: 00          nop
3DC6: 00          nop
3DC7: 00          nop
3DC8: 00          nop
3DC9: 00          nop
3DCA: 00          nop
3DCB: 00          nop
3DCC: 00          nop
3DCD: 00          nop
3DCE: 00          nop
3DCF: 00          nop
3DD0: 00          nop
3DD1: 00          nop
3DD2: 00          nop
3DD3: 00          nop
3DD4: 00          nop
3DD5: 00          nop
3DD6: 00          nop
3DD7: 00          nop
3DD8: 00          nop
3DD9: 00          nop
3DDA: 00          nop
3DDB: 00          nop
3DDC: 00          nop
3DDD: 00          nop
3DDE: 00          nop
3DDF: 00          nop
3DE0: 00          nop
3DE1: 00          nop
3DE2: 00          nop
3DE3: 00          nop
3DE4: 00          nop
3DE5: 00          nop
3DE6: 00          nop
3DE7: 00          nop
3DE8: 00          nop
3DE9: 00          nop
3DEA: 00          nop
3DEB: 00          nop
3DEC: 00          nop
3DED: 00          nop
3DEE: 00          nop
3DEF: 00          nop
3DF0: 00          nop
3DF1: 00          nop
3DF2: 00          nop
3DF3: 00          nop
3DF4: 00          nop
3DF5: 00          nop
3DF6: 00          nop
3DF7: 00          nop
3DF8: 00          nop
3DF9: 00          nop
3DFA: 00          nop
3DFB: 00          nop
3DFC: 00          nop
3DFD: 00          nop
3DFE: 00          nop
3DFF: 00          nop
3E00: 00          nop
3E01: 00          nop
3E02: 00          nop
3E03: 00          nop
3E04: 00          nop
3E05: 00          nop
3E06: 00          nop
3E07: 00          nop
3E08: 00          nop
3E09: 00          nop
3E0A: 00          nop
3E0B: 00          nop
3E0C: 00          nop
3E0D: 00          nop
3E0E: 00          nop
3E0F: 00          nop
3E10: 00          nop
3E11: 00          nop
3E12: 00          nop
3E13: 00          nop
3E14: 00          nop
3E15: 00          nop
3E16: 00          nop
3E17: 00          nop
3E18: 00          nop
3E19: 00          nop
3E1A: 00          nop
3E1B: 00          nop
3E1C: 00          nop
3E1D: 00          nop
3E1E: 00          nop
3E1F: 00          nop
3E20: 00          nop
3E21: 00          nop
3E22: 00          nop
3E23: 00          nop
3E24: 00          nop
3E25: 00          nop
3E26: 00          nop
3E27: 00          nop
3E28: 00          nop
3E29: 00          nop
3E2A: 00          nop
3E2B: 00          nop
3E2C: 00          nop
3E2D: 00          nop
3E2E: 00          nop
3E2F: 00          nop
3E30: 00          nop
3E31: 00          nop
3E32: 00          nop
3E33: 00          nop
3E34: 00          nop
3E35: 00          nop
3E36: 00          nop
3E37: 00          nop
3E38: 00          nop
3E39: 00          nop
3E3A: 00          nop
3E3B: 00          nop
3E3C: 00          nop
3E3D: 00          nop
3E3E: 00          nop
3E3F: 00          nop
3E40: 00          nop
3E41: 00          nop
3E42: 00          nop
3E43: 00          nop
3E44: 00          nop
3E45: 00          nop
3E46: 00          nop
3E47: 00          nop
3E48: 00          nop
3E49: 00          nop
3E4A: 00          nop
3E4B: 00          nop
3E4C: 00          nop
3E4D: 00          nop
3E4E: 00          nop
3E4F: 00          nop
3E50: 00          nop
3E51: 00          nop
3E52: 00          nop
3E53: 00          nop
3E54: 00          nop
3E55: 00          nop
3E56: 00          nop
3E57: 00          nop
3E58: 00          nop
3E59: 00          nop
3E5A: 00          nop
3E5B: 00          nop
3E5C: 00          nop
3E5D: 00          nop
3E5E: 00          nop
3E5F: 00          nop
3E60: 00          nop
3E61: 00          nop
3E62: 00          nop
3E63: 00          nop
3E64: 00          nop
3E65: 00          nop
3E66: 00          nop
3E67: 00          nop
3E68: 00          nop
3E69: 00          nop
3E6A: 00          nop
3E6B: 00          nop
3E6C: 00          nop
3E6D: 00          nop
3E6E: 00          nop
3E6F: 00          nop
3E70: 00          nop
3E71: 00          nop
3E72: 00          nop
3E73: 00          nop
3E74: 00          nop
3E75: 00          nop
3E76: 00          nop
3E77: 00          nop
3E78: 00          nop
3E79: 00          nop
3E7A: 00          nop
3E7B: 00          nop
3E7C: 00          nop
3E7D: 00          nop
3E7E: 00          nop
3E7F: 00          nop
3E80: 00          nop
3E81: 00          nop
3E82: 00          nop
3E83: 00          nop
3E84: 00          nop
3E85: 00          nop
3E86: 00          nop
3E87: 00          nop
3E88: 00          nop
3E89: 00          nop
3E8A: 00          nop
3E8B: 00          nop
3E8C: 00          nop
3E8D: 00          nop
3E8E: 00          nop
3E8F: 00          nop
3E90: 00          nop
3E91: 00          nop
3E92: 00          nop
3E93: 00          nop
3E94: 00          nop
3E95: 00          nop
3E96: 00          nop
3E97: 00          nop
3E98: 00          nop
3E99: 00          nop
3E9A: 00          nop
3E9B: 00          nop
3E9C: 00          nop
3E9D: 00          nop
3E9E: 00          nop
3E9F: 00          nop
3EA0: 00          nop
3EA1: 00          nop
3EA2: 00          nop
3EA3: 00          nop
3EA4: 00          nop
3EA5: 00          nop
3EA6: 00          nop
3EA7: 00          nop
3EA8: 00          nop
3EA9: 00          nop
3EAA: 00          nop
3EAB: 00          nop
3EAC: 00          nop
3EAD: 00          nop
3EAE: 00          nop
3EAF: 00          nop
3EB0: 00          nop
3EB1: 00          nop
3EB2: 00          nop
3EB3: 00          nop
3EB4: 00          nop
3EB5: 00          nop
3EB6: 00          nop
3EB7: 00          nop
3EB8: 00          nop
3EB9: 00          nop
3EBA: 00          nop
3EBB: 00          nop
3EBC: 00          nop
3EBD: 00          nop
3EBE: 00          nop
3EBF: 00          nop
3EC0: 00          nop
3EC1: 00          nop
3EC2: 00          nop
3EC3: 00          nop
3EC4: 00          nop
3EC5: 00          nop
3EC6: 00          nop
3EC7: 00          nop
3EC8: 00          nop
3EC9: 00          nop
3ECA: 00          nop
3ECB: 00          nop
3ECC: 00          nop
3ECD: 00          nop
3ECE: 00          nop
3ECF: 00          nop
3ED0: 00          nop
3ED1: 00          nop
3ED2: 00          nop
3ED3: 00          nop
3ED4: 00          nop
3ED5: 00          nop
3ED6: 00          nop
3ED7: 00          nop
3ED8: 00          nop
3ED9: 00          nop
3EDA: 00          nop
3EDB: 00          nop
3EDC: 00          nop
3EDD: 00          nop
3EDE: 00          nop
3EDF: 00          nop
3EE0: 00          nop
3EE1: 00          nop
3EE2: 00          nop
3EE3: 00          nop
3EE4: 00          nop
3EE5: 00          nop
3EE6: 00          nop
3EE7: 00          nop
3EE8: 00          nop
3EE9: 00          nop
3EEA: 00          nop
3EEB: 00          nop
3EEC: 00          nop
3EED: 00          nop
3EEE: 00          nop
3EEF: 00          nop
3EF0: 00          nop
3EF1: 00          nop
3EF2: 00          nop
3EF3: 00          nop
3EF4: 00          nop
3EF5: 00          nop
3EF6: 00          nop
3EF7: 00          nop
3EF8: 00          nop
3EF9: 00          nop
3EFA: 00          nop
3EFB: 00          nop
3EFC: 00          nop
3EFD: 00          nop
3EFE: 00          nop
3EFF: 00          nop
3F00: 00          nop
3F01: 00          nop
3F02: 00          nop
3F03: 00          nop
3F04: 00          nop
3F05: 00          nop
3F06: 00          nop
3F07: 00          nop
3F08: 00          nop
3F09: 00          nop
3F0A: 00          nop
3F0B: 00          nop
3F0C: 00          nop
3F0D: 00          nop
3F0E: 00          nop
3F0F: 00          nop
3F10: 00          nop
3F11: 00          nop
3F12: 00          nop
3F13: 00          nop
3F14: 00          nop
3F15: 00          nop
3F16: 00          nop
3F17: 00          nop
3F18: 00          nop
3F19: 00          nop
3F1A: 00          nop
3F1B: 00          nop
3F1C: 00          nop
3F1D: 00          nop
3F1E: 00          nop
3F1F: 00          nop
3F20: 00          nop
3F21: 00          nop
3F22: 00          nop
3F23: 00          nop
3F24: 00          nop
3F25: 00          nop
3F26: 00          nop
3F27: 00          nop
3F28: 00          nop
3F29: 00          nop
3F2A: 00          nop
3F2B: 00          nop
3F2C: 00          nop
3F2D: 00          nop
3F2E: 00          nop
3F2F: 00          nop
3F30: 00          nop
3F31: 00          nop
3F32: 00          nop
3F33: 00          nop
3F34: 00          nop
3F35: 00          nop
3F36: 00          nop
3F37: 00          nop
3F38: 00          nop
3F39: 00          nop
3F3A: 00          nop
3F3B: 00          nop
3F3C: 00          nop
3F3D: 00          nop
3F3E: 00          nop
3F3F: 00          nop
3F40: 00          nop
3F41: 00          nop
3F42: 00          nop
3F43: 00          nop
3F44: 00          nop
3F45: 00          nop
3F46: 00          nop
3F47: 00          nop
3F48: 00          nop
3F49: 00          nop
3F4A: 00          nop
3F4B: 00          nop
3F4C: 00          nop
3F4D: 00          nop
3F4E: 00          nop
3F4F: 00          nop
3F50: 00          nop
3F51: 00          nop
3F52: 00          nop
3F53: 00          nop
3F54: 00          nop
3F55: 00          nop
3F56: 00          nop
3F57: 00          nop
3F58: 00          nop
3F59: 00          nop
3F5A: 00          nop
3F5B: 00          nop
3F5C: 00          nop
3F5D: 00          nop
3F5E: 00          nop
3F5F: 00          nop
3F60: 00          nop
3F61: 00          nop
3F62: 00          nop
3F63: 00          nop
3F64: 00          nop
3F65: 00          nop
3F66: 00          nop
3F67: 00          nop
3F68: 00          nop
3F69: 00          nop
3F6A: 00          nop
3F6B: 00          nop
3F6C: 00          nop
3F6D: 00          nop
3F6E: 00          nop
3F6F: 00          nop
3F70: 00          nop
3F71: 00          nop
3F72: 00          nop
3F73: 00          nop
3F74: 00          nop
3F75: 00          nop
3F76: 00          nop
3F77: 00          nop
3F78: 00          nop
3F79: 00          nop
3F7A: 00          nop
3F7B: 00          nop
3F7C: 00          nop
3F7D: 00          nop
3F7E: 00          nop
3F7F: 00          nop
3F80: 00          nop
3F81: 00          nop
3F82: 00          nop
3F83: 00          nop
3F84: 00          nop
3F85: 00          nop
3F86: 00          nop
3F87: 00          nop
3F88: 00          nop
3F89: 00          nop
3F8A: 00          nop
3F8B: 00          nop
3F8C: 00          nop
3F8D: 00          nop
3F8E: 00          nop
3F8F: 00          nop
3F90: 00          nop
3F91: 00          nop
3F92: 00          nop
3F93: 00          nop
3F94: 00          nop
3F95: 00          nop
3F96: 00          nop
3F97: 00          nop
3F98: 00          nop
3F99: 00          nop
3F9A: 00          nop
3F9B: 00          nop
3F9C: 00          nop
3F9D: 00          nop
3F9E: 00          nop
3F9F: 00          nop
3FA0: 00          nop
3FA1: 00          nop
3FA2: 00          nop
3FA3: 00          nop
3FA4: 00          nop
3FA5: 00          nop
3FA6: 00          nop
3FA7: 00          nop
3FA8: 00          nop
3FA9: 00          nop
3FAA: 00          nop
3FAB: 00          nop
3FAC: 00          nop
3FAD: 00          nop
3FAE: 00          nop
3FAF: 00          nop
3FB0: 00          nop
3FB1: 00          nop
3FB2: 00          nop
3FB3: 00          nop
3FB4: 00          nop
3FB5: 00          nop
3FB6: 00          nop
3FB7: 00          nop
3FB8: 00          nop
3FB9: 00          nop
3FBA: 00          nop
3FBB: 00          nop
3FBC: 00          nop
3FBD: 00          nop
3FBE: 00          nop
3FBF: 00          nop
3FC0: 00          nop
3FC1: 00          nop
3FC2: 00          nop
3FC3: 00          nop
3FC4: 00          nop
3FC5: 00          nop
3FC6: 00          nop
3FC7: 00          nop
3FC8: 00          nop
3FC9: 00          nop
3FCA: 00          nop
3FCB: 00          nop
3FCC: 00          nop
3FCD: 00          nop
3FCE: 00          nop
3FCF: 00          nop
3FD0: 00          nop
3FD1: 00          nop
3FD2: 00          nop
3FD3: 00          nop
3FD4: 00          nop
3FD5: 00          nop
3FD6: 00          nop
3FD7: 00          nop
3FD8: 00          nop
3FD9: 00          nop
3FDA: 00          nop
3FDB: 00          nop
3FDC: 00          nop
3FDD: 00          nop
3FDE: 00          nop
3FDF: 00          nop
3FE0: 00          nop
3FE1: 00          nop
3FE2: 00          nop
3FE3: 00          nop
3FE4: 00          nop
3FE5: 00          nop
3FE6: 00          nop
3FE7: 00          nop
3FE8: 00          nop
3FE9: 00          nop
3FEA: 00          nop
3FEB: 00          nop
3FEC: 00          nop
3FED: 00          nop
3FEE: 00          nop
3FEF: 00          nop
3FF0: 00          nop
3FF1: 00          nop
3FF2: 00          nop
3FF3: 00          nop
3FF4: 00          nop
3FF5: 00          nop
3FF6: 00          nop
3FF7: 00          nop
3FF8: 00          nop
3FF9: 00          nop
3FFA: 00          nop
3FFB: 00          nop
3FFC: 00          nop
3FFD: 00          nop
3FFE: 00          nop
