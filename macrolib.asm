.macro print_str(%str)  # macro for printing string from address %str
    la a0 %str
    li a7 4
    ecall
.end_macro

.macro print_int(%reg)  # macro for printing integer from register %reg
    mv a0 %reg
    li a7 1
    ecall
.end_macro

.macro input_int(%reg)  # macro for reading integer and writing to register %reg
    li a7 5
    ecall
    mv %reg a0
.end_macro

.macro test_corner(%n)  # macro for testing cases with wrong array size
    la t2 %n
    lw t1 (t2)
    li t0 1
    ble t1 t0 fail  # check left bound for N
    li t0 10
    bgt t1 t0 fail  # check right bound for N
    j ok  # bound are correct

    fail:
        print_str(test_passed)  # program successfully detect an error
        j ex
    
    ok:
        print_str(test_failed)  # program don't detect an error
    
    ex:
.end_macro


.macro prep_test_case(%n, %a)  # macro for preparing a test case with size in address %n and input array in address %a
    la a1 %n
    la t3 %a
    lw a1 (a1)

    mv t0 a1
    li t1 -4
    mul t0 t0 t1

    mv a2 sp  # write A.begin() to a2
    add sp sp t0  # move sp to A.end()

    mv t0 a1
    mv t1 a2

    input_while:  # writing elements of array to stack
        lw t2 (t3)
        addi t3 t3 4
        addi t1 t1 -4
        sw t2 4(t1)
        addi t0 t0 -1
        bnez t0 input_while

    mv a3 sp  # writing B.begin() to a3

.end_macro

.macro equal_array(%result_size, %result_begin, %answer_size, %answer_begin)  # macro for checking equality of two arrays
    bne %result_size %answer_size fail  # if arrays' sizes are not equal

    mv t0 %result_size
    mv t2 %answer_begin
    mv t1 %result_begin

    while:  # element-wise comparison
        lw t3 (t1)
        lw t4 (t2)
        bne t3 t4 fail  # if current elements of arrays are not equal

        addi t1 t1 -4
        addi t2 t2 4

        addi t0 t0 -1
        bnez t0 while

    j ok  # element-wise comparison has been ended successfully

    fail:  # arrays are not equal
        print_str(test_failed) 
        j ex   
    ok:  # arrays are equal
        print_str(test_passed)
    ex:
.end_macro