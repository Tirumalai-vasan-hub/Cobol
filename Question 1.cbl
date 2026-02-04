IDENTIFICATION DIVISION.
PROGRAM-ID. NUMBERMENU.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 CHOICE        PIC 9.
01 NUM      PIC 9(5).
01 TEMP          PIC 9(5).
01 REM           PIC 9.
01 REV           PIC 9(5).
01 TOTAL         PIC 9(6).
01 I             PIC 9(5).

PROCEDURE DIVISION.
    
        DISPLAY "1 Palindrome Number"
        DISPLAY "2 Armstrong Number"
        DISPLAY "3 Perfect Number"
        DISPLAY "4 Exit"
        DISPLAY "Enter your choice: "
        ACCEPT CHOICE

        EVALUATE CHOICE
            WHEN 1
                PERFORM PALINDROME
            WHEN 2
                PERFORM ARMSTRONG
            WHEN 3
                PERFORM PERFECT
            WHEN 4
                DISPLAY "Exiting Program..."
            WHEN OTHER
                DISPLAY "Invalid Choice"
        END-EVALUATE
    

    STOP RUN.

PALINDROME.
    DISPLAY "Enter a number: "
    ACCEPT NUM

    MOVE NUM TO TEMP
    MOVE 0 TO REV

    PERFORM UNTIL TEMP = 0
        COMPUTE REM = FUNCTION MOD(TEMP,10)
        COMPUTE REV = (REV * 10) + REM
        COMPUTE TEMP = TEMP / 10
    END-PERFORM.

    IF REV = NUM
        DISPLAY "Palindrome Number"
    ELSE
        DISPLAY "Not a Palindrome Number"
    END-IF.

ARMSTRONG.
    DISPLAY "Enter a number: "
    ACCEPT NUM

    MOVE NUM TO TEMP
    MOVE 0 TO TOTAL

    PERFORM UNTIL TEMP = 0
        COMPUTE REM = FUNCTION MOD(TEMP,10)
        COMPUTE TOTAL = TOTAL + (REM * REM * REM)
        COMPUTE TEMP = TEMP / 10
    END-PERFORM.

    IF TOTAL = NUM
        DISPLAY "Armstrong Number"
    ELSE
        DISPLAY "Not an Armstrong Number"
    END-IF.

    
PERFECT.
    DISPLAY " Enter a number: "
    ACCEPT NUM
    
    MOVE 0 TO TOTAL
    MOVE 1 TO I
    
    PERFORM UNTIL I >= NUM
        IF FUNCTION MOD(NUM,I) = 0
           COMPUTE TOTAL = TOTAL + I
        END-IF
        ADD 1 TO I
        
    END-PERFORM.
    
    
    IF TOTAL = NUM
        DISPLAY "Perfect Number"
    ELSE
      DISPLAY " Not a Perfect Number"
      
    END-IF.




























