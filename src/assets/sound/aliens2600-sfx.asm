SFX_F:
    .byte 0, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 7, 7, 7, 7, 7, 7, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 13, 13, 13, 16, 16, 11, 13, 13, 13, 16, 16, 16, 16, 16 ; LoaderStep
    .byte 0, 30, 28, 26, 24, 22, 20, 18, 16, 14, 12, 10, 8, 6, 4, 4, 4, 4, 4, 4, 4, 4 ; Shoot
    .byte 0, 12, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20 ; LoaderAttack
    .byte 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 24, 24 ; LoaderBeginAttack
    .byte 0, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 12, 11, 11, 9, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 ; LoaderKnockback
    .byte 0, 15, 14, 13, 12, 11, 10, 9, 8, 7, 7, 7, 6, 5, 5, 4, 4, 4, 4, 3, 3, 2, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0 ; Screech
    .byte 0, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 29, 27, 25, 23, 21, 19, 17, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 0, 0 ; AlienDeath

; calculate size of SFX_F table and validate size
SFX_Fcount = * -SFX_F
    if SFX_Fcount > 256
        echo "SFX Warning: table SFX_F is too large"
    endif
    
SFX_CV:
    .byte 0,$23, $24, $25, $26, $27, $27, $27, $27, $27, $27, $26, $26, $20, $20, $26, $26, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f5, $f5, $f6, $f6, $f6, $f6, $f5, $f5, $f4, $f3, $f2 ; LoaderStep
sfxLOADERSTEP = *-SFX_CV-1
    .byte 0,$62, $64, $65, $66, $67, $88, $89, $8a, $8b, $8d, $8e, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f ; Shoot
sfxSHOOT = *-SFX_CV-1
    .byte 0,$81, $81, $83, $85, $87, $89, $8b, $8d, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f ; LoaderAttack
sfxLOADERATTACK = *-SFX_CV-1
    .byte 0,$fe, $fe, $fe, $fe, $fe, $fe, $fe, $fd, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc ; LoaderBeginAttack
sfxLOADERBEGINATTACK = *-SFX_CV-1
    .byte 0,$28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $2a, $2b, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $62, $62, $64, $66, $68, $6a, $6c, $6c, $6c, $6c, $6c ; LoaderKnockback
sfxLOADERKNOCKBACK = *-SFX_CV-1
    .byte 0,$3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f ; Screech
sfxSCREECH = *-SFX_CV-1
    .byte 0,$ef, $ee, $ed, $ec, $eb, $ea, $e9, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f ; AlienDeath
sfxALIENDEATH = *-SFX_CV-1


; Sound effect lengths for looping
SFX_LOADERSTEP_LENGTH = #47
SFX_SHOOT_LENGTH = #21
SFX_LOADERATTACK_LENGTH = #26
SFX_LOADERBEGINATTACK_LENGTH = #21
SFX_LOADERKNOCKBACK_LENGTH = #35
SFX_SCREECH_LENGTH = #34
SFX_ALIENDEATH_LENGTH = #47


; calculate size of SFX_CV table and validate size
SFX_CVcount = *-SFX_CV

 if SFX_CVcount > 256
     echo "SFX Warning: table SFX_CV is too large"
 endif
 if SFX_CVcount != SFX_Fcount
    echo "SFX Warning: table SFX_F is not the same size as table SFX_CV"
 endif


SFX_OFF:
    ldx #0             ; silence sound output
    stx SFX_LEFT
    stx SFX_RIGHT
    stx AUDV0
    stx AUDV1
    stx AUDC0
    stx AUDC1
    rts

SFX_TRIGGER:
    ldx SFX_LEFT       ; test left channel
    lda SFX_CV,x        ; CV value will be 0 if channel is idle
    bne .leftnotfree   ; if not 0 then skip ahead
    sty SFX_LEFT       ; channel is idle, use it
    rts                ; all done
.leftnotfree:
    ldx SFX_RIGHT      ; test right channel
    lda SFX_CV,x        ; CV value will be 0 if channel is idle
    bne .rightnotfree  ; if not 0 then skip ahead
    sty SFX_RIGHT      ; channel is idle, use it
    rts                ; all done
.rightnotfree:
    cpy SFX_LEFT       ; test sfx priority with left channel
    bcc .leftnotlower  ; skip ahead if new sfx has lower priority than active sfx
    sty SFX_LEFT       ; new sfx has higher priority so use left channel
    rts                ; all done
.leftnotlower:
    cpy SFX_RIGHT      ; test sfx with right channel
    bcc .rightnotlower ; skip ahead if new sfx has lower priority than active sfx
    sty SFX_RIGHT      ; new sfx has higher priority so use right channel
.rightnotlower:
    rts

SFX_UPDATE:
    ldx SFX_LEFT       ; get the pointer for the left channel
    lda SFX_F,x         ; get the Frequency value
    sta AUDF0          ; update the Frequency register
    lda SFX_CV,x        ; get the combined Control and Volume value
    sta AUDV0          ; update the Volume register
    lsr                ; prep the Control value,
    lsr                ;   it's stored in the upper nybble
    lsr                ;   but must be in the lower nybble
    lsr                ;   when Control is updated
    sta AUDC0          ; update the Control register
    beq .skipleftdec   ; skip ahead if Control = 0
    dec SFX_LEFT       ; update pointer for left channel
.skipleftdec:
    ldx SFX_RIGHT      ; get the pointer for the right channel
    lda SFX_F,x         ; get the Frequency value
    sta AUDF1          ; update the Frequency register
    lda SFX_CV,x        ; get the combined Control and Volume value
    sta AUDV1          ; update the Volume register
    lsr                ; prep the Control value,
    lsr                ;   it's stored in the upper nybble
    lsr                ;   but must be in the lower nybble
    lsr                ;   when Control is updated
    sta AUDC1          ; update the Control register
    beq .skiprightdec  ; skip ahead if Control = 0
    dec SFX_RIGHT      ; update pointer for right channel
.skiprightdec:
    rts                ; all done
