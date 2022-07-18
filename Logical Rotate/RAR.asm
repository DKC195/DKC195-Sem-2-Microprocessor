      LXI H, 08A0H	; SETTING UP - RAR - ADDRESS = 08A0H
      MVI M, 70H		; VAL(08A0H) = 30H
      MVI C, 08H    ; COUNT C = 08H

      LXI H, 08A0H  ; RAR BEGIN - ADDRESS = 08A0H "INPUT = 70 00 00 00 00 00 00 00 00 00"
LOOP: MOV A, M      ; A = VAL(08A0H) "= 70H"
      INX H         ;
      RAR           ; RAR "A = E0H"
      MOV M, A      ;
      DCR C         ;
      JNZ LOOP      ;
      HLT           ; "OUTPUT = 70 38	1C 0E	07 03	81 C0	E0 70"