#$t0 a, $t1 b, $t2 x
	
	bne $t0, $t1, else   #if (a == b)
	addi $t2, $0, 3      # x = 3
	j done
else:	addi $t2, $0, 6      # x = 6
done:	 