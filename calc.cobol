IDENTIFICATION-DIVISION.
PROGRAM-ID. COBOL-CALC.
AUTHOR. Keith Floyd.
DATE-WRITTEN. 2023-11-24.
      * Identification division for identification and documentation

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Num1 PIC 9(4).
01 Num2 PIC 9(4).
01 Result PIC 9(8).
01 Oper PIC X.
01 PromptMsg PIC X(40) VALUE "Enter Number: ".
01 ErrorMsg PIC X(40) VALUE "INVALID NUMBER".
      * Data division for variables. Workstorage for temp variables. Num1 and Num2 for numbers, result for combined numbers, oper for operator, and the messages. 
