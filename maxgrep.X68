*-----------------------------------------------------------
* Title      :  Gabriel Bauer
* Written by :  maxgrep
* Date       :  3/29/2023
* Description:	Finds a maximum number for an indefinite amount of input
*-----------------------------------------------------------
    ORG     $1200
maxstr	dc.b	'Max : ', 0
empty   dc.b    0
max     ds      4
    ORG    $1000
START:                  ; first instruction of program
    lea     max, A0
	move	#4, D0
	trap	#15
	cmp    (A0), D1
	nop
	bgt     replace
	bsr     prntmx
	bra     start
	

replace:
    move    D1, (A0)
	bsr     prntmx
	bra     start

prntmx
    move	#14, D0
	lea     maxstr, A1
	trap	#15
	move	#3, D0
	move    (A0), D1
	trap	#15
	lea     empty, A1
	move    #13, D0
	trap    #15
	rts

* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
