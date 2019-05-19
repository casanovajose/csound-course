<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>

<CsInstruments>
sr = 44100
kr = 4410
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



</CsInstruments>

<CsScore>
f 1 0 16384 10 1 ; a high Sine wave
;f 1 0 128 10 1 ; a low sine wave
f 2 0 8192 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062 ; sawtooth
f 3 0 4096 20 2 1 ; grain
f 4  0 0    1   "sing.aif" 0 4 0 ; generate a sample wavetable
f 5 0 8192 10 1 0 .333 0 .2 0 .142 0 .111 0 .09 0 .076 0 .066 0 ; buzz  - quase square

; P1    P2    P3    P4      P5      P6
; INS   STRT  DUR   AMP     FREQ    WAVESHAPE

i 107   0     1     10000   440     2
i 107   0.5   1     20000   220     2
i 107   1     3     10000   110     2
i 107   1.5   2.5   10000   138.6   2
i 107   2     2     5000    329.6   2
i 107   2.5   1.5   6000    440     2

; FM uses 9 params
; P1    P2    P3    P4      P5      P6    P7      P8      P9
; INS   STRT  DUR   AMP     FREQ    C     M       INDEX   WAVESHAPE

i 108   3     1     10000   440     1     2       3       1
i 108   3.5   1     20000   220     1     .5      8       1
i 108   4     3     10000   110     1     1       13      1
i 108   4.5   2.5   10000   138.6   1     2.001   8       1
i 108   5     2     5000    329.6   1     3.003   5       1
i 108   5.5   1.5   6000    440     1     5.005   3       1
</CsScore>
</CsoundSynthesizer>