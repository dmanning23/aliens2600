
; Generic Sound Effect Engine for Atari 2600
; -----------------------------------------



; Sound Effect IDs
SFX_ID_QUEENSTEP = 1
SFX_ID_SHOOT = 2
SFX_ID_LOADERSTEP = 3
SFX_ID_LOADERATTACK = 4
SFX_ID_LOADERBEGINATTACK = 5
SFX_ID_LOADERBLOCK = 6
SFX_ID_LOADERKNOCKBACK = 7
SFX_ID_SCREECH = 8
SFX_ID_ALIENDEATH = 9


; Sound effect lengths for reference
SFX_QUEENSTEP_LENGTH = #44
SFX_SHOOT_LENGTH = #21
SFX_LOADERSTEP_LENGTH = #47
SFX_LOADERATTACK_LENGTH = #26
SFX_LOADERBEGINATTACK_LENGTH = #21
SFX_LOADERBLOCK_LENGTH = #21
SFX_LOADERKNOCKBACK_LENGTH = #35
SFX_SCREECH_LENGTH = #34
SFX_ALIENDEATH_LENGTH = #47


; Sound Effect Data Structures
; Format: 
;   First byte = Length of sound effect
;   Next N bytes = Frequency values
;   Next N bytes = Control/Volume values

sfxQUEENSTEP:
    .byte #44 ; QueenStep Length
    ; Frequency values
    .byte 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 9, 9, 9, 9, 9, 9, 9, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26
    ; Control/Volume values
    .byte $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $88, $88, $88, $88, $88, $88, $87, $88, $88, $88, $88, $88, $88, $87, $86, $85, $84, $83, $82, $81

sfxSHOOT:
    .byte #21 ; Shoot Length
    ; Frequency values
    .byte 4, 4, 4, 4, 4, 4, 4, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30
    ; Control/Volume values
    .byte $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8e, $8d, $8b, $8a, $89, $88, $67, $66, $65, $64, $62

sfxLOADERSTEP:
    .byte #47 ; LoaderStep Length
    ; Frequency values
    .byte 16, 16, 16, 16, 16, 13, 13, 13, 11, 16, 16, 13, 13, 13, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 7, 7, 7, 7, 7, 7, 11, 11, 11, 11, 11, 11, 11, 11, 11
    ; Control/Volume values
    .byte $f2, $f3, $f4, $f5, $f5, $f6, $f6, $f6, $f6, $f5, $f5, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $f6, $26, $26, $20, $20, $26, $26, $27, $27, $27, $27, $27, $27, $26, $25, $24, $23

sfxLOADERATTACK:
    .byte #26 ; LoaderAttack Length
    ; Frequency values
    .byte 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12
    ; Control/Volume values
    .byte $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8f, $8d, $8b, $89, $87, $85, $83, $81, $81

sfxLOADERBEGINATTACK:
    .byte #21 ; LoaderBeginAttack Length
    ; Frequency values
    .byte 24, 24, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14
    ; Control/Volume values
    .byte $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fd, $fe, $fe, $fe, $fe, $fe, $fe, $fe

sfxLOADERBLOCK:
    .byte #21 ; LoaderBlock Length
    ; Frequency values
    .byte 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 10, 0, 1, 2, 3, 4, 5, 6, 7, 8
    ; Control/Volume values
    .byte $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fd, $fd, $fd, $fd, $fe, $8c, $8d, $8e, $8e, $8e, $8e, $8e, $8e, $8e

sfxLOADERKNOCKBACK:
    .byte #35 ; LoaderKnockback Length
    ; Frequency values
    .byte 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 11, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22
    ; Control/Volume values
    .byte $6c, $6c, $6c, $6c, $6c, $6a, $68, $66, $64, $62, $62, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2b, $2a, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28

sfxSCREECH:
    .byte #34 ; Screech Length
    ; Frequency values
    .byte 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 6, 7, 7, 7, 8, 9, 10, 11, 12, 13, 14, 15
    ; Control/Volume values
    .byte $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f

sfxALIENDEATH:
    .byte #47 ; AlienDeath Length
    ; Frequency values
    .byte 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 19, 21, 23, 25, 27, 29, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
    ; Control/Volume values
    .byte $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7e, $7d, $7c, $7b, $7a, $79, $78, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef


; Sound Effect Table
SFXTable:
    .word sfxQUEENSTEP ; ID = 1
    .word sfxSHOOT ; ID = 2
    .word sfxLOADERSTEP ; ID = 3
    .word sfxLOADERATTACK ; ID = 4
    .word sfxLOADERBEGINATTACK ; ID = 5
    .word sfxLOADERBLOCK ; ID = 6
    .word sfxLOADERKNOCKBACK ; ID = 7
    .word sfxSCREECH ; ID = 8
    .word sfxALIENDEATH ; ID = 9


; Turn off all sound
; Call this during game initialization
SFX_OFF:
    ldx #0             ; Silence sound output
    stx SFX_LEFT
    stx SFX_RIGHT
    stx AUDV0
    stx AUDV1
    stx AUDC0
    stx AUDC1
    stx SFX_LEFT_TIMER
    stx SFX_RIGHT_TIMER
    rts

; Trigger a sound effect
; Input: Y register = sound effect ID (1, 2, 3, etc.)
; Higher numbered IDs have higher priority
SFX_TRIGGER:
    lda SFX_LEFT       ; Test left channel, will be 0 if channel is idle
    bne .leftnotfree   ; If not 0 then skip ahead
    sty SFX_LEFT       ; Channel is idle, use it
    lda #0             ; Reset the timer for the left channel
    sta SFX_LEFT_TIMER
    rts                ; All done
