<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>

<CsInstruments>
    instr 113 ;Simple oscil with envelope
k1  linen p4, p7, p3, p8 ;p3=Dur p4=amp p7=atack p8=release
a1  oscil k1, p5, p6 ; p5= freq p6=waveshape
    out   a1
    endin
</CsInstruments>

<CsScore>
f 1 0 16384 10 1  1  1    1  .7  .5  .3   .1 ; buzz  - pulse
f 2 0 16384 10 .3 .5 0    1  .7  .5  .3   .1 ; buzz  - hacked pulse low base freq

i 113 0 2 15000 110 1 0.2 1
</CsScore>

</CsoundSynthesizer>