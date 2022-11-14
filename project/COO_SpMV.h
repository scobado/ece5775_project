int count_nnz(const float input[size][size]);

void create_COO(const float input[size][size], int row[], int col[], float val[]);

void COO_SpMV(int row[], int col[], float val[], const float vector[], float output[], int nnz);