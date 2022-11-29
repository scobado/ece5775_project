import random

def matrix_gen(sparse):

    size = 100

    data = []
    row = []


    for i in range(0, size*size):
        if (random.randint(0, 100) < sparse):
            row.append(1.0)
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

def transition_matrix_gen(matrix):

    size = 6

    result = []

    for i in range(len(matrix)):
        rowsum = 0
        row = []
        for j in range(len(matrix[0])):
            rowsum += matrix[i][j]
        if rowsum > 0:
            for j in range(len(matrix[0])):
                row.append(matrix[i][j]/rowsum)
        else:
            for j in range(len(matrix[0])):
                row.append(0)
        result.append(row)

    return result
    

print(transition_matrix_gen(matrix_gen(10)))