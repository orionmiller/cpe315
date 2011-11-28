# $a0 = x, $a1 = i
	
recursive:	               	 
	     addi $sp, $sp, -4   #allocate space on stack
	     sw $ra, 0($sp)      #store return address
	     addi $v0, $a0, 0    #put x in return
	     beqz $a1, end       #if (i == 0)
	     addi $a0, $a0, 2    #x += 2
	     addi $a1, $a1, -1   #i -= 1
	     jal recursive       #recursive call
end:	 lw $ra, 0($sp)      #restore return address
	     addi $sp, $sp, 4    #restore stack
	     jr $ra              #return