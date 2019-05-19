<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>

<CsInstruments>
sr = 22100
kr = 2210
ksmps = 10
nchnls = 1

    instr    107 ; P-FIELD OSCIL
a1  oscil    p4, p5, p6
    out      a1
    endin

    instr    108 ; P-FIELD FM
a1  foscil   p4, p5, p6, p7, p8, p9
    out      a1
    endin    

; Buzz
; www.csounds.com/manual/html/buzz.html
; ares buzz xamp, xcps, knh, ifn [, iphs]
; Output is a set of harmonically related sine partials
; knh number of harmonics 
    instr   109              ; Simple Buzz
a1  buzz    p4, p5, p6, p7   
    out     a1
    endin


</CsInstruments>

<CsScore>
f 1 0 16384 10 1 ; a high Sine wave
;f 1 0 128 10 1 ; a low sine wave
f 2 0 8192 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062 ; sawtooth
f 3 0 4096 20 2 1 ; grain
f 4  0 0    1   "sing.aif" 0 4 0 ; generate a sample wavetable

; for 109 buzz additive wavetables
f 5 0 16384 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062 ; buzz  - saw
f 6 0 16384 10 1  0 .333  0  .2  0   .142  0   .111  0 .09  0   .076  0   .066  0 ; buzz  - square
f 7 0 16384 10 1  1  1    1  .7  .5  .3   .1 ; buzz  - pulse
f 8 0 16384 10 .3 .5 0    1  .7  .5  .3   .1 ; buzz  - hacked pulse low base freq

; P1    P2    P3    P4      P5      P6              P7
; INS   STRT  DUR   AMP     FREQ    HARM QUANT      WAVESHAPE

;voice 1
i 109   0     1     13000    130.8    16              6
i 109   1     1     14000    146.8    16              6
i 109   2     1     18000    155.5    16              6
i 109   3     1     19000    233      16              6

;voice 2
i 109   2.5     1     10000   97.9    8               7
i 109   3.5     1     9000    77.7    8               7
i 109   4       1     12000   97.9    8               7
i 109   5.5     1     8000    123.4   8               7
</CsScore>
</CsoundSynthesizer>