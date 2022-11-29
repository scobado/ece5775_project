int count_nnz(const float row[size]);

int create_COO(const float input[block_size][size], int row[coo_size], int col[coo_size], float val[coo_size], int nnz[block_size], int density);

void COO_SpMV(int row[], int col[], float val[], const float vector[], float output[], int nnz);

void worker(float dest[size]);