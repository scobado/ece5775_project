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

#include <stdio.h>		// for printf() 
#include <string.h>		// for memcpy()

#define	N_NODES		6	// number of nodes 
#define N_STEPS		125	// number of steps

typedef double Matrix[ N_NODES ][ N_NODES ];

Matrix       digraph =	{
			0, 1, 1, 1, 0, 1,
			0, 0, 0, 1, 1, 1,
			0, 0, 0, 1, 1, 0,
			1, 0, 0, 0, 1, 0,
			1, 0, 1, 0, 0, 0,
			0, 0, 0, 1, 0, 0
			};

Matrix 	transition;


int main( int argc, char **argv )
{
	// display our title for this demonstration 
	printf( "\n\n An example to illustrate the PageRank algorithm \n\n" );

	// display the directed graph's incidence matrix
	printf( " Here is the incidence matrix for the directed graph: " );
	for (int i = 0; i < N_NODES; i++)
		{
		printf( "\n         " );
		for (int j = 0; j < N_NODES; j++)
			printf( " %1.0f ", digraph[ i ][ j ] );
		}
	printf( "\n" );
	getchar();

	// compute entries for the corresponding transition matrix
	for (int i = 0; i < N_NODES; i++)
		{
		double	rowsum = 0;
		for (int j = 0; j < N_NODES; j++) rowsum += digraph[i][j];
		if ( rowsum > 0 ) 
			for (int j = 0; j < N_NODES; j++) 
				transition[ i ][ j ] = digraph[i][j]/rowsum;
		else	// A fixup for the "dangling node" problem
			for (int j = 0; j < N_NODES; j++)
				transition[ i ][ j ] = 1.0 / N_NODES;
		}

	// display the specified transition matrix
	printf( "\n Here is the corresponding Transition Matrix: " );
	for (int i = 0; i < N_NODES; i++)
		{
		printf( "\n         " );
		for (int j = 0; j < N_NODES; j++)
			printf( " %1.4f ", transition[ i ][ j ] );
		}
	printf( "\n\n" );
	getchar();

	// recompute the transition matrix entries
	double	alpha = 0.85;
	for (int i = 0; i < N_NODES; i++)
	for (int j = 0; j < N_NODES; j++)
		{
		double	entry = transition[ i ][ j ];		
		entry = (alpha * entry) + ((1.0 - alpha) / N_NODES);
		transition[ i ][ j ] = entry;
		} 

	// display the modified transition matrix
	printf( "\n Here is the adjusted Transition Matrix: " );
	for (int i = 0; i < N_NODES; i++)
		{
		printf( "\n         " );
		for (int j = 0; j < N_NODES; j++)
			printf( " %1.4f ", transition[ i ][ j ] );
		}
	printf( "\n\n" );
	getchar();

	// initialize the current matrix power
	Matrix	current = { 0 };
	for (int i = 0; i < N_NODES; i++)
	for (int j = 0; j < N_NODES; j++)
		current[ i ][ j ] = ( i == j ) ? 1.0 : 0.0;

	//----------------------------------------------------
	// main loop to display the sequence of matrix powers
	//----------------------------------------------------
	int step = 0; 
	do	{
		// compute the next matrix power 
		Matrix	product = { 0 };
		for (int i = 0; i < N_NODES; i++)
		for (int j = 0; j < N_NODES; j++)
			{
			double	sum = 0.0;
			for (int k = 0; k < N_NODES; k++)
				sum += current[ i ][ k ] * transition[ k ][ j ];
			product[ i ][ j ] = sum;
			}
		memcpy( current, product, sizeof( Matrix ) );

		// display the current matrix power
		printf( "\n The Transition Matrix to power %d: ", step+1 );
		for (int i = 0; i < N_NODES; i++)
			{
			printf( "\n         " );
			for (int j = 0; j < N_NODES; j++)
				printf( " %1.4f ", current[ i ][ j ] );
			}
		printf( "\n" );

		// see if the stationary vector has been reached yet
		double	diff, square_diff = 0.0;
		for (int j = 0; j < N_NODES; j++)
		for (int i = 1; i < N_NODES; i++)
			{
			diff = (current[i][j] - current[0][j]);
			square_diff += diff * diff;
			}
		if ( square_diff < 0.000000000000001 ) break;
		else	++step;
		}
	while ( 1 );
	printf( "\n" );

	// display the stationary vector with the node-name letters	
	double	rank[ N_NODES ];
	int	node[ N_NODES ];
	for (int j = 0; j < N_NODES; j++) 
		{
		node[ j ] = j;
		rank[ j ] = current[ 0 ][ j ]; 
		}
	printf( "\n Here is the resulting page-rank vector: \n" );
	printf( "\n         " );
	for (int j = 0; j < N_NODES; j++) printf( " %1.4f ", rank[ j ] );
	printf( "\n       " );
	for (int j = 0; j < N_NODES; j++) printf( " %6c ", 'A' + node[ j ] );
	printf( "\n\n" );

}