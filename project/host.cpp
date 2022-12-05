#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>

#include<iostream>
#include<fstream>

//#include "typedefs.h"
#include "timer.h"
#include "model.h"
#include "COO_SpMV.h"

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------
/*const int TEST_SIZE = 100;  // number of test instances

void read_test_images(int8_t test_images[TEST_SIZE][256]) {
  std::ifstream infile("data/test_b.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      for (int pixel = 0; pixel < 256; pixel++) {
        int i;
        infile >> i;
        test_images[index][pixel] = i;
      }
    }
    infile.close();
  }
}*/

/*void read_test_labels(int test_labels[TEST_SIZE]) {
  std::ifstream infile("data/label.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      infile >> test_labels[index];
    }
    infile.close();
  }
}*/

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
  //int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) //|| (fdw < 0)) 
  {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }
  
  // Arrays to store test data and expected results (labels)
  //int8_t test_images[TEST_SIZE][256];
  //bit32_t test_image;
  //int    test_labels[TEST_SIZE];

  // Timer
  Timer timer("digitrec bnn on FPGA");
  // intermediate results
  //int nbytes;
  //int error = 0;
  //int num_test_insts = 0;
  //float correct = 0.0;
    
  //--------------------------------------------------------------------
  // Read data from the input file into two arrays
  //--------------------------------------------------------------------
  //read_test_images(test_images);
  //read_test_labels(test_labels); 

  timer.start();
  //--------------------------------------------------------------------
  // Send data to accelerator
  //--------------------------------------------------------------------
  /*for (int i = 0; i < size; ++i) {
    // Send 32-bit value through the write channel
    //for (int j = 0; j < 8; j++) {
      //for (int k = 0; k < 32; k++) {
        //test_image(k,k) = test_images[i][j*32+k];
      //}
      nbytes = write (fdw, (void*)&test_image, sizeof(test_image));
      assert (nbytes == sizeof(test_image));
    }
  }*/

  //--------------------------------------------------------------------
  // Receive data from the accelerator
  //--------------------------------------------------------------------
  float dest[size];
  for (int i = 0; i < size; ++i) {
    

    read (fdr, (void*)&dest, sizeof(dest));
    //assert (nbytes == sizeof(dest));
    output_vector[i] = dest[i];
}


timer.stop();
verify_results( output_vector, result_2, size );
  //--------------------------------------------------------------------
  // Calculate error rate
  //--------------------------------------------------------------------
  //std::cout << "Testing images: " << TEST_SIZE << std::endl;
  //std::cout << "Accuracy: " << correct/TEST_SIZE << std::endl;

  return 0;
}
