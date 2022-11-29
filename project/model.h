//===========================================================================
// model.h
//===========================================================================
// @brief: This header file include the SpMV datasets

const int size = 100;
const int matrix_size = size * size;
const int PE = 1;
const int block_size = size / PE;
const int coo_size = size * block_size;
const int EPSILON = 100;
const float	alpha = 0.85;
const float alpha_complement = 1-alpha;
const float vector_init = 0.01;

// import sparse matrices

// const float matrix[10][PE][block_size][size] = {
//     #include"data/sparse.dat"
// };

// const float adj_transition[PE][block_size][size] = {
//     #include"data/adj_transition.dat"
// };

// const float matrix_1[PE][block_size][size] = {
//     #include"data/sparse_1.dat"
// };

// const float matrix_2[PE][block_size][size] = {
//     #include"data/sparse_2.dat"
// };

// const float matrix_3[PE][block_size][size] = {
//     #include"data/sparse_3.dat"
// };

// const float matrix_4[PE][block_size][size] = {
//     #include"data/sparse_4.dat"
// };

// const float matrix_5[PE][block_size][size] = {
//     #include"data/sparse_5.dat"
// };

// const float matrix_6[PE][block_size][size] = {
//     #include"data/sparse_6.dat"
// };

// const float matrix_7[PE][block_size][size] = {
//     #include"data/sparse_7.dat"
// };

// const float matrix_8[PE][block_size][size] = {
//     #include"data/sparse_8.dat"
// };

// const float matrix_9[PE][block_size][size] = {
//     #include"data/sparse_9.dat"
// };

// const float matrix_10[PE][block_size][size] = {
//     #include"data/sparse_10.dat"
// };

// import pagerank datasets

const float pagerank_1[PE][block_size][size] = {
    #include"data/pagerank_1.dat"
};

// const float pagerank_2[PE][block_size][size] = {
//     #include"data/pagerank_2.dat"
// };

// const float pagerank_3[PE][block_size][size] = {
//     #include"data/pagerank_3.dat"
// };

// const float pagerank_4[PE][block_size][size] = {
//     #include"data/pagerank_4.dat"
// };

// const float pagerank_5[PE][block_size][size] = {
//     #include"data/pagerank_5.dat"
// };

// const float pagerank_6[PE][block_size][size] = {
//     #include"data/pagerank_6.dat"
// };

// const float pagerank_7[PE][block_size][size] = {
//     #include"data/pagerank_7.dat"
// };

// const float pagerank_8[PE][block_size][size] = {
//     #include"data/pagerank_8.dat"
// };

// const float pagerank_9[PE][block_size][size] = {
//     #include"data/pagerank_9.dat"
// };

// const float pagerank_10[PE][block_size][size] = {
//     #include"data/pagerank_10.dat"
// };

// import vector

// const float vector[size] = {
//     #include"data/vector.dat"
// };

// import results

// const float result_1[size] = {
//     #include"data/result_1.dat"
// };

// const float result_2[size] = {
//     #include"data/result_2.dat"
// };

// const float result_3[size] = {
//     #include"data/result_3.dat"
// };

// const float result_4[size] = {
//     #include"data/result_4.dat"
// };

// const float result_5[size] = {
//     #include"data/result_5.dat"
// };

// const float result_6[size] = {
//     #include"data/result_6.dat"
// };

// const float result_7[size] = {
//     #include"data/result_7.dat"
// };

// const float result_8[size] = {
//     #include"data/result_8.dat"
// };

// const float result_9[size] = {
//     #include"data/result_9.dat"
// };

// const float result_10[size] = {
//     #include"data/result_10.dat"
// };

// // import ranks

const float ranks_1[size] = {
    #include"data/ranks_1.dat"
};

// const float ranks_2[size] = {
//     #include"data/ranks_2.dat"
// };

// const float ranks_3[size] = {
//     #include"data/ranks_3.dat"
// };

// const float ranks_4[size] = {
//     #include"data/ranks_4.dat"
// };

// const float ranks_5[size] = {
//     #include"data/ranks_5.dat"
// };

// const float ranks_6[size] = {
//     #include"data/ranks_6.dat"
// };

// const float ranks_7[size] = {
//     #include"data/ranks_7.dat"
// };

// const float ranks_8[size] = {
//     #include"data/ranks_8.dat"
// };

// const float ranks_9[size] = {
//     #include"data/ranks_9.dat"
// };

// const float ranks_10[size] = {
//     #include"data/ranks_10.dat"
// };

