*-----------------------------------------------------------
* Title      :  strcmp
* Written by :  Gabriel Bauer
* Date       :  03/29/2023
* Description:  Compares input from the keyboard to a string
*-----------------------------------------------------------

* The comparisons seem to keep giving me issues...
    ORG     $1200
str1    dc.b    'Hello, world!!',0
eqmsg   dc.b    'The two strings are equal!',0
neqmsg   dc.b    'The two strings are...not equal.',0
    org     $1300
compare     ds    $2000
    ORG    $1000
START:                  ; first instruction of program
    lea     str1, A0
    lea     compare, A1
    move    #2, D0
    trap    #15
    bra     cmp

cmp
    move.b   (A0)+, D1
    move.b   (A1)+, D2
    cmp.b     D1, D2
    bne     notequal
    cmp     #0, D2      If equal, also test if end-of-line
    beq     equal
    bra     cmp         If not end of line and so far equal, jump back to the top of the loop

notequal
    lea neqmsg, A1
    bra end
    
equal
    lea eqmsg, A1
    bra end
    
end
    move    #13, D0
    trap    #15


* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
