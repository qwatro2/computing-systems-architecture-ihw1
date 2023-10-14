.data  # test cases

    # wrong size tests
    negative_n: .word -1
    zero_n: .word 0
    big_n: .word 11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

    # simple tests
    n1: .word 5
    arr1: .word 1, 2, 3, 4, 5
    b1: .word 3, 5, 7, 9

    n2: .word 10
    arr2: .word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
    b2: .word 4, 8, 12, 16, 20, 24, 28, 32, 36

    # random tests
    test_n1: .word 10
    test_a1: .word -934, -122, -12, 183, -970, -578, -53, 665, 6, 686
    test_b1: .word -1056, -134, 171, -787, -1548, -631, 612, 671, 692

    test_n2: .word 5
    test_a2: .word 338, 660, -672, -930, 66
    test_b2: .word 998, -12, -1602, -864

    test_n3: .word 8
    test_a3: .word -329, -845, -489, 950, 951, 526, -261, -909
    test_b3: .word -1174, -1334, 461, 1901, 1477, 265, -1170
    
    test_n4: .word 7
    test_a4: .word 761, -716, 235, -273, -219, -138, -420
    test_b4: .word 45, -481, -38, -492, -357, -558

    test_n5: .word 5
    test_a5: .word -65, -643, 404, -380, 355
    test_b5: .word -708, -239, 24, -25

    test_n6: .word 6
    test_a6: .word -728, -65, 572, 761, -510, 985
    test_b6: .word -793, 507, 1333, 251, 475

    test_n7: .word 8
    test_a7: .word 256, -232, -910, 193, -992, -518, -726, -601
    test_b7: .word 24, -1142, -717, -799, -1510, -1244, -1327

    test_n8: .word 5
    test_a8: .word 98, -251, 581, 839, -509
    test_b8: .word -153, 330, 1420, 330

    test_n9: .word 6
    test_a9: .word 365, 124, -78, -108, -38, -867
    test_b9: .word 489, 46, -186, -146, -905

    test_n10: .word 10
    test_a10: .word -336, 728, 27, -680, 724, -541, 986, -155, -512, -925
    test_b10: .word 392, 755, -653, 44, 183, 445, 831, -667, -1437
