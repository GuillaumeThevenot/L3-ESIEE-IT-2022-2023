#include <stdio.h>
#include <stdlib.h>

int mergesort(int array[], int num){
    int x;
    int y;
    int z;
    int temp[50];
    int size = 1;
    int low1;
    int low2;
    int high1;
    int high2;
    int k;

    while(size < num) {
        low1 = 0;
        k = 0;
        while(low1 + size < num) {
            low2 = low1 + size;
            high1 = low2 - 1;
            high2 = (low2 + size - 1 < num) ? low2 + size - 1 : num - 1;
            for(x = low1, y = low2; x <= high1 && y <= high2; k++) {
                if(array[x] <= array[y]) {
                    temp[k] = array[x++];
                } else {
                    temp[k] = array[y++];
                }
            }
            while(x <= high1) {
                temp[k++] = array[x++];
            }
            while(y <= high2) {
                temp[k++] = array[y++];
            }
            low1 = high2 + 1;
        }
        for(z = 0; z < num; z++) {
            array[z] = temp[z];
        }
        size = size * 2;
    }
}

int main(){
    int array[50];
    int n;
    int x;

    printf("Taille du Array ");
    scanf("%d", &n);    

    for(x = 0; x < n; x++) {
        printf("valeur de la case no. %d:", x+1);
        scanf("%d", &array[x]);
    }

    mergesort(array, n);
    printf("tableau trié: ");
    for(x = 0; x < n; x++)
    {
        printf("%d  ", array[x]);
    }
    return 0;
}