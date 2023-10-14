.text
    run_user:
        mv s3 ra  # write ra because we will use jal later

        jal input_array  # call function for reading and writing array
        beqz a1 wrong_size_error  # check flag (look input.asm)
        mv a3 sp  # write B.begin() to a3
        jal solve  # call function for solving problem
        addi a4 a1 -1  # write B.size() to a4
        jal output_array  # call function for printing array

        mv ra s3  # recover ra
        ret
    
    wrong_size_error:
        mv ra s3  # recover ra
        ret
