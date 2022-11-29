//==========================================================================
// pagerank.cpp
//==========================================================================
// @brief: this file contains the pagerank algorithm that uses SpMV

#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
// #include "COO_SpMV.h"

using namespace std;

//==========================================================================
// COO Format: 3 arrays representing non-zero elements [row, col, value]
//==========================================================================

void COO_SpMV(int row[coo_size], int col[coo_size], float val[coo_size], float vector[size], float output[size], int nnz) {
    #pragma HLS function_instantiate variable=nnz
    for(int i = 0; i < coo_size; i++) {
        #pragma HLS PIPELINE
        #pragma HLS DEPENDENCE variable=output inter RAW false 
        if (i < nnz && row[i] >= 0) {
          output[row[i]] += val[i] * vector[col[i]];
        }
    }
}

//==========================================================================
// Convert a given matrix to COO format
// Traverse in column major order to solve output dependence
//==========================================================================

int create_COO(const float input[block_size][size], int row[coo_size], int col[coo_size], float val[coo_size], int nnz[block_size], int density) {
    #pragma HLS function_instantiate variable=density

    int sep = 0;
    for (int i = 0; i < block_size; i++) {
        if (nnz[i] > 0) sep++;
    }

    for (int i = 0; i < coo_size; i++) {
        row[i] = -1;
        col[i] = -1;
        val[i] = 0;
    }

    if (sep < 8) sep = 8;

    int max_ind = 0;
    int start = 0;
    for (int i = 0; i < block_size; i++) {
        if (nnz[i] > 0) {
            int cur_ind = start;
            for (int j = 0; j < size; j++) {
                if (input[i][j] != 0) {
                    row[cur_ind] = i;
                    col[cur_ind] = j;
                    val[cur_ind] = input[i][j];
                    if (cur_ind > max_ind) {
                        max_ind = cur_ind;
                    }
                    cur_ind += sep;
                }
            }
            start++;
        }
    }

    // printf("\nROW\n");
    // for(int i = 0; i <= max_ind; i++)
    //     printf("%d ",row[i]);

    return max_ind+1;
}

int count_nnz(const float row[size]) {
    int counter = 0;
    for (int i = 0; i < size; i++) {
        if (row[i] != 0) counter++;
    }
    return counter;
}

//==========================================================================
// Check if the vector has converged (new and old vectors are equal)
//==========================================================================

bool is_converged(float v_old[size], float v_new[size]) {
	
	float diff = 0.0;
	float square_diff = 0.0;

	for (int i = 0; i < size; i++) {
		diff = v_old[i] - v_new[i];
		square_diff += diff * diff; 
	}

	return (square_diff < EPSILON);

}

//==========================================================================
// Copy contents of v_new into v_old
//==========================================================================

void vector_cp(float v_old[size], float v_new[size]) {
	for (int i = 0; i < size; i++) {
		v_old[i] = v_new[i];
	}
}

//==========================================================================
// Perform the SpMV computation and store result in dest
//==========================================================================

void SpMV(float dest[size], float v_new[size]) {

  float tmp_dest[PE][block_size];
  int row[PE][coo_size];
  int col[PE][coo_size];
  float val[PE][coo_size];
  int row_nnz[PE][block_size];

  LOOP_PE1: for (int i = 0; i < PE; i++) {
    for (int j = 0; j < block_size; j++) {
        row_nnz[i][j] = count_nnz(pagerank_1[i][j]);
    }
  }

  LOOP_PE2: for (int i = 0; i < PE; i++) {
	LOOP_DEST1: for(int j = 0; j < block_size; j++) {
        tmp_dest[i][j] = 0;
    }

    int nnz = create_COO(pagerank_1[i], row[i], col[i], val[i], row_nnz[i], i);
    COO_SpMV(row[i], col[i], val[i], v_new, tmp_dest[i], nnz);
  }
  
  for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    for(int j = 0; j < block_size; j++) {
        dest[start+j] = tmp_dest[i][j];
    }
  }
}

//==========================================================================
// PageRank Algorithm
//==========================================================================

void main_function(float v_new[size]) {
	float v_init[size] = { 0 };
	float v_old[size] = { 0 };
	// float v_new[size] = { 0 };
	
	bool done = false;

	for (int i = 0; i < 125; i++) {
		if (!done) {
			vector_cp(v_old, v_new);

			SpMV(v_new,v_old);

			for (int j = 0; j < size; j++) {
				v_new[i] = alpha*v_init[i] + alpha_complement*v_new[i];
			}

			done = is_converged(v_old, v_new);
		}
	}

	printf( "\n Here is the resulting page-rank vector: \n" );
	printf( "\n         " );
	for (int j = 0; j < size; j++) printf( "%d, ", v_new[ j ] );
}