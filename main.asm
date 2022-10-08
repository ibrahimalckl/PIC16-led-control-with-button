   list p = 16f628a
   include "P16F628A.INC"
   
   ORG h'0000'
   CLRF PORTB
   BANKSEL TRISB
   CLRF TRISB
   BANKSEL PORTB
   movlw b'00010101'
   movwf PORTB
   movlw b'11101010'
   btfsc PORTA,0
   movwf PORTB
   END					
   
;0	1	0	1	0	1	1	1	