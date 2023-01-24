#include <stdio.h>
#include <stdlib.h>

int insertionsort(int array[], int num){
    int x;
    int y;
    int temp;

    for(x = 1; x < num; x++) {    
        temp = array[x];
        y = x - 1;
        while(y >= 0 && array[y] > temp) {
            array[y + 1] = array[y];
            y = y - 1;
        }
        array[y + 1] = temp;
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

    insertionsort(array, n);
    printf("tableau trié: ");
    for(x = 0; x < n; x++)
    {
        printf("%d  ", array[x]);
    }
    return 0;
}