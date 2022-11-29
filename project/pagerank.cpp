//-------------------------------------------------------------------
//	pagerank.cpp	     (A revision of our 'matpower.cpp' demo)
//
//	This program implements the PageRank link analysis algorithm 
//	described in the expository paper by Professor Joseph Khoury 
//	(Univ. of Ottawa) using his six-node directed graph example,  
//	except that we display the matrices in row-stochastic format
//	rather than column-stochastic, to conform with our textbook.
//
//		to compile:  $ g++ pagerank.cpp -o pagerank
//		to execute:  $ ./pagerank
//
//	programmer: ALLAN CRUSE
//	written on: 04 MAR 2011
//	revised on: 21 MAR 2011
//-------------------------------------------------------------------

#include <cstdlib>
#include <math.h>
#include <iostream>
#include <stdio.h>
#include "model.h"
#include "COO_SpMV.h"


#define N_STEPS		125	// number of steps
#define EPSILON		100

typedef float Matrix[ size ][ size ];

Matrix       digraph =	{
			0, 1, 1, 1, 0, 1,
			0, 0, 0, 1, 1, 1,
			0, 0, 0, 1, 1, 0,
			1, 0, 0, 0, 1, 0,
			1, 0, 1, 0, 0, 0,
			0, 0, 0, 1, 0, 0
			};

const float	alpha = 0.85;

// const float	adj_transition[PE][block_size][size] {
// 	      0.0250,  0.2375,  0.2375,  0.2375,  0.0250,  0.2375, 
//           0.0250,  0.0250,  0.0250,  0.3083,  0.3083,  0.3083, 
//           0.0250,  0.0250,  0.0250,  0.4500,  0.4500,  0.0250, 
//           0.4500,  0.0250,  0.0250,  0.0250,  0.4500,  0.0250, 
//           0.4500,  0.0250,  0.4500,  0.0250,  0.0250,  0.0250, 
//           0.0250,  0.0250,  0.0250,  0.8750,  0.0250,  0.0250
// };

bool is_converged(float v_old[size], float v_new[size]) {

	float diff, square_diff = 0.0;

	for (int i = 0; i < size; i++) {
		diff = v_old[i] - v_new[i];
		square_diff += diff * diff; 
	}

	bool done = square_diff < EPSILON;

	return done;
}

void vector_cp(float v_old[size], float v_new[size]) {
	for (int i = 0; i < size; i++){
		v_old[i] = v_new[i];
	}
}

void worker(float dest[size], float vector[size]) {

  float tmp_dest[PE][block_size];
  int row[PE][coo_size];
  int col[PE][coo_size];
  float val[PE][coo_size];
  int row_nnz[PE][block_size];

  LOOP_PE1: for (int i = 0; i < PE; i++) {
    for (int j = 0; j < block_size; j++) {
        row_nnz[i][j] = count_nnz(adj_transition[i][j]);
    }
  }

  LOOP_PE2: for (int i = 0; i < PE; i++) {
	LOOP_DEST1: for(int j = 0; j < block_size; j++) {
        tmp_dest[i][j] = 0;
    }

    int nnz = create_COO(adj_transition[i], row[i], col[i], val[i], row_nnz[i], i);
    COO_SpMV(row[i], col[i], val[i], vector, tmp_dest[i], nnz);
  }
  
  for (int i = 0; i < PE; i++) {
    int start = i*block_size;
    for(int j = 0; j < block_size; j++) {
        dest[start+j] = tmp_dest[i][j];
    }
  }
}

void main_function(float v_new[size])
{
	float v_init[size] = { 0 };
	float v_old[size] = { 0 };
	// float v_new[size] = { 0 };
	
	bool done = false;

	for (int i = 0; i < 125; i++) {
		if (!done) {
			vector_cp(v_old, v_new);

			worker(v_new,v_old);

			for (int j = 0; j < size; j++) {
				v_new[i] = alpha*v_init[i] + (1-alpha)*v_new[i];
			}

			done = is_converged(v_old, v_new);
		}
	}

	printf( "\n Here is the resulting page-rank vector: \n" );
	printf( "\n         " );
	for (int j = 0; j < size; j++) printf( " %1.4f ", v_new[ j ] );

}