#include <hls_stream.h>
#include <ap_int.h>
typedef ap_uint<32> coo_int;

int count_nnz(const float input[size][size]);

void create_COO(const float input[size][size], int row[matrix_size], int col[matrix_size], float val[matrix_size]);

void COO_SpMV(int row[], int col[], float val[], const float v[], float output[], int nnz);

void dut (
  hls::stream<coo_int> &strm_in,
  hls::stream<coo_int> &strm_out
);

//Top function for SpMV accelarator
void worker(float dest[size]);

