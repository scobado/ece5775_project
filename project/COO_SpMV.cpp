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
#include "COO_SpMV.h"
typedef ap_uint<32> coo_int;
using namespace std;


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
//==========================================================================
// COO Format: 3 arrays representing non-zero elements [row, col, value]
//==========================================================================

void COO_SpMV(const int row[coo_size], const int col[coo_size], const float val[coo_size], const float vector[size], float output[size], int dependence) {
    #pragma HLS function_instantiate variable=dependence
    for(int i = 0; i < coo_size; i++) {
        #pragma HLS PIPELINE
        #pragma HLS DEPENDENCE variable=output inter RAW false 
        if (row[i] >= 0) {
          output[row[i]] += val[i] * vector[col[i]];
        }
    }
}

//==========================================================================
// Perform the SpMV computation and store result in dest
//==========================================================================

void worker(float dest[size]) {

  float dest_1[PE][block_size];

  LOOP_PE2: for (int i = 0; i < PE; i++) {
    LOOP_DEST1: for(int j = 0; j < block_size; j++) {
        dest_1[i][j] = 0;
    }

    COO_SpMV(row10_25[i], col10_25[i], val10_25[i], v, dest_1[i], i);
  }
  
  for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    for(int j = 0; j < block_size; j++) {
        dest[start+j] = dest_1[i][j];
    }
  }
}