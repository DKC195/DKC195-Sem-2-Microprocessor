LXI H, 08A0H	; SETTING UP - SUB USING ADI - ADDRESS = 08A0H
MVI M, 70H		; VAL(08A0H) = 30H

LXI H, 08A0H  ; ADI BEGIN - ADDRESS = 08A0H "INPUT = 70H 00H"
MOV A, M      ; A = VAL(08A0H) "= 70H"
ADI 20H		    ; A = A + 20H "= 90H"
INX H				  ; ADDRESS = 08A1H
MOV M, A		  ; VAL(08A1H) = A "= 90H"
HLT           ; "OUTPUT = 70H 90H"