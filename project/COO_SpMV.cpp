//==========================================================================
// COO_SpMV.cpp
//==========================================================================
// @brief: this file contains the baseline algorithm using the COO format
// To compile: g++ -o COO_SpMV COO_SpMV.cpp

#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"

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
// Perform the SpMV computation and store result in dest
//==========================================================================

void worker(float dest[size]) {

  float dest_1[PE][block_size];
  int row_1[PE][coo_size];
  int col_1[PE][coo_size];
  float val_1[PE][coo_size];
  int row_nnz[PE][block_size];

  LOOP_PE1: for (int i = 0; i < PE; i++) {
    for (int j = 0; j < block_size; j++) {
        row_nnz[i][j] = count_nnz(matrix_2[i][j]);
    }
  }

  LOOP_PE2: for (int i = 0; i < PE; i++) {
    LOOP_DEST1: for(int j = 0; j < block_size; j++) {
        dest_1[i][j] = 0;
    }

    int nnz = create_COO(matrix_2[i], row_1[i], col_1[i], val_1[i], row_nnz[i], i);
    COO_SpMV(row_1[i], col_1[i], val_1[i], vector, dest_1[i], nnz);
  }
  
  for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    for(int j = 0; j < block_size; j++) {
        dest[start+j] = dest_1[i][j];
    }
  }
}