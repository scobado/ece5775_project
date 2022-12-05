#include <hls_stream.h>
#include <ap_int.h>
typedef ap_uint<32> coo_int;

int count_nnz(const float row[size]);

int create_COO(const float input[block_size][size], int row[coo_size], int col[coo_size], float val[coo_size], int nnz[block_size], int density);

void COO_SpMV(int row[], int col[], float val[], const float v[], float output[], int nnz);

void dut (
  hls::stream<coo_int> &strm_in,
  hls::stream<coo_int> &strm_out
);

//Top function for SpMV accelarator
void worker(float dest[size]);

