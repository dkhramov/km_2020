#include <stdio.h> 
#define N 3 
  
int main() 
{ 
    int A[N][N] = { {1, 1, 1}, 
                    {2, 2, 2}, 
                    {3, 3, 3}}; 
  
    int B[N][N] = { {1, 1, 1}, 
                    {2, 2, 2}, 
                    {3, 3, 3}}; 
  
    int C[N][N];
    int i, j; 

	// C = A + B
    for (i = 0; i < N; i++) 
        for (j = 0; j < N; j++) 
            C[i][j] = A[i][j] + B[i][j]; 
  
    printf("Result matrix is \n"); 
    for (i = 0; i < N; i++) 
    { 
        for (j = 0; j < N; j++) 
           printf("%d ", C[i][j]); 
        printf("\n"); 
    } 
  
    return 0; 
}
