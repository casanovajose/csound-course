; reserved to make something creative
sr = 44100
kr = 4410
ksmps = 10
nchnls = 1

    instr   101, simpleOscil1  ;Simple oscilator
a1  oscil   3000, 440, 1
    out a1
    endin

    instr   111, simpleOscil2   ;Simple oscilator
a1  oscil   8000, 422, 1
    out a1
    endin

; FM
; amp, freq (common denominator), carrier, mod, modulation index, function, phase
    instr   102           ; Simple FM
a1  foscil  10000, 445, 1, 2, 3, 1
    out     a1
    endin

; Buzz
; ares buzz xamp, xcps, knh, ifn [, iphs]
; Output is a set of harmonically related sine partials
; knh number of harmonics 
    instr   103              ; Simple Buzz
a1  buzz    10000, 50, 10, 5   
    out     a1
    endin

    instr   104               ; Simple Waveguide
a1  pluck   10000, 460, 440, 2, 1
    out     a1
    endin

    instr   105   ; Simple Granular
a1  grain   10000, 470, 55, 10000, 10, .05, 1, 3, 1
    out     a1
    endin

;ar1 [,ar2] loscil xamp, kcps, ifn [, ibas] [, imod1] [, ibeg1] [, iend1] \
;      [, imod2] [, ibeg2] [, iend2]
    instr   106 ; Simple Wavetable
a1  loscil  10000, 490, 4, 440 ; amp freq, function (GEN1) in score; base freq
    out     a1
    endin