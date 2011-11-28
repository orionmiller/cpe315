	#dx[0] in $t0
	#dy[0] in $t1
	#i     in $t2

loop:
	addi $t3, $t2, -3 #calculate break condition
	bgez $t3, done    #check for i < 3
	sll $t3, $t2, 2   #convert element into byte
	                  #offset (multiply by 4)
	add $t4, $t3, $t0   # t4 = &x[i]
	add  $t5, $t3, $t1  # t5 = &y[i]
	lw $t6, 0($t5)      # t6 = y[i]
	sw $t6, 0($t4)      # x[i] = t6
	addi $t6, $t6, 1
	sw $t6, 0($t5)      # y[i]++
	addi $t2, $t2, 1    # i++
	j loop
done:	