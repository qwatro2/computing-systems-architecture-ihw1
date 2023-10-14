.text
output_array:  # params: B.begin() in a3, B.size() in a4
    mv t0 a3  # write B.begin() to t0
    mv t1 a4  # write B.size() to t1

    print_str(promt4)
    output_while:  # print elements of array
        addi t0 t0 -4
        lw t2 4(t0)
        print_int(t2)
        print_str(tab)
        addi t1 t1 -1
        bnez t1 output_while
    
    print_str(endl)

    ret
