;
; Screen for creating a new file
;

FileCreationEntryPoint::
    ld   a, [wGameplaySubtype]
    JP_TABLE
._00 dw label_4A11
._01 dw label_4A24
._02 dw label_4A9B

label_4A11::
    call IncrementGameplaySubtype
    ld   a, $08
    ld   [wTileMapToLoad], a
    xor  a
    ld   [$DBA8], a
    ld   [$DBA9], a
    ld   [$DBAA], a
    ret

label_4A24::
    ld   a, $05
    ld   [wBGMapToLoad], a
    ld   hl, $D601
    ld   a, $98
    ldi  [hl], a
    ld   a, $49
    ldi  [hl], a
    xor  a
    ldi  [hl], a
    ld   a, [wSaveSlot]
    add  a, $AB
    ldi  [hl], a
    xor  a
    ld   [hl], a
    jp   IncrementGameplaySubtypeAndReturn

label_4A3F::
    push hl
    add  hl, bc
    call EnableExternalRAMWriting
    ld   [hl], a
    pop  hl
    ret
    ld   bc, DebugSaveFileData
    ld   e, DEBUG_SAVE_FILE_SIZE
    push hl

label_4A4D::
    call EnableExternalRAMWriting
    ld   a, [bc]
    ldi  [hl], a
    inc  bc
    dec  e
    ld   a, e
    and  a
    jr   nz, label_4A4D
    pop  hl
    ld   bc, $4E
    ld   a, $01
    call label_4A3F
    ld   bc, $44
    call label_4A3F
    ld   bc, $43
    ld   a, $02
    call label_4A3F
    ld   bc, $4D
    ld   a, $59
    call label_4A3F
    ld   bc, $77
    call label_4A3F
    ld   bc, $78
    call label_4A3F
    ld   bc, $45
    call label_4A3F
    ld   bc, $76
    ld   a, $39
    call label_4A3F
    ld   bc, $4C
    call label_4A3F
    ret

Data_001_4A98::
    db   $00, $05, $0A

label_4A9B::
    ld   a, [wSaveSlot]
    ld   e, a
    ld   d, $00
    ld   hl, Data_001_4A98
    add  hl, de
    ld   e, [hl]
    ld   hl, $DB80
    add  hl, de
    ld   e, l
    ld   d, h
    ld   bc, $984A
    call func_4852
    ldh  a, [hJoypadState]
    and  J_START
    jr   z, label_4B29
    call PlayValidationJingle
    ld   a, [wSaveSlot]
    sla  a
    ld   e, a
    ld   d, $00
    ld   hl, label_49F2
    add  hl, de
    ld   a, [hli]
    ld   h, [hl]
    ld   l, a
    push hl
    ld   de, $4F
    add  hl, de
    push hl
    ld   a, [wSaveSlot]
    ld   e, a
    sla  a
    sla  a
    add  a, e
    ld   e, a
    ld   d, $00
    ld   hl, $DB80
    add  hl, de
    ld   a, [hli]
    cp   $5B
    jr   nz, label_4AFE
    ld   a, [hli]
    cp   $46
    jr   nz, label_4AFE
    ld   a, [hli]
    cp   $4D
    jr   nz, label_4AFE
    ld   a, [hli]
    cp   $45
    jr   nz, label_4AFE
    ld   a, [hli]
    cp   $42
    jr   nz, label_4AFE
    ld   a, $60
    ld   [wActiveMusicTrack], a

label_4AFE::
    ld   hl, $DB80
    add  hl, de
    pop  bc
    ld   e, $05

label_4B05::
    call EnableExternalRAMWriting
    ld   a, [hli]
    ld   [bc], a
    inc  bc
    dec  e
    jr   nz, label_4B05
    pop  hl
    push hl
    ld   de, $5A
    add  hl, de
    ld   [hl], $18
    pop  hl
    push hl
    ld   de, $5B
    add  hl, de

label_4B1C::
    ld   [hl], $03
    pop  hl
    ld   de, $57
    add  hl, de
    xor  a
    ldi  [hl], a
    ld   [hl], a
    jp   label_4555

label_4B29::
    call label_4BF5
    call label_4C8A
    ret

Data_001_4B30::
    db   $38, $38, $38, $38, $38, $38, $38, $38   ; $4B30
    db   $38, $38, $38, $38, $38, $38, $38, $38   ; $4B38
    db   $48, $48, $48, $48, $48, $48, $48, $48   ; $4B40
    db   $48, $48, $48, $48, $48, $48, $48, $48   ; $4B48
    db   $58, $58, $58, $58, $58, $58, $58, $58   ; $4B50
    db   $58, $58, $58, $58, $58, $58, $58, $58   ; $4B58
    db   $68, $68, $68, $68, $68, $68, $68, $68   ; $4B60
    db   $68, $68, $68, $68, $68, $68, $68, $68   ; $4B68

Data_001_4B70::
    db   $14, $1C, $24, $2C, $34, $3C, $44, $4C   ; $4B70
    db   $54, $5C, $64, $6C, $74, $7C, $84, $8C   ; $4B78
    db   $14, $1C, $24, $2C, $34, $3C, $44, $4C   ; $4B80
    db   $54, $5C, $64, $6C, $74, $7C, $84, $8C   ; $4B88
    db   $14, $1C, $24, $2C, $34, $3C, $44, $4C   ; $4B90
    db   $54, $5C, $64, $6C, $74, $7C, $84, $8C   ; $4B98
    db   $14, $1C, $24, $2C, $34, $3C, $44, $4C   ; $4BA0
    db   $54, $5C, $64, $6C, $74, $7C, $84, $8C   ; $4BA8

