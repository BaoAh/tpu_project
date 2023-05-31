# ==============================================================================#
# AIC2021 Project1 - TPU Design                                                #
# file: matmul.py                                                              #
# description: 1. Implement a memory mapping method in global buffer for tpu   #
#              2. write golden output for testbench                            #
# authors: kaikai (deekai9139@gmail.com)                                       #
#          suhan  (jjs93126@gmail.com)                                         #
# ==============================================================================#

import numpy as np
import random
import sys
import os

# ------------------------------------------------------------------------------#
# Function Definations                                                         #
# ------------------------------------------------------------------------------#


def write_binary_file(filename, matrix):

    fd = open(filename, "w")
    row, col = matrix.shape
    reset_col = 0
    reset_row = 0
    r = 0
    c = 0
    p = 0
    num_of_bits = 16

    while (p < col):
        while (r < row):
            while (c < col and reset_col != 1):

                # wirte word when 4bytes reached
                if ((c + 1) % 4 == 0):
                    hexdata = matrix[r][c]
                    byte_value = bin(int(hexdata, 16))[2:].zfill(num_of_bits)
                    # byte_value = "%08d\n" % int(bin(int(matrix[r][c]))[2:])
                    fd.write(byte_value)
                    fd.write("\n")
                    reset_col = 1
                elif ((c + 1) == col):
                    hexdata = matrix[r][c]
                    byte_value = bin(int(hexdata, 16))[2:].zfill(num_of_bits)
                    # byte_value = "%08d_" % int(bin(int(matrix[r][c]))[2:])
                    fd.write(byte_value)
                    fd.write("_")
                    # Zero padding
                    pad = c
                    while ((pad + 1) % 4 != 0):
                        byte_value = "0".zfill(num_of_bits)
                        fd.write(byte_value)
                        pad += 1
                        if ((pad + 1) % 4 == 0):
                            delimeter = "\n"
                            fd.write(delimeter)
                            reset_col = 1
                        else:
                            delimeter = "_"
                            fd.write(delimeter)
                else:
                    hexdata = matrix[r][c]
                    byte_value = bin(int(hexdata, 16))[2:].zfill(num_of_bits)
                    # byte_value = "%08d_" % int(bin(matrix[r][c])[2:])
                    fd.write(byte_value)
                    fd.write("_")

                if (reset_col == 1):
                    c = p
                else:
                    c += 1

            r += 1
            reset_col = 0

        r = 0
        p += 4
        c = p

    fd.close()
    print("<log> binary written in ", filename)


def check_valid_mul_size(matrix_a, matrix_b):
    row_a, col_a = matrix_a.shape
    row_b, col_b = matrix_b.shape

    if (col_a != row_b):
        return 0
    else:
        return 1


# ------------------------------------------------------------------------------#
# Matrix Declaration                                                           #
# ------------------------------------------------------------------------------#

if (len(sys.argv) < 4):
    print("<error> Arguements :matrixA matrixB matrixA*matrixB")
    exit()
else:
    inputs_set1 = sys.argv[1]
    inputs_set2 = sys.argv[2]
    inputs_set3 = sys.argv[3]


# if (inputs_set == "monster"):
#  row_r = random.randint(1,9)
#  k     = random.randint(1,9)
#  col_r = random.randint(1,9)
#
#  matrix_a = (10 * np.random.rand(row_r, k)) % 4
#  matrix_a = matrix_a.astype(int)
#  matrix_b = (10 * np.random.rand(k, col_r)) % 4
#  matrix_b = matrix_b.astype(int)
# else:
#  filename_a = inputs_set + "/matrix_a.txt"
#  filename_b = inputs_set + "/matrix_b.txt"
#
#  matrix_a = np.genfromtxt(filename_a, delimiter = ",", dtype="int")
#  matrix_b = np.genfromtxt(filename_b, delimiter = ",", dtype="int")

matrix_address_a = '../sw/hex/'+inputs_set1
matrix_address_b = '../sw/hex/'+inputs_set2
res_address = '../sw/hex/'+inputs_set3

matrix_a_t = np.load(matrix_address_a)
matrix_b_t = np.load(matrix_address_b)
res_t = np.load(res_address)
matrix_a = matrix_a_t['arr_0']
matrix_b = matrix_b_t['arr_0']
res = res_t['arr_0']

if (check_valid_mul_size(matrix_a, matrix_b) == 0):
    print("<error> Invalid input matrix size for multiplication")
    print("        matrix_a:", matrix_a.shape, ", matrix_b:", matrix_b.shape)
    exit()

# matrix_a = np.array([[1, 1, 1, 1, 1, 1, 1, 1, 1],
#                      [2, 2, 2, 2, 2, 2, 2, 2, 2],
#                      [3, 3, 3, 3, 3, 3, 3, 3, 3],
#                      [4, 4, 4, 4, 4, 4, 4, 4, 4]
#                      ])
#
# matrix_b = np.array([[1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1],
#                      [1, 0, 0, 1]])


# ------------------------------------------------------------------------------#
# Matrix Multiplication                                                        #
# ------------------------------------------------------------------------------#

print("Matrix A:", matrix_a.shape)
print(matrix_a)
print("Matrix B:", matrix_b.shape)
print(matrix_b)
#
# res = np.matmul(matrix_a, matrix_b)
print("Matrix Multiplication: A x B")
print("Results:", res.shape)
print(res)

# ------------------------------------------------------------------------------#
# Check if build/ folder exist                                                 #
# ------------------------------------------------------------------------------#
if not os.path.exists("./"):
    os.makedirs("./")

# ------------------------------------------------------------------------------#
# Write Matrix Parameters Definations                                          #
# ------------------------------------------------------------------------------#
row_a, col_a = matrix_a.shape
row_b, col_b = matrix_b.shape
fd1 = open("./matrix_define.v", "w")

fd1.write("`define MATRIX_A_ROW %d\n" % row_a)
fd1.write("`define MATRIX_A_COL %d\n" % col_a)
fd1.write("`define MATRIX_B_ROW %d\n" % row_b)
fd1.write("`define MATRIX_B_COL %d\n" % col_b)

fd1.close()
print("<log> matrix definations written in ./matrix_define.v")

# ------------------------------------------------------------------------------#
# Write Matrix A                                                               #
# ------------------------------------------------------------------------------#
write_binary_file("./matrix_a.bin", np.transpose(matrix_a))

# ------------------------------------------------------------------------------#
# Write Matrix B                                                               #
# ------------------------------------------------------------------------------#
write_binary_file("./matrix_b.bin", matrix_b)

# ------------------------------------------------------------------------------#
# Write golden output                                                          #
# ------------------------------------------------------------------------------#
write_binary_file("./golden.bin", res)
