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

void COO_SpMV(int row[coo_size], int col[coo_size], float val[coo_size], const float vector[size], float output[size], int nnz) {
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

int create_COO(const float input[block_size][size], int row[coo_size], int col[coo_size], float val[coo_size], int nnz[block_size]) {

    int sep = 0;
    for (int i = 0; i < block_size; i++) {
        if (nnz[i] > 0) sep++;
    }

    for (int i = 0; i < coo_size; i++) {
        row[i] = -1;
        col[i] = -1;
        val[i] = 0;
    }

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
// TODO: Some worker description here...
//==========================================================================

void worker(float dest[size]) {

  float dest_1[PE][block_size];
  int row_1[PE][coo_size];
  int col_1[PE][coo_size];
  float val_1[PE][coo_size];
  int row_nnz[PE][block_size];

  LOOP_PE1: for (int i = 0; i < PE; i++) {
    for (int j = 0; j < block_size; j++) {
        row_nnz[i][j] = count_nnz(matrix_1[i][j]);
    }
  }

  LOOP_PE2: for (int i = 0; i < PE; i++) {
    LOOP_DEST1:for(int j = 0; j < block_size; j++) {
        dest_1[i][j] = 0;
    }

    int nnz = create_COO(matrix_1[i], row_1[i], col_1[i], val_1[i], row_nnz[i]);
    COO_SpMV(row_1[i], col_1[i], val_1[i], vector, dest_1[i], nnz);
  }
  
  for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    for(int j = 0; j < block_size; j++) {
        dest[start+j] = dest_1[i][j];
    }
  }

//   int nnz = create_COO(matrix_1, row_1, col_1, val_1);
//   COO_SpMV(row_1, col_1, val_1, vector, dest, nnz);

//   // nnz = count_nnz(matrix_2);
//   int row_2[matrix_size];
//   int col_2[matrix_size];
//   float val_2[matrix_size];

//   nnz = create_COO(matrix_2, row_2, col_2, val_2);
//   COO_SpMV(row_2, col_2, val_2, vector, dest, nnz);

//   // nnz = count_nnz(matrix_3);
//   int row_3[matrix_size];
//   int col_3[matrix_size];
//   float val_3[matrix_size];

//   nnz = create_COO(matrix_3, row_3, col_3, val_3);
//   COO_SpMV(row_3, col_3, val_3, vector, dest, nnz);

//   // nnz = count_nnz(matrix_4);
//   int row_4[matrix_size];
//   int col_4[matrix_size];
//   float val_4[matrix_size];

//   nnz = create_COO(matrix_4, row_4, col_4, val_4);
//   COO_SpMV(row_4, col_4, val_4, vector, dest, nnz);

//   // nnz = count_nnz(matrix_5);
//   int row_5[matrix_size];
//   int col_5[matrix_size];
//   float val_5[matrix_size];

//   nnz = create_COO(matrix_5, row_5, col_5, val_5);
//   COO_SpMV(row_5, col_5, val_5, vector, dest, nnz);

//   // nnz = count_nnz(matrix_6);
//   int row_6[matrix_size];
//   int col_6[matrix_size];
//   float val_6[matrix_size];

//   nnz = create_COO(matrix_6, row_6, col_6, val_6);
//   COO_SpMV(row_6, col_6, val_6, vector, dest, nnz);

//   // nnz = count_nnz(matrix_7);
//   int row_7[matrix_size];
//   int col_7[matrix_size];
//   float val_7[matrix_size];

//   nnz = create_COO(matrix_7, row_7, col_7, val_7);
//   COO_SpMV(row_7, col_7, val_7, vector, dest, nnz);

//   // nnz = count_nnz(matrix_8);
//   int row_8[matrix_size];
//   int col_8[matrix_size];
//   float val_8[matrix_size];

//   nnz = create_COO(matrix_8, row_8, col_8, val_8);
//   COO_SpMV(row_8, col_8, val_8, vector, dest, nnz);

//   // nnz = count_nnz(matrix_9);
//   int row_9[matrix_size];
//   int col_9[matrix_size];
//   float val_9[matrix_size];

//   nnz = create_COO(matrix_9, row_9, col_9, val_9);
//   COO_SpMV(row_9, col_9, val_9, vector, dest, nnz);

//   // nnz = count_nnz(matrix_10);
//   int row_10[matrix_size];
//   int col_10[matrix_size];
//   float val_10[matrix_size];

//   nnz = create_COO(matrix_10, row_10, col_10, val_10);
//   COO_SpMV(row_10, col_10, val_10, vector, dest, nnz);
}