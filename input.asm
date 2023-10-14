.text
input_array:  # return A.size() in a1, A.begin() in a2
    print_str(promt2)

    # lines from 7 to 11 are tested by test_corner

    input_int(a1)  # write A.size() to a1
    li t0 1
    ble a1 t0 fail  # check left bound for N
    li t0 10
    bgt a1 t0 fail  # check right bound for N


    mv t0 a1
    li t1 -4
    mul t0 t0 t1

    mv a2 sp  # write A.begin() to a2
    add sp sp t0  # move sp to A.end()

    mv t0 a1
    mv t1 a2

    print_str(promt3)
    input_while:  # input elements of array
        input_int(t2)
        addi t1 t1 -4
        sw t2 4(t1)
        addi t0 t0 -1
        bnez t0 input_while
    
    ret


fail:
    print_str(wrong_size)
    li a1 0  # flag indicating that an incorrect size has been entered
    ret
