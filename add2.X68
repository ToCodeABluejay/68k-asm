*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1200
str1    dc.b    "Type a single number: "
str2    dc.b    "The sum is: "
    ORG    $1000
START:                  ; first instruction of program
    lea     str1, A1
    move    #14, D0
    trap    #15
    add     #1, D2

    

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
