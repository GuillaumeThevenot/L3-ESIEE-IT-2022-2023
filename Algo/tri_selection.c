#include <stdio.h>

int selectionsort(int array[], int num){
    int x;
    int y;
    int temp;
    int min;

    for(x = 0; x < num - 1; x++) {    
        min = x;
        for(y = x + 1; y < num; y++) {    
            if(array[y] < array[min]) {
                min = y;
            }
        }
        temp = array[x];
        array[x] = array[min];
        array[min] = temp;
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

    selectionsort(array, n);
    printf("tableau trié: ");
    for(x = 0; x < n; x++)
    {
        printf("%d  ", array[x]);
    }
    return 0;
}