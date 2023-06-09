IDENTIFICATION DIVISION.
PROGRAM-ID. READ.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT MY-FILE ASSIGN TO 'input.txt'.
SELECT MY-FILE2 ASSIGN TO 'output.txt'.

DATA DIVISION.
FILE SECTION.
FD  MY-FILE.
01 MY-RECORD.
   05 MY-NAME         PIC X(1).
FD  MY-FILE2.
01 MY-WRİTER.
   05 MY-NAME2         PIC X(2).

WORKING-STORAGE SECTION.
01 WS-FILENAME        PIC X(30) VALUE "input.txt".
01 WS-EOF-SW          PIC X(1)  VALUE "N".
PROCEDURE DIVISION.
       OPEN INPUT MY-FILE
       OPEN OUTPUT MY-FILE2
       PERFORM UNTIL WS-EOF-SW = "Y"
           READ MY-FILE
               AT END
                   MOVE "Y" TO WS-EOF-SW
               NOT AT END
                   MOVE MY-NAME TO MY-NAME2
                   write MY-WRİTER
                   DISPLAY "Name: " MY-NAME
           END-READ
           
       END-PERFORM
       CLOSE MY-FILE
       CLOSE MY-FILE2
       
       STOP RUN.
