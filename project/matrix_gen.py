import random

matrix = []
size = 100

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
    
def transpose(m):
    rez = [[m[j][i] for j in range(len(m))] for i in range(len(m[0]))]
    return rez

def is_converged(v_old, v_new):
    diff = 0
    square_diff = 0
    
    for i in range(size):
        diff = v_old[i] - v_new[i]
        square_diff += diff*diff

    return (square_diff == 0)

def pagerank(matrix):

    size = 100
    alpha = 0.85
    v_init = [0.01] * size
    v_old  = [0.01] * size
    done = False

    for i in range(125):
        if(not done):
            v_new = SpMV(matrix, v_old)

            for j in range(size):
                v_new[j] = alpha*v_init[j] + (1-alpha)*v_new[j]

            done = is_converged(v_old, v_new)

            for j in range(size):
                v_old[j] = v_new[j]

    return v_new

matrix = transpose(transition_matrix_gen(matrix_gen(1)))
print(matrix)
print(pagerank(matrix))