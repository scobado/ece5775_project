#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>
#include<ap_int.h>
#include<iostream>
#include<fstream>

#include "timer.h"
#include "model.h"
#include "COO_SpMV_orig.h"

typedef ap_uint<32> coo_int;

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

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


//--------------------------------------
// main function
//--------------------------------------
int main(int argc, char** argv)
{
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);
  
  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }
  
  // Arrays to store test data and expected results (labels)
  
  float output_vector[size];

  // Timer
  Timer timer("COO SpMV on FPGA");

  //--------------------------------------------------------------------
  // Read data from the input file into two arrays
  //--------------------------------------------------------------------

  int nbytes;

  timer.start();

  //--------------------------------------------------------------------
  // Send data to accelerator
  //--------------------------------------------------------------------

  union {float fval;int ival;} u;

  for (int i = 0; i < size; i++ ){
    u.fval = 0.0;
    coo_int iv = u.ival;
    nbytes = write (fdw, (void*)&iv, sizeof(iv));
    assert (nbytes == sizeof(iv));
  }

  //--------------------------------------------------------------------
  // Receive data from the accelerator
  //--------------------------------------------------------------------
  
  union {float fval;int ival;} u3;
  for (int i = 0; i < size; ++i) {
    
    coo_int dest;
    read (fdr, (void*)&dest, sizeof(dest));
    u3.ival = dest;
    output_vector[i] = u3.fval;
  }

  timer.stop();
  verify_results( output_vector, result_10, size );
  return 0;
}
