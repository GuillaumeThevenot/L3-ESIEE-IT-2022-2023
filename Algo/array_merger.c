#include <stdio.h>


int arraymerger(int array1[], int array2[], int num1, int num2){
    int x;
    int y;
    int temp;

    for(x = 1; x < num1; x++) {    
        temp = array1[x];
        y = x - 1;
        while(y >= 0 && array1[y] > temp) {
            array1[y + 1] = array1[y];
            y = y - 1;
        }
        array1[y + 1] = temp;
    }
    for(x = 1; x < num2; x++) {    
        temp = array2[x];
        y = x - 1;
        while(y >= 0 && array2[y] > temp) {
            array2[y + 1] = array2[y];
            y = y - 1;
        }
        array2[y + 1] = temp;
    }
}

int main(){
    int array1[50];
    int array2[50];
    int n1;
    int n2;
    int x;

    printf("Taille du Array 1 ");
    scanf("%d", &n1);    
    printf("Taille du Array 2 ");
    scanf("%d", &n2);    
    for(x = 0; x < n1; x++) {
        printf("valeur de la case no. %d:", x+1);
        scanf("%d", &array1[x]);
    }
    for(x = 0; x < n2; x++) {
        printf("valeur de la case no. %d:", x+1);
        scanf("%d", &array2[x]);
    }

    arraymerger(array1, array2, n1, n2);
    printf("tableau trié: ");
    for(x = 0; x < n1; x++)
    {
        printf("%d  ", array1[x]);
    }
    for(x = 0; x < n2; x++)
    {
        printf("%d  ", array2[x]);
    }
    return 0;
}