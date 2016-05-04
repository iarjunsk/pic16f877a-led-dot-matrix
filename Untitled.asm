	LIST p=16f877a 			
	#include "P16f877a.inc"	






	bsf STATUS, RP0 			;	select bank 1 (to enable us to change the Input / Output status of our ports)
	movlw b'00000000' 			;	set PORTB all outputs (A '0' means output, A '1' means input. We can set each
	movwf TRISB					;	We can set each bit individualy. Each port having 8-bits or 8 pins.
	movlw b'00000000' 			;	set PORTA all outputs except for bit 5. Bit 5 is an input ONLY pin.
	movwf TRISC 				;	It cannot be set to an output!
	bcf STATUS, RP0 			;	select bank 0

MAIN:


	movlw b'11111110'
	movwf PORTC					;	send 000 to PORTA (remember we are concerned with PORTA 0, 1 and 2)
	movlw b'00111100'			;	Now that we have our column activated, we send out a byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB
	

	movlw b'11111101'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'01000010'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB

	movlw b'11111011'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'10100101'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB

	movlw b'11110111'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'10000001'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB   

	movlw b'11101111'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'10100101'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB

	movlw b'11011111'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'10011001'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB

	movlw b'10111111'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'01000010'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB	

	movlw b'01111111'
	movwf PORTC					;	on PORTA (which connects to the 7442)
	movlw b'00111100'			;	Now that we have our next column activated, we send out the next byte of data to the anodes
	movwf PORTB					;	by placing the data on PORTB
clrf PORTB




GOTO MAIN

END