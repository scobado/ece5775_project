//==========================================================================
// COO_SpMV.cpp
//==========================================================================
// @brief: this file contains the baseline algorithm using the COO format
// To compile: g++ -o COO_SpMV COO_SpMV.cpp

#include <cstdlib>
#include <ap_fixed.h>
#include <ap_int.h>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "COO_SpMV_orig.h"
typedef ap_uint<32> coo_int;
using namespace std;

//==========================================================================
// COO Format: 3 arrays representing non-zero elements [row, col, value]
//==========================================================================

void dut(
    hls::stream<coo_int> &strm_in,
    hls::stream<coo_int> &strm_out
    
    )
{
  
    union {float fval;int ival;} u1;
    float dest[size];
    coo_int dest_temp[size];
    coo_int dest_final[size];
  //read one test image into digit
  for (int i = 0; i < size; i++) {
     dest_temp[i] = strm_in.read();
     u1.ival = dest_temp[i];
     dest[i] = u1.fval;
     }
  
  //call worker function to return the destination vector
  worker(dest);
 union {float fval;int ival;} u2;
  for (int i = 0; i < size; i++) {
        u2.fval = dest[i];
        dest_final[i] = u2.ival;
        strm_out.write(dest_final[i]);
    }
}


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

void worker(float dest[size]) {

  int row_1[matrix_size];
  int col_1[matrix_size];
  float val_1[matrix_size];

  int nnz = count_nnz(matrix_2_dense);
  create_COO(matrix_2_dense,row_1,col_1,val_1);
  COO_SpMV(row_1,col_1,val_1,v,dest,nnz);

}