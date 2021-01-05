#include <stdio.h>
#include "isort.h"

#define size 50
int main(){
    int arr[size];
    int i=0;

	int* pointerArr=arr;	
    while((scanf("%d", pointerArr+i)!= EOF)&&(i < size)) i++;
    shift_element(arr,0);
    for(i=0; i<size; i++){
    printf("%d ",arr[i]);
    }
    printf("\n");
    
    insertion_sort(arr,size);
    for(i=0; i<size-1; i++){
    printf("%d,",arr[i]);
    }
    printf("%d\n",arr[size-1]);
    return 0;
}
