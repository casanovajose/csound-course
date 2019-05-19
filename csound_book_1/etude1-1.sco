; reserved to make something creative
; tables and notes

; http://www.csounds.com/manual/html/GEN01.html
; This subroutine transfers data from a soundfile into a function table.

; http://www.csounds.com/manual/html/GEN10.html
; These subroutines generate composite waveforms made up of weighted sums of simple sinusoids.
; The specification of each contributing partial requires 1 pfield using GEN10.

; http://www.csounds.com/manual/html/GEN20.html
; This subroutine generates functions of different windows.
; These windows are usually used for spectrum analysis or for grain envelopes
;
; f number load-time table-size  GEN Rutine  Parameters.. ; comments
f 1 0 4096 10 1 ; A Sine wave
f 2 0 4096 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062 ; sawtooth
f 3 0 4096 20 2 1 ; grain
f 4  0 0    1   "sing.aif" 0 4 0 ; generate a sample wavetable
f 5 0 8192 10 1 0 .333 0 .2 0 .142 0 .111 0 .09 0 .076 0 .066 0 ; buzz  - quase square

; inst   start   duration
i 101       0       
i 111       0.3       3

i 101       0.5       3
i 111       0.8       3

i 101       1       3
i 111       1.3       3

i 101       1.5       3
i 111       2       3

i 101       2       3
i 111       2.6       3

i 101       3       3
i 111       3.2       3

i 101       4.5       3
i 111       5       3

i 101       5.5       3
i 111       7       3

i 101       7.5       3
i 111       9       3