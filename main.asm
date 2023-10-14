# includes
.include "messages.asm"
.include "macrolib.asm"

.text
    main:
        print_str(promt1)
        input_int(s1)  # input command

        li t0 1
        li t1 2

        mv s2 sp  # write sp to recover it for efficient use of the stack

        beqz s1 jal_exit  # if s1 == 0 go to exit
        beq s1 t0 jal_user  # if s1 == 1 go to user input
        beq s1 t1 jal_test  # if s2 == 2 go to running tests

        print_str(wrong_choice)  # else wrong command was chosen

        j main  # repeat solution

    jal_exit:
        j exit  # go to exit

    jal_user:
        jal run_user  # call function for user input
        mv sp s2  # recover sp
        j main  # repeat solution

    jal_test:
        jal run_test  # call function for running tests
        mv sp s2  # recover sp
        j main  # repeat solution

    exit:  # exit
        li a7 10
        ecall

# includes
.include "user.asm"
.include "test.asm"
.include "input.asm"
.include "output.asm"
.include "solution.asm"
