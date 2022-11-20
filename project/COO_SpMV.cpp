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

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

// void dut(
//     hls::stream<bit32_t> &strm_in,
//     hls::stream<bit32_t> &strm_out
// )
// {
//   float matrix[size][size];
//   float vector[size];
//   union { float fval; int ival} u;

//   float dest[size];
//   for (int i = 0; i < size; i++ )
//     dest[i] = 0;

//   // read the matrix 
//   for ( int i = 0; i < size; i ++) {
//     for (int j = 0; j < size; j ++) {
//         u.ival = strm_in.read();
//         matrix[i][j] = u.fval;        
//     }
//   }

//   // read the vector
//   for ( int i = 0; i < size; i ++) {
//     u.ival = strm_in.read();
//     vector[i] = u.fval;
//   }

//   // call count_nnz
//   int nnz = count_nnz(matrix);

//   int row[nnz];
//   int col[nnz];
//   float val[nnz];

//   // call create_COO
//   create_COO(matrix, row, col, val);

//   // call COO_SpMV
//   COO_SpMV(row, col, val, vector, dest, nnz);
 
//   // write out the result
//   for ( int i = 0; i < size; i ++) {
//     strm_out.write(dest[i]);
//   }
// }

//==========================================================================
// COO Format: 3 arrays representing non-zero elements [row, col, value]
//==========================================================================

void COO_SpMV(int row[coo_size], int col[coo_size], float val[coo_size], const float vector[size], float output[size], int nnz) {
    for(int i = 0; i < coo_size; i++) {
        #pragma HLS PIPELINE
        #pragma HLS DEPENDENCE variable=output inter RAW false 
        if (i < nnz)
          output[row[i]] += val[i] * vector[col[i]];
    }
}

// void create_COO(const float input[matrix_size], int row[matrix_size], int col[matrix_size], float val[matrix_size]) {
//     int counter = 0;
//     for(int i = 0; i < matrix_size; i++) {
//       if (input[i] != 0) {
//           row[counter] = i/size;
//           col[counter] = i%size;
//           val[counter] = input[i];
//           counter += 1;
//       }
//     }
// }

//==========================================================================
// Convert a given matrix to COO format
// Traverse in column major order to solve output dependence
//==========================================================================

int create_COO(const float input[block_size][size], int row[coo_size], int col[coo_size], float val[coo_size]) {
    int counter = 0;
    int temp_row[coo_size];
    int temp_col[coo_size];
    float temp_val[coo_size];
    for(int i = 0; i < block_size; i++) {
        for(int j = 0; j < size; j++) {
            if (input[i][j] != 0) {
                temp_row[counter] = i;
                temp_col[counter] = j;
                temp_val[counter] = input[i][j];
                counter += 1;
            }
        }
    }
    int cur_ind = 0;
    int start = 1;
    for (int i = 0; i < coo_size; i++) {
        if (i < counter) {
            row[cur_ind] = temp_row[i];
            col[cur_ind] = temp_col[i];
            val[cur_ind] = temp_val[i];
            cur_ind += 8; // assuming fp add takes 8 cycles
            if (cur_ind >= counter) {
                cur_ind = start;
                start++;
            }
        }
    }
    return counter;
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
// TODO: Some worker description here...
//==========================================================================

void worker(float dest[size]) {

  float dest_1[PE][block_size];
  int row_1[PE][coo_size];
  int col_1[PE][coo_size];
  float val_1[PE][coo_size];

  LOOP_PE: for (int i = 0; i < PE; i++) {
    LOOP_DEST1:for(int j = 0; j < block_size; j++) 
        dest_1[i][j] = 0;

    int nnz = create_COO(matrix_1[i], row_1[i], col_1[i], val_1[i]);
    COO_SpMV(row_1[i], col_1[i], val_1[i], vector, dest_1[i], nnz);
  }

  LOOP_DEST1_PE: for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    LOOP_DEST1_ST: for(int j = 0; j < block_size; j++) {
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