Data_001_4BB0::
    db   $4C, $54, $5C, $64, $6C                  ; $4BB0

NameEntryCharacterTable::
    ; Used to translate cursor position -> name letter
    ; on the name entry menu. Does not actually represent
    ; the graphics - this is just the letter that is chosen
    ; when you push A
    PUSHC
    SETCHARMAP NameEntryCharmap
    db   "ABCDEFG",  0,0, "abcdefg"
    db   "HIJKLMN",  0,0, "hijklmn"
    db   "OPQRSTU",  0,0, "opqrstu"
    db   "VWXYZ",0,0,0,0, "vwxyz",0,0
    POPC

label_4BF5::
    ldh  a, [hJoypadState]

label_4BF7::
    ldh  [hScratch0], a
    ldh  a, [hScratch0]
    and  $0C
    jr   nz, label_4C41
    ldh  a, [hScratch0]
    and  $03
    jr   nz, label_4C21
    ldh  a, [hPressedButtonsMask]
    ld   hl, $C182
    and  $0F
    jr   nz, label_4C12
    xor  a
    ld   [hl], a
    jr   label_4C1F

label_4C12::
    ld   a, [hl]
    inc  a
    ld   [hl], a
    cp   $18
    jr   nz, label_4C1F
    ld   [hl], $15
    ldh  a, [hPressedButtonsMask]
    jr   label_4BF7

label_4C1F::
    jr   label_4C63

label_4C21::
    call label_6BAE
    bit  1, a
    jr   nz, label_4C34
    ld   a, [$DBA9]
    add  a, $01
    cp   $40
    jr   c, label_4C5E
    xor  a
    jr   label_4C5E

label_4C34::
    ld   a, [$DBA9]
    sub  a, $01
    cp   $FF
    jr   nz, label_4C5E
    ld   a, $3F
    jr   label_4C5E

label_4C41::
    call label_6BAE
    bit  2, a
    jr   z, label_4C53
    ld   a, [$DBA9]
    sub  a, $10
    jr   nc, label_4C5E
    add  a, $40
    jr   label_4C5E

label_4C53::
    ld   a, [$DBA9]
    add  a, $10
    cp   $40
    jr   c, label_4C5E
    sub  a, $40

label_4C5E::
    ld   [$DBA9], a
    jr   label_4C63

label_4C63::
    ld   a, [$DBA9]
    ld   hl, Data_001_4B70
    ld   c, a
    ld   b, $00
    add  hl, bc
    ld   e, [hl]
    ld   a, [$DBA9]
    ld   hl, Data_001_4B30
    ld   c, a
    ld   b, $00
    add  hl, bc
    ld   d, [hl]
    ld   hl, wOAMBuffer
    ld   a, d
    add  a, $0B
    ldi  [hl], a
    ld   a, e
    add  a, $04
    ldi  [hl], a
    ld   a, $E0
    ldi  [hl], a
    xor  a
    ld   [hl], a
    ret

label_4C8A::                            ; "Enter Name" screen
    ldh  a, [hJoypadState]              ; Check inputs...
    and  J_A | J_B                      ; Was A or B pushed?
    jr   z, label_4CB7                  ; If no, bail
    bit  5, a                           ; Was B pushed?
    jr   nz, label_4CA7                 ; If yes, backspace
    call PlayValidationJingle           ; Otherwise, A was pushed
    call label_4CDA                     ; so add the current letter
    ld   a, [$DBAA]
    add  a, $01
    cp   $05                            ; Prevent cursor from going > 5th place
    jr   c, label_4CB4
    ld   a, $04
    jr   label_4CB4

label_4CA7::
    ; B button when inputting filename
    call PlayValidationJingle
    ld   a, [$DBAA]
    sub  a, $01
    cp   $FF
    jr   nz, label_4CB4
    xor  a                              ; Prevent cursor from going < 1st place

label_4CB4::
    ld   [$DBAA], a

label_4CB7::
    ld   a, [$DBAA]
    ld   hl, Data_001_4BB0
    ld   c, a
    ld   b, $00
    add  hl, bc
    ld   e, [hl]
    ldh  a, [hFrameCounter]
    and  $10
    jr   z, .return
    ld   hl, $C004
    ld   a, $18
    add  a, $0B
    ldi  [hl], a
    ld   a, e
    add  a, $0C
    ldi  [hl], a
    ld   a, $E0
    ldi  [hl], a
    xor  a
    ld   [hl], a

.return
    ret

label_4CDA::
    ld   a, [$DBA9]
    ld   c, a
    ld   b, $00
    ld   hl, NameEntryCharacterTable
    add  hl, bc
    ld   a, [hl]
    ld   e, a
    ld   a, [wSaveSlot]
    ld   c, a
    sla  a
    sla  a
    add  a, c
    ld   c, a
    ld   hl, $DB80
    add  hl, bc
    ld   a, [$DBAA]
    ld   c, a
    add  hl, bc
    ld   [hl], e
    ret
