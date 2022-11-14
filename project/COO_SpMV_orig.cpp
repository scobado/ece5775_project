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

void COO_SpMV(int row[], int col[], float val[], const float vector[], float output[], int nnz) {
    for(int i = 0; i < size; i++) {
        output[i] = 0;
    }
    for(int i = 0; i < nnz; i++) {
        output[row[i]] += val[i] * vector[col[i]];
    }
}

//==========================================================================
// Dense matrix-vector multiplication
//==========================================================================

void Dense_SpMV(const float input[], const float vector[], float output[]) {
  for(int i = 0; i < size; i++)
    output[i] = 0;
    
  for(int i = 0; i < size; i++) {
    for(int j = 0; j < size; j++) {
      output[i] += input[i*size+j] * vector[j];
    }
  }
}

//==========================================================================
// Convert a given matrix to COO format
//==========================================================================

void create_COO(const float input[matrix_size], int row[], int col[], float val[]) {
    int counter = 0;
    for(int i = 0; i < matrix_size; i++) {
      if (input[i] != 0) {
          row[counter] = i/size;
          col[counter] = i%size;
          val[counter] = input[i];
          counter += 1;
      }
    }
}

//==========================================================================
// Count the number of non-zero elements in a sparse matrix
//==========================================================================

int count_nnz(const float input[matrix_size]) {
    int counter = 0;
    for(int i = 0; i < matrix_size; i++) {
      if (input[i] != 0) {
          counter += 1;
      }
    }
    return counter;
}

//==========================================================================
// verify_results
//==========================================================================

void verify_results( float dest[], const float ref[], int size )
{
  int i;
  for ( i = 0; i < size; i++ ) {
    float dest_val = round(dest[i] * 10) / 10;
    float ref_val = round(ref[i] * 10) / 10;
    if ( !( dest_val == ref_val ) ) {
      std::cout << dest_val << " ";
      std::cout << ref_val << " ";
      std::cout << "\033[31m" << "Failed :(\n";
      std::cout << "\033[0m";
      exit(0);
    }
  }
  std::cout << "\033[32m" << "Passed :)\n";
  std::cout << "\033[0m";
}

//==========================================================================
// Test Harness
//==========================================================================

int main( int argc, char* argv[] ) {
  float dest[size];

  for (int i = 0; i < size; i++ )
    dest[i] = 0;

  std::cout << "Testing Dense SpMV\n";

  Dense_SpMV(matrix_1, vector, dest);
  verify_results( dest, result_1, size );

  Dense_SpMV(matrix_2, vector, dest);
  verify_results( dest, result_2, size );

  Dense_SpMV(matrix_3, vector, dest);
  verify_results( dest, result_3, size );

  Dense_SpMV(matrix_4, vector, dest);
  verify_results( dest, result_4, size );

  Dense_SpMV(matrix_5, vector, dest);
  verify_results( dest, result_5, size );

  Dense_SpMV(matrix_6, vector, dest);
  verify_results( dest, result_6, size );

  Dense_SpMV(matrix_7, vector, dest);
  verify_results( dest, result_7, size );

  Dense_SpMV(matrix_8, vector, dest);
  verify_results( dest, result_8, size );

  Dense_SpMV(matrix_9, vector, dest);
  verify_results( dest, result_9, size );

  Dense_SpMV(matrix_10, vector, dest);
  verify_results( dest, result_10, size );


  return 0;
}

  std::cout << "Testing COO SpMV\n";

  int nnz = count_nnz(matrix_1);
  int row_1[nnz];
  int col_1[nnz];
  float val_1[nnz];

  create_COO(matrix_1, row_1, col_1, val_1);
  COO_SpMV(row_1, col_1, val_1, vector, dest, nnz);
  verify_results( dest, result_1, size );

  nnz = count_nnz(matrix_2);
  int row_2[nnz];
  int col_2[nnz];
  float val_2[nnz];

  create_COO(matrix_2, row_2, col_2, val_2);
  COO_SpMV(row_2, col_2, val_2, vector, dest, nnz);
  verify_results( dest, result_2, size );

  nnz = count_nnz(matrix_3);
  int row_3[nnz];
  int col_3[nnz];
  float val_3[nnz];

  create_COO(matrix_3, row_3, col_3, val_3);
  COO_SpMV(row_3, col_3, val_3, vector, dest, nnz);
  verify_results( dest, result_3, size );

  nnz = count_nnz(matrix_4);
  int row_4[nnz];
  int col_4[nnz];
  float val_4[nnz];

  create_COO(matrix_4, row_4, col_4, val_4);
  COO_SpMV(row_4, col_4, val_4, vector, dest, nnz);
  verify_results( dest, result_4, size );

  nnz = count_nnz(matrix_5);
  int row_5[nnz];
  int col_5[nnz];
  float val_5[nnz];

  create_COO(matrix_5, row_5, col_5, val_5);
  COO_SpMV(row_5, col_5, val_5, vector, dest, nnz);
  verify_results( dest, result_5, size );

  nnz = count_nnz(matrix_6);
  int row_6[nnz];
  int col_6[nnz];
  float val_6[nnz];

  create_COO(matrix_6, row_6, col_6, val_6);
  COO_SpMV(row_6, col_6, val_6, vector, dest, nnz);
  verify_results( dest, result_6, size );

  nnz = count_nnz(matrix_7);
  int row_7[nnz];
  int col_7[nnz];
  float val_7[nnz];

  create_COO(matrix_7, row_7, col_7, val_7);
  COO_SpMV(row_7, col_7, val_7, vector, dest, nnz);
  verify_results( dest, result_7, size );

  nnz = count_nnz(matrix_8);
  int row_8[nnz];
  int col_8[nnz];
  float val_8[nnz];

  create_COO(matrix_8, row_8, col_8, val_8);
  COO_SpMV(row_8, col_8, val_8, vector, dest, nnz);
  verify_results( dest, result_8, size );

  nnz = count_nnz(matrix_9);
  int row_9[nnz];
  int col_9[nnz];
  float val_9[nnz];

  create_COO(matrix_9, row_9, col_9, val_9);
  COO_SpMV(row_9, col_9, val_9, vector, dest, nnz);
  verify_results( dest, result_9, size );

  nnz = count_nnz(matrix_10);
  int row_10[nnz];
  int col_10[nnz];
  float val_10[nnz];

  create_COO(matrix_10, row_10, col_10, val_10);
  COO_SpMV(row_10, col_10, val_10, vector, dest, nnz);
  verify_results( dest, result_10, size );