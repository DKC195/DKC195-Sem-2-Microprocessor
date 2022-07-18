      LXI H, 08A0H	; SETTING UP - RLC - ADDRESS = 08A0H
      MVI M, 70H		; VAL(08A0H) = 30H
      MVI C, 08H    ; COUNT C = 08H

      LXI H, 08A0H  ; RLC BEGIN - ADDRESS = 08A0H "INPUT = 70 00 00 00 00 00 00 00 00"
LOOP: MOV A, M      ; A = VAL(08A0H) "= 70H"
      INX H         ;
      RLC           ; RLC "A = E0H"
      MOV M, A      ;
      DCR C         ;
      JNZ LOOP      ;
      HLT           ; "OUTPUT = 70 E0	C1 83	07 0E	1C 38	70"