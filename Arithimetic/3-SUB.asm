LXI H, 08A0H	; SETTING UP - SUB - ADDRESS = 08A0H
MVI M, 70H		; VAL(08A0H) = 30H
INX H			    ; ADDRESS = 08A1H 
MVI M, 20H		; VAL(08A1H) = 20H

LXI H, 08A0H	; SUB BEGIN - ADDRESS = 08A0H "INPUT = 30H 20H 00H"
MOV A, M      ; A = VAL(08A0H) "= 70H"
INX H   			; ADDRESS = 08A1H
SUB M		    	; A = A - VAL(08A1H) "= 10H"
INX H			    ; ADDRESS = 08A2H
MOV M, A		  ; VAL(08A2H) = A "= 10H"
HLT           ; "OUTPUT = 30H 20H 10H"