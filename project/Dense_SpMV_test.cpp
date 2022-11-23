#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "Dense_SpMV.h"

using namespace std;

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

  // Dense_SpMV(matrix_2, vector, dest);
  // verify_results( dest, result_2, size );

  // Dense_SpMV(matrix_3, vector, dest);
  // verify_results( dest, result_3, size );

  // Dense_SpMV(matrix_4, vector, dest);
  // verify_results( dest, result_4, size );

  // Dense_SpMV(matrix_5, vector, dest);
  // verify_results( dest, result_5, size );

  // Dense_SpMV(matrix_6, vector, dest);
  // verify_results( dest, result_6, size );

  // Dense_SpMV(matrix_7, vector, dest);
  // verify_results( dest, result_7, size );

  // Dense_SpMV(matrix_8, vector, dest);
  // verify_results( dest, result_8, size );

  // Dense_SpMV(matrix_9, vector, dest);
  // verify_results( dest, result_9, size );

  // Dense_SpMV(matrix_10, vector, dest);
  // verify_results( dest, result_10, size );

  return 0;
}