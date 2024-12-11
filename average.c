#include<stdio.h>

double average(int arr[10]) {
    int sum = 0;
    double average = 0;
    for(int i = 0; i < 10; i++) {
        sum += arr[i];
    }
    average = sum / 10.0;
    return average;
}

int main(void) {
    int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    printf("Average is: %.1lf",  average(arr));
    printf("\n");

    int arr2[10] = {7, 2, 5, 11, 4, 6, 1, 1, 8, 3};
    printf("Average is: %.1lf",  average(arr2));
    return 0;
}