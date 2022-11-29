//===========================================================================
// model.h
//===========================================================================
// @brief: This header file include the SpMV datasets

const int size = 6;
const int matrix_size = size * size;
const int PE = 1;
const int block_size = size / PE;
const int coo_size = size * block_size;

// import sparse matrices

// const float matrix[10][PE][block_size][size] = {
//     #include"data/sparse.dat"
// };

const float adj_transition[PE][block_size][size] = {
    #include"data/adj_transition.dat"
};

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

// // const float matrix_1[size][size] = {
// //     #include"data/sparse_1.dat"
// // };

// // const float matrix_2[size][size] = {
// //     #include"data/sparse_2.dat"
// // };

// // const float matrix_3[size][size] = {
// //     #include"data/sparse_3.dat"
// // };

// // const float matrix_4[size][size] = {
// //     #include"data/sparse_4.dat"
// // };

// // const float matrix_5[size][size] = {
// //     #include"data/sparse_5.dat"
// // };

// // const float matrix_6[size][size] = {
// //     #include"data/sparse_6.dat"
// // };

// // const float matrix_7[size][size] = {
// //     #include"data/sparse_7.dat"
// // };

// // const float matrix_8[size][size] = {
// //     #include"data/sparse_8.dat"
// // };

// // const float matrix_9[size][size] = {
// //     #include"data/sparse_9.dat"
// // };

// // const float matrix_10[size][size] = {
// //     #include"data/sparse_10.dat"
// // };

// // import vector

// const float vector[size] = {
//     #include"data/vector.dat"
// };

// // import results

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