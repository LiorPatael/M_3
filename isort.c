#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "isort.h"

void shift_element(int *arr,int i){
        for(int k=i; k>0; k--){
           int temp=*(arr+k-1);
            *(arr+k)=temp;
        }
}
void insertion_sort(int* arr , int len){
        for (int i = 1; i < len; i++)
        {
                int temp=*(arr+i);
                int j=i-1;
                while(j>=0 && *(arr+j)>temp){
                        *(arr+j+1)=*(arr+j);
                        j--;
                }
                *(arr+j+1)=temp;
        }
        
}
