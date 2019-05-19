sr = 44100
kr = 4410
ksmps = 10
nchnls = 1

    instr   101  ;Simple oscilator
a1  oscil   10000, 440, 1
    out a1
    endin

; FM
; www.csounds.com/manual/html/foscil.html
; xamp * cos(2π * t * kcps * xcar + kndx * sin(2π * t * kcps * xmod) - π) - assuming that the table is a sine wave

; ares foscil xamp, kcps, xcar, xmod, kndx, ifn [, iphs]
; amp, freq (common denominator), carrier, mod, modulation index, function, phase
    instr   102           ; Simple FM
a1  foscil  10000, 445, 1, 2, 3, 1
    out     a1
    endin

; Buzz
; www.csounds.com/manual/html/buzz.html
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
; http://www.csounds.com/manual/html/loscil.html
; http://www.csounds.com/manual/html/GEN01.html
    instr   106 ; Simple Wavetable
a1  loscil  10000, 490, 4, 440 ; amp freq, function (GEN1) in score; base freq
    out     a1
    endin