#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "COO_SpMV.h"
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
    float dest_val = round(dest[i] * 10) / 10;
    float ref_val = round(ref[i] * 10) / 10;
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
  Timer timer("COO SpMV Accelerated");
  timer.start();
  for (int i = 0; i < size; i++ ){
    u.fval = 0.0;
    coo_int iv = u.ival;
    element.write(iv);
  }
  dut(element,out);
  std::cout << "Testing COO SpMV\n";
  
  union {float fval;int ival;} u3;
  //read output of DUT
  for (int i = 0; i < size; i++) {
    
    out_temp[i] = out.read();
    u3.ival = out_temp[i];
    output[i] = u3.fval;
  }
  timer.stop();
  verify_results( output, result_10, size );
  return 0;
}


// //commented the top part for trying out the union part
// //this union model works independently but you might need to see its implementation in our host/dut
// #include <stdio.h>
// #include <iostream>
// using namespace std;
// int main(){
// union {float fval; int ival;} u;
// // union {int ival1;float fval1;} u1;
// u.fval = 1.01;
// int iv = u.ival;
// printf("%d\n",iv);
// u.ival = iv;
// float ov = u.fval;
// // u1.ival1 = iv;
// // float ov = u1.fval1;
//  printf("%f\n",ov);
// return 0;
// }
