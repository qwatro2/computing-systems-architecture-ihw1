.include "test_data.asm"

.macro test_case(%n, %a, %b)  # macro was added to make writing run_test faster, so it is not in the macrolib
    prep_test_case(%n, %a)
    jal solve
    addi a4 a1 -1
    la t0 %n
    lw t0 (t0)
    addi t0 t0 -1
    la t1 %b
    equal_array(a4, a3, t0, t1)
.end_macro

.text
    run_test:
        mv s4 ra  # write ra because we will use jal later

        # run test cases
        print_str(wrong_size_tests)
        test_corner(negative_n)
        test_corner(zero_n)
        test_corner(big_n)
        print_str(endl)
        print_str(simple_tests)
        test_case(n1, arr1, b1)
        test_case(n2, arr2, b2)
        print_str(endl)
        print_str(random_tests)
        test_case(test_n1, test_a1, test_b1)
        test_case(test_n2, test_a2, test_b2)
        test_case(test_n3, test_a3, test_b3)
        test_case(test_n4, test_a4, test_b4)
        test_case(test_n5, test_a5, test_b5)
        test_case(test_n6, test_a6, test_b6)
        test_case(test_n7, test_a7, test_b7)
        test_case(test_n8, test_a8, test_b8)
        test_case(test_n9, test_a9, test_b9)
        test_case(test_n10, test_a10, test_b10)
        
        mv ra s4  # recover ra
        ret
