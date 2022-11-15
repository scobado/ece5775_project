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

void top( float matrix_1[size][size]  ) {
  
  for (int i = 0; i < size; i++ )
    dest[i] = 0;

  int nnz = count_nnz(matrix_1);
  int row_1[nnz];
  int col_1[nnz];
  float val_1[nnz];
  create_COO(matrix_1, row_1, col_1, val_1);
  COO_SpMV(row_1, col_1, val_1, vector, dest, nnz);

}

void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
)
{
//   digit input;
  float dest[size];


  // ------------------------------------------------------
  // Input processing
  // ------------------------------------------------------
  // Read the two input 32-bit words (low word first)
  bit32_t input_lo = strm_in.read();
  bit32_t input_hi = strm_in.read();

  // Concatenate input raw bits
  input(31, 0) = input_lo;
  input(input.length()-1, 32) = input_hi;
  
  // ------------------------------------------------------
  // Call DIGITREC and output processing
  // ------------------------------------------------------
  // Write out the recognized digit 
  strm_out.write( digitrec( input ) );

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


