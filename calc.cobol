IDENTIFICATION-DIVISION.
PROGRAM-ID. COBOL-CALC.
AUTHOR. Keith Floyd.
DATE-WRITTEN. 2023-11-24.
      * Identification division for identification and documentation.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Num1 PIC 9(4).
01 Num2 PIC 9(4).
01 Result PIC 9(8).
01 Oper PIC X.
01 PromptMsg PIC X(40) VALUE "Enter Number: ".
01 ErrorMsg PIC X(40) VALUE "INVALID NUMBER".
      * Data division for variables. Workstorage for temp variables. Num1 and Num2 for numbers, result for combined numbers, oper for operator, and the messages. 

PROCEDURE DIVISION.
DISPLAY PromptMsg ACCEPT Num1
DISPLAY PromptMsg ACCEPT Num2
      * Display the prompt msg, and then take nums as input.
 DISPLAY "Select operation (+, -, *, /): " ACCEPT Oper
      * Display operation selection, and accept into oper.

EVAULATE Oper
WHEN '+'
      ADD Num1 TO Num2 GIVING Result
      DISPLAY "Result: " Result
      * If plus is chosen, add nums together and make it result and display with text.