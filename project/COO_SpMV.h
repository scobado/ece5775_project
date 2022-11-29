int count_nnz(const float input[size][size]);

int create_COO(const float input[size][size], int row[], int col[], float val[], int density);

void COO_SpMV(int row[], int col[], float val[], const float vector[], float output[], int nnz);

// void worker(float dest[size], int density);
void worker(float dest[size]);