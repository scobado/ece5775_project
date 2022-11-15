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
    
    hls::LineBuffer<20, size, float> temp1;
    hls::LineBuffer<20, size, float> temp2;

    for(int i = 0; i < size; i++) {
        output[i] = 0;
        for (int j = 0; j < 20; j++) {
            temp1.shift_pixels_down(i);
            temp1.insert_top_row(0.0, i);
            temp2.shift_pixels_down(i);
            temp2.insert_top_row(0.0, i);
        }
    }

    // store all multiplication values in temporary buffer
    for (int i = 0; i < nnz; i++) {
        temp1.shift_pixels_down(row[i]);
        temp1.insert_top_row(val[i] * vector[col[i]], row[i]);
    }

    bool done = false;
    while (!done) {
        
        done = true;
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < 20; j++) {
                if (temp1.getval(0, i) != 0.0 && temp1.getval(1, i) != 0.0) {
                    temp2.shift_pixels_down(i);
                    temp2.insert_top_row(temp1.getval(0, i) + temp1.getval(1, i), i);
                    temp1.shift_pixels_up(i);
                    temp1.shift_pixels_up(i);
                    done = false;
                } else if (j == 0 && temp1.getval(0, i) != 0.0) {
                    output[i] = temp1.getval(0, i);
                }
            }
        }

        if (done) break;

        done = true;
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < 20; j++) {
                if (temp2.getval(0, i) != 0.0 && temp2.getval(1, i) != 0.0) {
                    temp1.shift_pixels_down(i);
                    temp1.insert_top_row(temp2.getval(0, i) + temp2.getval(1, i), i);
                    temp2.shift_pixels_up(i);
                    temp2.shift_pixels_up(i);
                    done = false;
                } else if (j == 0 && temp2.getval(0, i) != 0.0) {
                    output[i] = temp2.getval(0, i);
                }
            }
        }
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