.leftnotfree:
    lda SFX_RIGHT      ; Test right channel, will be 0 if channel is idle
    bne .rightnotfree  ; If not 0 then skip ahead
    sty SFX_RIGHT      ; Channel is idle, use it
    lda #0             ; Reset the timer for the right channel
    sta SFX_RIGHT_TIMER
    rts                ; All done
.rightnotfree:
    cpy SFX_LEFT       ; Test sfx priority with left channel
    bcc .leftnotlower  ; Skip ahead if new sfx has lower priority than active sfx
    sty SFX_LEFT       ; New sfx has higher priority so use left channel
    lda #0             ; Reset the timer for the left channel
    sta SFX_LEFT_TIMER
    rts                ; All done
.leftnotlower:
    cpy SFX_RIGHT      ; Test sfx with right channel
    bcc .rightnotlower ; Skip ahead if new sfx has lower priority than active sfx
    sty SFX_RIGHT      ; New sfx has higher priority so use right channel
    lda #0             ; Reset the timer for the right channel
    sta SFX_RIGHT_TIMER
.rightnotlower:
    rts

; Update sound effects - call this once per frame
SFX_UPDATE:
    ;----- LEFT CHANNEL UPDATE -----
    lda SFX_LEFT          ; Load the left channel sound effect ID
    beq .updateRight      ; If 0, no sound playing, jump to right channel
    
    ; Calculate table index (ID-1)*2
    tax                   ; Sound effect ID in X
    dex                   ; Adjust for 0-based indexing
    txa
    asl                   ; Multiply by 2 (for 16-bit address)
    tax                   ; Put index back in X
    
    ; Load sound effect address into TempWord
    lda SFXTable,x
    sta TempWord
    lda SFXTable+1,x
    sta TempWord+1
    
    ; Get frequency value BEFORE incrementing timer
    ldy SFX_LEFT_TIMER
    iny                   ; Skip length byte
    lda (TempWord),y      ; Get frequency
    sta AUDF0             
    
    ; Calculate offset to control/volume data
    ldy #0
    lda (TempWord),y      ; Get length
    clc
    adc #1                ; Add 1 to skip length byte
    adc SFX_LEFT_TIMER    ; Add current timer position
    tay                   ; Index in Y
    
    ; Get control/volume value
    lda (TempWord),y      ; Get CV byte
    
    ; Split into volume and control
    tax                   ; Save full value in X
    and #$0F              ; Mask for volume (low 4 bits)
    sta AUDV0             ; Set volume
    
    txa                   ; Get full value back
    lsr                   ; Shift right 4 times for control
    lsr
    lsr
    lsr
    sta AUDC0             ; Set control
    
    ; NOW increment the timer after using it
    inc SFX_LEFT_TIMER
    
    ; Get length of the sound effect to check if finished
    ldy #0
    lda (TempWord),y      ; Get length byte
    
    ; Check if sound effect is finished
    cmp SFX_LEFT_TIMER
    bne .updateRight      ; Continue if not finished
    
    ; Sound effect is finished
    lda #0
    sta SFX_LEFT
    sta SFX_LEFT_TIMER
    sta AUDV0             ; Silence channel
    
    ;----- RIGHT CHANNEL UPDATE -----
.updateRight:
    lda SFX_RIGHT         ; Load the right channel sound effect ID
    beq .done             ; If 0, no sound playing, we're done
    
    ; Calculate table index (ID-1)*2
    tax                   ; Sound effect ID in X
    dex                   ; Adjust for 0-based indexing
    txa
    asl                   ; Multiply by 2 (for 16-bit address)
    tax                   ; Put index back in X
    
    ; Load sound effect address into TempWord
    lda SFXTable,x
    sta TempWord
    lda SFXTable+1,x
    sta TempWord+1
    
    ; Get frequency value BEFORE incrementing timer
    ldy SFX_RIGHT_TIMER
    iny                   ; Skip length byte
    lda (TempWord),y      ; Get frequency
    sta AUDF1             
    
    ; Calculate offset to control/volume data
    ldy #0
    lda (TempWord),y      ; Get length
    clc
    adc #1                ; Add 1 to skip length byte
    adc SFX_RIGHT_TIMER   ; Add current timer position
    tay                   ; Index in Y
    
    ; Get control/volume value
    lda (TempWord),y      ; Get CV byte
    
    ; Split into volume and control
    tax                   ; Save full value in X
    and #$0F              ; Mask for volume (low 4 bits)
    sta AUDV1             ; Set volume
    
    txa                   ; Get full value back
    lsr                   ; Shift right 4 times for control
    lsr
    lsr
    lsr
    sta AUDC1             ; Set control
    
    ; NOW increment the timer after using it
    inc SFX_RIGHT_TIMER
    
    ; Get length of the sound effect to check if finished
    ldy #0
    lda (TempWord),y      ; Get length byte
    
    ; Check if sound effect is finished
    cmp SFX_RIGHT_TIMER
    bne .done             ; Continue if not finished
    
    ; Sound effect is finished
    lda #0
    sta SFX_RIGHT
    sta SFX_RIGHT_TIMER
    sta AUDV1             ; Silence channel
    
.done:
    rts

; Example of how to use the sound engine:
; 1. Initialize the sound engine
;    jsr SFX_OFF
;
; 2. Trigger a sound effect
;    ldy #SFX_ID_SHOOT (replace with your sound effect ID)
;    jsr SFX_TRIGGER
;
; 3. Update the sound engine once per frame (in your main game loop)
;    jsr SFX_UPDATE
