#include <stdio.h>
#include <stdlib.h>

void arraymerger(int array1[], int array2[], int array3[], int num1, int num2, int num3){
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

    while(size < num1) {
        low1 = 0;
        k = 0;
        while(low1 + size < num1) {
            low2 = low1 + size;
            high1 = low2 - 1;
            high2 = (low2 + size - 1 < num1) ? low2 + size - 1 : num1 - 1;
            for(x = low1, y = low2; x <= high1 && y <= high2; k++) {
                if(array1[x] <= array1[y]) {
                    temp[k] = array1[x++];
                } else {
                    temp[k] = array1[y++];
                }
            }
            while(x <= high1) {
                temp[k++] = array1[x++];
            }
            while(y <= high2) {
                temp[k++] = array1[y++];
            }
            low1 = high2 + 1;
        }
        for(z = 0; z < num1; z++) {
            array1[z] = temp[z];
        }
        size = size * 2;
    }
    while(size < num2) {
        low1 = 0;
        k = 0;
        while(low1 + size < num2) {
            low2 = low1 + size;
            high1 = low2 - 1;
            high2 = (low2 + size - 1 < num2) ? low2 + size - 1 : num2 - 1;
            for(x = low1, y = low2; x <= high1 && y <= high2; k++) {
                if(array2[x] <= array2[y]) {
                    temp[k] = array2[x++];
                } else {
                    temp[k] = array2[y++];
                }
            }
            while(x <= high1) {
                temp[k++] = array2[x++];
            }
            while(y <= high2) {
                temp[k++] = array2[y++];
            }
            low1 = high2 + 1;
        }
        for(z = 0; z < num2; z++) {
            array2[z] = temp[z];
        }
        size = size * 2;
    }
    while(size < num3) {
        low1 = 0;
        k = 0;
        while(low1 + size < num3) {
            low2 = low1 + size;
            high1 = low2 - 1;
            high2 = (low2 + size - 1 < num3) ? low2 + size - 1 : num3 - 1;
            for(x = low1, y = low2; x <= high1 && y <= high2; k++) {
                if(array3[x] <= array3[y]) {
                    temp[k] = array3[x++];
                } else {
                    temp[k] = array3[y++];
                }
            }
            while(x <= high1) {
                temp[k++] = array3[x++];
            }
            while(y <= high2) {
                temp[k++] = array3[y++];
            }
            low1 = high2 + 1;
        }
        for(z = 0; z < num3; z++) {
            array3[z] = temp[z];
        }
        size = size * 2;
    }
}

int main(){
    int array1[50];
    int array2[50];
    int array3[50];
    int n1;
    int n2;
    int n3;
    int x;

    printf("Taille du Array 1: ");
    scanf("%d", &n1);    
    printf("Taille du Array 2: ");
    scanf("%d", &n2);    
    printf("Taille du Array 3: ");
    scanf("%d", &n3);    

    for(x = 0; x < n1; x++) {
        printf("valeur de la case no. %d du array 1: ", x+1);
        scanf("%d", &array1[x]);
    }
    for(x = 0; x < n2; x++) {
        printf("valeur de la case no. %d du array 2: ", x+1);
        scanf("%d", &array2[x]);
    }
    for(x = 0; x < n3; x++) {
        printf("valeur de la case no. %d du array 3: ", x+1);
        scanf("%d", &array3[x]);
    }

    arraymerger(array1, array2, array3, n1, n2, n3);
    printf("tableau trié: ");
    for(x = 0; x < n1; x++)
    {
        printf("%d  ", array1[x]);
    }
    for(x = 0; x < n2; x++)
    {
        printf("%d  ", array2[x]);
    }
    for(x = 0; x < n3; x++)
    {
        printf("%d  ", array3[x]);
    }
    return 0;
}