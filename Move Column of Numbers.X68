*-----------------------------------------------------------
* Program Number: Move a Column of Numbers
* Written by    : Dr. Drexel
* Date Modified : Timeless
* Description   : This short program uses indirect addressing 
*               :  to move a column of numbers.  Changing how
*               :  how this is done will dramatically decrease 
*               :  run time.
* 
* Note! asterisk '*' in first column for comments
*-----------------------------------------------------------
* labels must start in first column

START	ORG	$1000	the program will load into address $1000
	
	move.b	#2,d0	Number of numbers
	*move	#$2000,a0	Source
	*move	#$3000,a1	Destination
	lea     here, a0
	lea     there, a1

TOP	movem.w	(a0)+,(a1)+	From $2000 to $3000, etc.
	sub	#1,d0


	cmp	#0,d2
	bne	TOP

	stop	#$2000

*------------------------------------
* Variable storage and strings
* ds (define storage) is used to reserve memory for variables
* dc (define constant) is used to place data in memory

	ORG	$2000
here	dc.w	1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20

	ORG	$3000
there	ds.w	20

	END	START	end of program with START address specified










*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
