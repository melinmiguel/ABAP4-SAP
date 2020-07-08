*****************************************************************************
*Calculadora Inicial em ABAP4 / SAP para aprendizado.
*																		  		
*Programa realizado por: Leonardo M. Miguel 						  		
*e-mail: melinmiguel@gmail.com	em caso de duvidas, entre em contato! 		
*Prog. nº 1															  		
*****************************************************************************

REPORT MIGUEL.
TABLES LFA1.

selection-screen begin of block b0 with frame title text-000.
PARAMETERS: A TYPE i,
             B TYPE i.

selection-screen end of block b0.
 DATA: C TYPE P DECIMALS 10, p type C.


selection-screen begin of block b1 with frame title text-001.
 PARAMETERS: R1 RADIOBUTTON GROUP RB,
             R2 RADIOBUTTON GROUP RB,
             R3 RADIOBUTTON GROUP RB,
             R4 RADIOBUTTON GROUP RB.
 selection-screen end OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK B2 WITH FRAME TITLE text-002.
  PARAMETER: R6 RADIOBUTTON GROUP RC,
             R7 RADIOBUTTON GROUP RC.

SELECTION-SCREEN END OF BLOCK B2.

form CALCULADORA.

 IF R1 = 'X'.

   C = A + B.

 ELSEIF R2 = 'X'.

   C = A - B.

 ELSEIF R3 = 'X'.

   C = A * B.

ELSEIF R4 = 'X'.

 C = A / B.

 ENDIF.

 WRITE: C.

ENDFORM.


form mensagem.

 IF R6 = 'X'.

   WRITE: 'você conseguiu terminar, muito bom!'.

 ELSEIF R7 = 'X'.
  WRITE: 'se pa que talvez, você terminou!'.

 ENDIF.
ENDFORM.

 START-OF-SELECTION.

 PERFORM calculadora.
  PERFORM mensagem.
  
  END-OF-SELECTION.
