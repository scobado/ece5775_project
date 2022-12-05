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
#include "Dense_SpMV.h"
#include <ap_fixed.h>
#include <ap_int.h>
typedef ap_uint<32> coo_int;
using namespace std;

using namespace std;

//==========================================================================
// Dense matrix-vector multiplication
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


void Dense_SpMV(const float input[size][size], const float vector[size], float output[size]) {
  for(int i = 0; i < size; i++)
    output[i] = 0;
  // #pragma HLS PIPELINE
  for(int i = 0; i < size; i++) {
    for(int j = 0; j < size; j++) {
      output[i] += input[i][j] * vector[j];
    }
  }
}

void worker(float dest[size]) {
  
  Dense_SpMV(matrix_2_dense,v,dest);
}