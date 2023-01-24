#include <stdio.h>


void merge(int array1[], int array2[], int array3[], int num1, int num2, int num3) {
    int i = 0;
    int j = 0;
    int k = 0;
    int x;
    int y;
    int temp;

    while (i < num1 && j < num2)
    {
        if (array1[i] < array2[j])
            array3[k++] = array1[i++];
        else
            array3[k++] = array2[j++];
    }
    while (i < num1)
        array3[k++] = array1[i++];
    while (j < num2)
        array3[k++] = array2[j++];
    

    for (x = 0; x < num3 - 1; x++)
    {
        for (y = 0; y < num3 - x - 1; y++)
        {
            if (array3[y] > array3[y + 1])
            {
                temp = array3[y];
                array3[y] = array3[y + 1];
                array3[y + 1] = temp;
            }
        }
    }
}

int main() {
    int array1[50];
    int array2[50];
    int array3[100];
    int num1;
    int num2;
    int num3;
    int i;

    printf("définir la taille de array1: ");
    scanf("%d", &num1);
    printf("valeur de la case no.%d de array1: ");
    for (i = 0; i < num1; i++)
        scanf("%d", &array1[i]);

    printf("définir la taille de array2: ");
    scanf("%d", &num2);
    printf("valeur de la case no.%d de array2: ");
    for (i = 0; i < num2; i++)
        scanf("%d", &array2[i]);

    num3 = num1 + num2;
    merge(array1, array2, array3, num1, num2, num3);

    printf("les array fusionné et triés: ");
    for (i = 0; i < num3; i++)
        printf("%d ", array3[i]);
    return 0;
}