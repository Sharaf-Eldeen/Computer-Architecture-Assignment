.data
	#arr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	arr: .word 7, 2, 5, 11, 4, 6, 1, 1, 8, 3
	size: .word 10
	sum: .word 0
	resultMessage: .asciiz "Average is:"


.text
main:
	
	la $a0, arr             
    	jal averageFunction      
    
   	 li $v0, 4               
    	la $a0, resultMessage    
    	syscall
    
   	 li $v0, 2               
    	mov.s $f12, $f2         
    	syscall
    
    	li $v0, 10             
    	syscall

averageFunction:
    	li $t0, 0               #sum
    	li $t1, 0               #index
    	lw $t2, size            #size
    
loop:
    	bge $t1, $t2, calcAverage 
    	lw $t3, 0($a0)            
    	add $t0, $t0, $t3         
    	addi $a0, $a0, 4          
    	addi $t1, $t1, 1          
    	j loop                    
    
calcAverage:
    	mtc1 $t0, $f0            
    	mtc1 $t2, $f1             
    	cvt.s.w $f0, $f0        
    	cvt.s.w $f1, $f1          
    
    	div.s $f2, $f0, $f1       
    	jr $ra                    
