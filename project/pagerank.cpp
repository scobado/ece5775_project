//==========================================================================
// pagerank.cpp
//==========================================================================
// @brief: this file contains the pagerank algorithm that uses SpMV

#include <cstdlib>
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "pagerank.h"
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
  
  //call main_function to return the destination vector
  main_function(dest);
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

void COO_SpMV(const int row[coo_size], const int col[coo_size], const float val[coo_size], float vector[size], float output[size], int dependence) {
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
// Check if the vector has converged (new and old vectors are equal)
//==========================================================================

bool is_converged(float v_old[size], float v_new[size]) {
	
	float diff = 0.0;
	float square_diff = 0.0;

	LOOP_CONVERGED: for (int i = 0; i < size; i++) {
		diff = v_old[i] - v_new[i];
		square_diff += diff * diff; 
	}

    return (square_diff == 0);

}

//==========================================================================
// Copy contents of v_new into v_old
//==========================================================================

void vector_cp(float v_old[size], float v_new[size]) {
	LOOP_VCOPY: for (int i = 0; i < size; i++) {
		v_old[i] = v_new[i];
	}
}

//==========================================================================
// Perform the SpMV computation and store result in dest
//==========================================================================

void SpMV(float v_new[size], float v_old[size]) {

  float tmp_dest[PE][block_size];

  LOOP_PE2: for (int i = 0; i < PE; i++) {
	LOOP_DEST1: for(int j = 0; j < block_size; j++) {
        tmp_dest[i][j] = 0;
    }

    COO_SpMV(row10_10[i], col10_10[i], val10_10[i], v_old, tmp_dest[i], i);
  }
  
  for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    for(int j = 0; j < block_size; j++) {
        v_new[start+j] = tmp_dest[i][j];
    }
  }
}

//==========================================================================
// PageRank Algorithm
//==========================================================================

void main_function(float v_new[size]) {
    
	float v_old[size];
	for (int i = 0; i < size; i++ )
    	v_old[i] = vector_init;
	
	bool done = false;

	for (int i = 0; i < 125; i++) {
		if (!done) {

			SpMV(v_new,v_old);

			LOOP_VNEW: for (int j = 0; j < size; j++) {
				v_new[j] = vector_const + alpha_complement*v_new[j];
			}

			done = is_converged(v_old, v_new);

            vector_cp(v_old, v_new);
		}
	}
}