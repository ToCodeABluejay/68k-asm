*-----------------------------------------------------------
* Title      : Grade calculator
* Written by : The Doctor
* Date       : Timeless
* Description: Figure it out!!!
*-----------------------------------------------------------

* Constants and variables
        ORG     $1200
test	DC	    99	        Test initialized to 99
grade	DS	    1	        Save space but don't initialize
errmsg	DC.B	'Grade lies outside of range!',0  Error message: defined as an initialized variable.
gradeis DC.B    'You re grade is a(n) ',0 Grade print message

    	ORG     $1000		Start here?  	
Begin:	move.b    #4, D0
        trap    #15

	    cmp	    #100,D1		If testscore >= 100 then...
	    bge	    error		These are comments.  You knew that already. :-)
        cmp     #00, D1
        blt     error

	    cmp	    #90,D1		Else If testscore >= 90 then
	    blt	    a80s
	    move	#'A',D2	grade = 'A'
	    bra	    done

a80s	cmp	    #80,D1		Else If testscore >= 80 then
	    blt	    a70s
	    move	#'B',D2	grade = 'B'
	    bra     done

a70s	cmp	    #70,D1		Else If testscore >= 70 then
	    blt	    a60s
	    move	#'C',D2	grade = 'C'
	    bra     done
	    
a60s	cmp	    #60,D1		Else If testscore >= 60 then
	    blt	    a50s
	    move	#'D',D2	grade = 'D'
	    bra     done
	    
a50s	* Else If testscore < 60 then
	    move	#'F',D2	grade = 'F'
	    bra     done


error	move	#13,D0		Println ("Nobody gets...)
	    lea	    errmsg,A1
	    trap	#15

done	move	#14,D0

        lea     gradeis, A1
        trap    #15

        move    #6, D0
        move.b  D2, D1
        trap    #15
        stop	#$201F		All programs return whence they came
*				            Look at the Status Register (SR) after it executes the STOP instruction.
   	    END     Begin      	End o da line (listing really).








*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
