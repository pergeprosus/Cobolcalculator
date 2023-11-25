       IDENTIFICATION DIVISION.
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
      * Data division for variables. Workstorage for temp variables. Num1 and 
      * Num2 for numbers, result for combined numbers, oper for operator, and 
      * messages.

       PROCEDURE DIVISION.
           DISPLAY PromptMsg ACCEPT Num1
           DISPLAY PromptMsg ACCEPT Num2
      * Display the prompt msg, and then take nums as input.
           DISPLAY "Select operation (+, -, *, /): " ACCEPT Oper
      * Display operation selection, and accept into oper.

           EVALUATE Oper
 
           WHEN '+'
           ADD Num1 TO Num2 GIVING Result
           DISPLAY "Result: " Result
      * If plus is chosen, add nums together and make it result and display.
           WHEN '-'
           SUBTRACT Num1 FROM Num2 GIVING Result
           DISPLAY "Result: " Result

           WHEN '*'
           MULTIPLY Num1 BY Num2 GIVING Result
           DISPLAY "Result: " Result

           WHEN '/'
           IF Num2 = 0
           DISPLAY "You can't divide by zero, buddy"
ELSE
           DIVIDE Num1 BY Num2 GIVING Result
           DISPLAY "Result: " Result
           END-IF

      * If the 2nd num is zero, dont let divide. otherwise, go ahead
           WHEN OTHER
           DISPLAY ErrorMsg
      * If entry is not valid, display the error message
           END-EVALUATE
           STOP RUN.
      * End the evaluation, stop program with stop run