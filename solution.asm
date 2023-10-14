.text

solve:  # params: A.size() in a1, A.begin() in a2, B.begin() in a3
    mv t0 a2
    mv t1 a3
    addi t6 a1 -1  # B.size()
    
    solve_while:  # counting current element of result array
        lw t2 (t0)  # A[i]
        lw t3 -4(t0)  # A[i + 1]
        add t4 t2 t3  # t4 = A[i] + A[i + 1]
        sw t4 (t1)  # B[i] = (t1) = A[i] + A[i + 1] 

        addi t0 t0 -4
        addi t1 t1 -4
        addi t6 t6 -1

        bnez t6 solve_while
    
    mv sp t1  # move sp to the B.end()
    ret
