import random

def matrix_gen(sparse):

    size = 100

    data = []
    row = []


    for i in range(0, size*size):
        if (random.randint(0, 100) < sparse):
            row.append(random.uniform(-10, 10))
        else:
            row.append(0.0)

        if ((i + 1)%size == 0):
            data.append(row)
            row = []

    return data

def vector_gen():

    size = 100
    data = []
    
    for i in range(size):
        data.append(random.uniform(-10,10))

    return data

def SpMV(matrix, vector):

    size = 100
    result = [0] * 100
    for i in range(size):
        for j in range(size):
            result[i] += matrix[i][j] * vector[j]

    return result

print(SpMV(matrix,vector))