IDENTIFICATION DIVISION.
PROGRAM-ID. ADD-TWO-NUMBERS.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM1 PIC 9(3).
01 NUM2 PIC 9(3).
01 NUM3 PIC 9(3).

PROCEDURE DIVISION.
    DISPLAY "Enter the first number: ".
    ACCEPT NUM1.
    DISPLAY "Enter the second number: ".
    ACCEPT NUM2.
    COMPUTE NUM3 = NUM1 + NUM2.
    DISPLAY "The sum of the two numbers is ", NUM3.
    STOP RUN.