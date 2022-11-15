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
#include "COO_SpMV.h"
#include <fstream>
#include <iomanip>

using namespace std;

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
)
{
  float matrix[size][size];
  float vector[size];
  union { float fval; int ival} u;

  float dest[size];

  // read the matrix 
  for ( int i = 0; i < size; i ++) {
    for (int j = 0; j < size; j ++) {
        u.ival = strm_in.read();
        matrix[i][j] = (float)u.ival;        
    }
  }

  // read the vector
  for ( int i = 0; i < size; i ++) {
    u.ival = strm_in.read();
    vector[i] = (float)u.ival;
  }

  // call count_nnz
  int nnz = count_nnz(matrix);

  int row[nnz];
  int col[nnz];
  float val[nnz];

  // call create_COO
  create_COO(matrix, row, col, val);

  // call COO_SpMV
  COO_SpMV(row, col, val, vector, dest, nnz);
 
  // write out the result
  for ( int i = 0; i < size; i ++) {
    strm_out.write(dest[i]);
  }
}

//==========================================================================
// COO Format: 3 arrays representing non-zero elements [row, col, value]
//==========================================================================

void COO_SpMV(int row[matrix_size], int col[matrix_size], float val[matrix_size], const float vector[size], float output[size], int nnz) {
    for(int i = 0; i < size; i++) {
        output[i] = 0;
    }
    for(int i = 0; i < matrix_size; i++) {
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

void create_COO(const float input[size][size], int row[matrix_size], int col[matrix_size], float val[matrix_size]) {
    int counter = 0;
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
            if (input[j][i] != 0) {
                row[counter] = j;
                col[counter] = i;
                val[counter] = input[j][i];
                counter += 1;
            }
        }
    }
    // for(int i = 0; i < counter; i ++) {
    //     printf("%d ", row[i]);
    // }
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


