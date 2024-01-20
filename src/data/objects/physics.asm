;$00 = Open
;$01 = Solid
;$02 = Stairs
;$03 = Door warp
;$04 = Ocean, pop-up bollard (blocks enemies but not projectiles?)
;$05 = Marsh/swamp/shallow water
;$06 = Cuttable grass
;$07 = Water
;$08 = Bridge (offsets the sprite up a few pixels)
;$09 = Staircase
;$0A = Wide stairs before instrument. Also used by object id $53 in overworld, which seems to be unused.
;$0B = Lava
;$10 = Jumpable ledge
;$30 = Removable obstacle (bush/rock/keyblock/cracked block/sword-crystals/liftable skull/liftable stone)
;$50 = Pit without warp (but also used for teleporter on the overworld)
;$51 = Pit with a warp to other room (D1 boss, D7)
;$60 = Hookshotable solid, dash-crystal, Sign, chest, pushable rock
;$7C = Left solid, right open (left part of the two tile wide door in indoor rooms)
;$7D = Left open, right solid (right part of the two tile wide door in indoor rooms)
;$7E = Top solid, bottom open (bottom of the shelf in houses, shelf in the shop)
;$7F = Top open, bottom solid (used in Yoshi game shop)
;$80 = Left solid, right open (indoor little wall)
;$81 = Left open, right solid (BowWows fence)
;$82 = Top solid, bottom open
;$83 = Top open, bottom solid
;$84 = Top left open, rest solid
;$85 = Top right open, rest solid
;$86 = Bottom left open, rest solid
;$87 = Bottom right open, rest solid
;$88 = Top left solid, rest open
;$89 = Top right solid, rest open
;$8A = Bottom left solid, rest open
;$8B = Bottom right solid, rest open
;$8C = Bottom left and top right solid, rest open. Used by indoors object $19, but this object seems to be unused
;$8D = Top left and bottom right solid, rest open. Used by indoors object $1A, but this object seems to be unused
;$90 = Used by indoor objects $2D and $2E, but these objects seem to be unused
;$91 = Used by indoor objects $2F and $30, but these objects seem to be unused
;$92 = Used by indoor objects $31 and $32, but these objects seem to be unused
;$93 = Used by indoor objects $33 and $34, but these objects seem to be unused
;$98 = Used by indoor objects $A4 and $A5, but these objects seem to be unused
;$99 = Destructable wall (top)
;$9A = Destructable wall (bottom)
;$9B = Destructable wall (left)
;$9C = Destructable wall (right)
;$B0 = Sidescrolling water
;$B1 = Sidescrolling ladder
;$C0 = Keyhole for opening dungeons
;$D0 = Indoor left wall (jumpable)
;$D1 = Indoor right wall (jumpable)
;$D2 = Indoor bottom wall (jumpable)
;$D3 = Indoor top wall (jumpable)
;$E0 = Spikes
;$F0 = Downwards conveyer belt
;$F1 = Upwards conveyer belt
;$F2 = Leftwards conveyer belt
;$F3 = Rightwards conveyer belt
;$F4 = Down-right flowing sand
;$F5 = Down-left flowing sand
;$F6 = Up-right flowing sand
;$F7 = Up-left flowing sand
;$FE = Used by indoors object $FE, but this object seems to be unused
;$FF = Used by all maps object $FF, but this object seems to be unused

OverworldObjectPhysicFlags::
    db   $01, $00, $00, $00, $00, $01, $01, $01   ; $4AD4
    db   $00, $00, $06, $00, $00, $00, $07, $00   ; $4ADC
    db   $00, $00, $00, $00, $00, $00, $00, $00   ; $4AE4
    db   $00, $00, $00, $05, $01, $01, $05, $04   ; $4AEC
    db   $30, $01, $01, $00, $00, $01, $01, $01   ; $4AF4
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4AFC
    db   $05, $01, $01, $01, $01, $01, $01, $01   ; $4B04
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B0C
    db   $01, $01, $01, $10, $00, $01, $01, $01   ; $4B14
    db   $01, $01, $10, $01, $01, $01, $01, $01   ; $4B1C
    db   $01, $01, $01, $0A, $C0, $01, $01, $01   ; $4B24
    db   $01, $01, $01, $01, $30, $01, $01, $01   ; $4B2C
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B34
    db   $01, $01, $01, $01, $01, $01, $60, $01   ; $4B3C
    db   $C0, $01, $01, $01, $01, $01, $01, $02   ; $4B44
    db   $08, $08, $08, $50, $01, $01, $01, $01   ; $4B4C
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B54
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B5C
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B64
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B6C
    db   $60, $60, $01, $01, $00, $01, $01, $01   ; $4B74
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4B7C
    db   $01, $01, $01, $00, $01, $01, $01, $01   ; $4B84
    db   $01, $00, $99, $01, $01, $01, $01, $01   ; $4B8C
    db   $C0, $01, $01, $01, $01, $01, $09, $01   ; $4B94
    db   $60, $01, $01, $03, $09, $01, $01, $F4   ; $4B9C
    db   $F5, $F6, $F7, $30, $60, $01, $01, $01   ; $4BA4
    db   $01, $07, $01, $08, $00, $01, $01, $01   ; $4BAC
    db   $02, $03, $03, $03, $01, $01, $81, $03   ; $4BB4
    db   $50, $01, $01, $07, $07, $07, $07, $50   ; $4BBC
    db   $D1, $01, $01, $D0, $01, $01, $01, $01   ; $4BC4
    db   $01, $01, $01, $01, $01, $01, $01, $FF   ; $4BCC

