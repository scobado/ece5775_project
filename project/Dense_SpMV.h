#include <hls_stream.h>
#include <ap_int.h>
typedef ap_uint<32> coo_int;

void dut (
  hls::stream<coo_int> &strm_in,
  hls::stream<coo_int> &strm_out
);

//Top function for SpMV accelarator
void worker(float dest[size]);

void Dense_SpMV(const float input[size][size], const float vector[], float output[]);