#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "pagerank.h"
#include <ap_int.h>
#include <fstream>
#include "timer.h"

using namespace std;
typedef ap_uint<32> coo_int;

//==========================================================================
// verify_results
//==========================================================================

void verify_results( float dest[], const float ref[], int size )
{
  int i;
  for ( i = 0; i < size; i++ ) {
    float dest_val = round(dest[i] * 100) / 100;
    float ref_val = round(ref[i] * 100) / 100;
    // printf("%1.4f ", dest_val);
    // printf("%1.4f\n", ref_val);
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
  float output[size];
  coo_int out_temp[size];

  hls::stream<coo_int> element;
  hls::stream<coo_int> out;

  union {float fval;int ival;} u;
  Timer timer("PageRank Using COO SpMV");
  timer.start();
  for (int i = 0; i < size; i++ ){
    u.fval = 0.0;
    coo_int iv = u.ival;
    element.write(iv);
  }
  dut(element,out);
  std::cout << "Testing PageRank\n";
  
  union {float fval;int ival;} u3;
  //read output of DUT
  for (int i = 0; i < size; i++) {
    
    out_temp[i] = out.read();
    u3.ival = out_temp[i];
    output[i] = u3.fval;
  }
  timer.stop();
  verify_results( output, ranks_10, size );
  return 0;
}