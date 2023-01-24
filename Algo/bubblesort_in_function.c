#include <stdio.h>

void SwapFunk(int *i, int *j){
    int Temp;

    Temp = *i;
    *i = *j;
    *j = Temp;
}

void bubbleSort(int array[], int num){
    int x;
    int y;
    int temp;

    for(x = 0; x < num - 1; x++) {    
        for(y = 0; y < num - x - 1; y++) {    
            if(array[y] > array[y + 1]) {
                SwapFunk(&array[y], &array[y + 1]);
            }
        }
    }
}

int main(){
    int array[50];
    int n;
    int x;

    printf("Enter Number of Elements in the array: ");
    scanf("%d", &n);    
    
    for(x = 0; x < n; x++) {
        printf("Enter Value of Elements no. %d:", x+1);
        scanf("%d", &array[x]);
    }

    bubbleSort(array, n);
    printf("Array sorted in ascending order: ");
    for(x = 0; x < n; x++)
    {
        printf("%d  ", array[x]);
    }
    return 0;
}