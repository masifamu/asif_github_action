#include <stdio.h>
#include "average.h"


int main(void){
	float array[] = {-1.0, 0.0, 1.0, 2.0, 3.0};
	float avg = average(array, 5);
	printf("Average: %f\r\n", avg);
	printf("Executed Successfully\r\n");
	return 0;
}
