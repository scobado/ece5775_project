// #include "ap_int.h"

// typedef ap_uint<32> bit32_t;

// Top function for synthesis
// void dut (
//   hls::stream<bit32_t> &strm_in,
//   hls::stream<bit32_t> &strm_out
// );

int count_nnz(const float input[size][size]);

int create_COO(const float input[size][size], int row[], int col[], float val[]);

void COO_SpMV(int row[], int col[], float val[], const float vector[], float output[], int nnz);