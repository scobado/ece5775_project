#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "pagerank.h"

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
    printf("%1.4f ", dest[i]);
    printf("%1.4f\n", ref[i]);
    if ( !( dest_val == ref_val ) ) {
      std::cout << dest_val << " ";
      std::cout << ref_val << " ";
      std::cout << "\033[31m" << "Failed :(\n";
      std::cout << "\033[0m";
      exit(-1);
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

  std::cout << "Testing PageRank\n";
  main_function(dest);
//   float result[size] = {0.0250, 0.2375, 0.2375, 0.2375, 0.0250, 0.2375};
  verify_results( dest, ranks_1, size );
  return 0;
}