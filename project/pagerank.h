#include <hls_stream.h>
#include <ap_int.h>
typedef ap_uint<32> coo_int;

bool is_converged(float v_old[size], float v_new[size]);

void vector_cp(float v_old[size], float v_new[size]);

void SpMV(float v_new[size], float v_old[size]);

int count_nnz(const float row[size]);

int create_COO(const float input[block_size][size], int row[coo_size], int col[coo_size], float val[coo_size], int nnz[block_size], int density);

void COO_SpMV(int row[], int col[], float val[], const float vector[], float output[], int nnz);

void dut (
  hls::stream<coo_int> &strm_in,
  hls::stream<coo_int> &strm_out
);

void main_function(float v_new[size]);