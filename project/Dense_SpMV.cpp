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
// Dense matrix-vector multiplication
//==========================================================================

void Dense_SpMV(const float input[size][size], const float vector[size], float output[size]) {
  for(int i = 0; i < size; i++)
    output[i] = 0;
  #pragma HLS PIPELINE
  for(int i = 0; i < size; i++) {
    for(int j = 0; j < size; j++) {
      output[i] += input[i][j] * vector[j];
    }
  }
}

