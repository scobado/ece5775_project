//===========================================================================
// model.h
//===========================================================================
// @brief: This header file include the SpMV datasets

const int size = 100;
const int matrix_size = size * size;
const int PE = 1;
const int block_size = size / PE;
const int coo_size = size * block_size / 3;
const float	alpha = 0.85;
const float alpha_complement = 1-alpha;
const float vector_init = 0.01;
const float vector_const = alpha * vector_init;

// import sparse matrices

// const float matrix[10][PE][block_size][size] = {
//     #include"data/sparse.dat"
// };
const float matrix_2_dense[size][size] = {
    #include"data/sparse_2.dat"
};

const int row10_25[PE][coo_size] = {
    #include"data/preproc_row10_pe25.dat"
};

const int col10_25[PE][coo_size] = {
    #include"data/preproc_col10_pe25.dat"
};

const float val10_25[PE][coo_size] = {
    #include"data/preproc_val10_pe25.dat"
};

const int row10_1[PE][coo_size] = {
    #include"data/preproc_row10_pe1.dat"
};

const int col10_1[PE][coo_size] = {
    #include"data/preproc_col10_pe1.dat"
};

const float val10_1[PE][coo_size] = {
    #include"data/preproc_val10_pe1.dat"
};

const float matrix_10[PE][block_size][size] = {
    #include"data/sparse_10.dat"
};

// import pagerank datasets

const float transposed_10[PE][block_size][size] = {
    #include"data/transposed_10.dat"
};

// import vector

const float v[size] = {
    #include"data/vector.dat"
};

// import results
const float result_0[size] = {
    #include"data/result_0.dat"
};

const float result_10[size] = {
    #include"data/result_10.dat"
};

const float ranks_10[size] = {
    #include"data/ranks_10.dat"
};