Indoors1ObjectPhysicFlags::
    db   $00, $50, $00, $00, $00, $00, $0B, $00   ; $4BD4
    db   $7D, $7E, $7F, $7E, $7F, $00, $07, $00   ; $4BDC
    db   $81, $80, $82, $83, $84, $85, $86, $87   ; $4BE4
    db   $00, $8C, $8D, $05, $51, $51, $51, $51   ; $4BEC
    db   $30, $D3, $D2, $D0, $D1, $01, $01, $01   ; $4BF4
    db   $01, $01, $01, $01, $01, $90, $90, $91   ; $4BFC
    db   $91, $92, $92, $93, $93, $D3, $D3, $D2   ; $4C04
    db   $D2, $D0, $D0, $D1, $D1, $00, $00, $99   ; $4C0C
    db   $9A, $9B, $9C, $7C, $7D, $01, $01, $99   ; $4C14
    db   $9A, $9B, $9C, $B0, $00, $00, $60, $60   ; $4C1C
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4C24
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4C2C
    db   $01, $01, $B1, $B1, $B1, $B1, $B1, $B0   ; $4C34
    db   $01, $00, $00, $00, $01, $01, $00, $00   ; $4C3C
    db   $00, $00, $B0, $B0, $B0, $00, $00, $00   ; $4C44
    db   $00, $00, $00, $01, $00, $B0, $B0, $00   ; $4C4C
    db   $B0, $B0, $00, $B0, $B0, $B0, $01, $01   ; $4C54
    db   $60, $00, $01, $01, $7C, $00, $30, $60   ; $4C5C
    db   $01, $01, $00, $88, $89, $8A, $8B, $0A   ; $4C64
    db   $02, $01, $7E, $01, $01, $00, $00, $00   ; $4C6C
    db   $60, $60, $03, $03, $98, $98, $60, $60   ; $4C74
    db   $03, $30, $00, $01, $01, $01, $50, $50   ; $4C7C
    db   $50, $7C, $7D, $00, $00, $00, $8B, $8A   ; $4C84
    db   $8B, $8A, $01, $7C, $7D, $01, $00, $00   ; $4C8C
    db   $01, $7C, $7D, $01, $01, $01, $01, $D3   ; $4C94
    db   $D2, $D0, $D1, $08, $09, $7E, $01, $F0   ; $4C9C
    db   $F1, $F2, $F3, $7F, $E0, $01, $01, $01   ; $4CA4
    db   $01, $60, $00, $04, $04, $30, $01, $00   ; $4CAC
    db   $00, $00, $00, $00, $00, $00, $00, $00   ; $4CB4
    db   $00, $00, $00, $01, $01, $01, $01, $01   ; $4CBC
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4CC4
    db   $01, $01, $01, $01, $01, $01, $FE, $FF   ; $4CCC

Indoors2ObjectPhysicFlags::
    db   $00, $50, $00, $00, $00, $00, $0B, $00   ; $4CD4
    db   $7D, $7E, $7F, $7E, $7F, $00, $07, $00   ; $4CDC
    db   $81, $80, $82, $83, $84, $85, $86, $87   ; $4CE4
    db   $00, $8C, $8D, $05, $51, $51, $51, $51   ; $4CEC
    db   $30, $D3, $D2, $D0, $D1, $01, $01, $01   ; $4CF4
    db   $01, $01, $01, $01, $01, $90, $90, $91   ; $4CFC
    db   $91, $92, $92, $93, $93, $D3, $D3, $D2   ; $4D04
    db   $D2, $D0, $D0, $D1, $D1, $00, $00, $99   ; $4D0C
    db   $9A, $9B, $9C, $7C, $7D, $01, $01, $99   ; $4D14
    db   $9A, $9B, $9C, $B0, $00, $00, $60, $60   ; $4D1C
    db   $00, $00, $00, $00, $00, $00, $00, $00   ; $4D24
    db   $00, $00, $50, $00, $00, $00, $00, $50   ; $4D2C
    db   $00, $00, $00, $00, $50, $00, $00, $00   ; $4D34
    db   $00, $00, $00, $00, $00, $00, $00, $00   ; $4D3C
    db   $00, $00, $B0, $B0, $B0, $00, $00, $00   ; $4D44
    db   $00, $00, $00, $01, $00, $B0, $B0, $00   ; $4D4C
    db   $B0, $B0, $00, $B0, $B0, $B0, $01, $01   ; $4D54
    db   $60, $00, $01, $01, $7C, $00, $30, $60   ; $4D5C
    db   $01, $01, $00, $88, $89, $8A, $8B, $0A   ; $4D64
    db   $02, $01, $7E, $01, $01, $00, $00, $00   ; $4D6C
    db   $60, $60, $03, $03, $98, $98, $60, $60   ; $4D74
    db   $03, $30, $00, $01, $01, $01, $50, $50   ; $4D7C
    db   $50, $7C, $7D, $00, $00, $00, $8B, $8A   ; $4D84
    db   $8B, $8A, $01, $7C, $7D, $01, $00, $00   ; $4D8C
    db   $01, $7C, $7D, $01, $01, $01, $01, $D3   ; $4D94
    db   $D2, $D0, $D1, $08, $09, $7E, $01, $F0   ; $4D9C
    db   $F1, $F2, $F3, $7F, $E0, $01, $01, $01   ; $4DA4
    db   $01, $60, $00, $04, $04, $30, $01, $00   ; $4DAC
    db   $00, $00, $00, $00, $00, $00, $00, $00   ; $4DB4
    db   $00, $00, $00, $01, $01, $01, $01, $01   ; $4DBC
    db   $01, $01, $01, $01, $01, $01, $01, $01   ; $4DC4
    db   $01, $01, $01, $01, $01, $01, $FE, $FF   ; $4DCC
