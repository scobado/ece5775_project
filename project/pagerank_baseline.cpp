//==========================================================================
// pagerank.cpp
//==========================================================================
// @brief: this file contains the pagerank algorithm that uses SpMV

#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"

using namespace std;

//==========================================================================
// COO Format: 3 arrays representing non-zero elements [row, col, value]
//==========================================================================

void COO_SpMV(int row[matrix_size], int col[matrix_size], float val[matrix_size], const float vector[size], float output[size], int nnz) {
    for(int i = 0; i < size; i++) {
        output[i] = 0;
    }
    for(int i = 0; i < matrix_size; i++) {
        if (i < nnz)
          output[row[i]] += val[i] * vector[col[i]];
    }
}


//==========================================================================
// Convert a given matrix to COO format
// Traverse in column major order to solve output dependence
//==========================================================================

void create_COO(const float input[size][size], int row[matrix_size], int col[matrix_size], float val[matrix_size]) {
    int counter = 0;
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
            if (input[i][j] != 0) {
                row[counter] = i;
                col[counter] = j;
                val[counter] = input[i][j];
                counter += 1;
            }
        }
    }
}

//==========================================================================
// Count the number of non-zero elements in a sparse matrix
//==========================================================================

int count_nnz(const float input[size][size]) {
    int counter = 0;
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
            if (input[i][j] != 0) {
                counter += 1;
            }
        }
    }
    return counter;
}

//==========================================================================
// Check if the vector has converged (new and old vectors are equal)
//==========================================================================

bool is_converged(float v_old[size], float v_new[size]) {
	
	float diff = 0.0;
	float square_diff = 0.0;

	LOOP_CONVERGED: for (int i = 0; i < size; i++) {
		diff = v_old[i] - v_new[i];
		square_diff += diff * diff; 
	}

	// return (square_diff < EPSILON);
    return (square_diff == 0);

}

//==========================================================================
// Copy contents of v_new into v_old
//==========================================================================

void vector_cp(float v_old[size], float v_new[size]) {
	LOOP_VCOPY: for (int i = 0; i < size; i++) {
		v_old[i] = v_new[i];
	}
}

//==========================================================================
// Worker that performs SpMV
//==========================================================================

void worker(float v_new[size], float v_old[size]) {

  int row[matrix_size];
  int col[matrix_size];
  float val[matrix_size];

  int nnz = count_nnz(transposed_1);
  create_COO(transposed_1,row,col,val);
  COO_SpMV(row,col,val,v_old,v_new,nnz);

}

//==========================================================================
// PageRank Algorithm
//==========================================================================

void main_function(float v_new[size]) {
    
	float v_old[size];
	for (int i = 0; i < size; i++ )
    	v_old[i] = vector_init;
	
	bool done = false;

	for (int i = 0; i < 125; i++) {
		if (!done) {

			worker(v_new,v_old);

			LOOP_VNEW: for (int j = 0; j < size; j++) {
				v_new[j] = vector_const + alpha_complement*v_new[j];
			}

			done = is_converged(v_old, v_new);

            vector_cp(v_old, v_new);
		}
	}
	// for (int j = 0; j < size; j++) printf( "%1.4f, ", v_new[ j ] );
}