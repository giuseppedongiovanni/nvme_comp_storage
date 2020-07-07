/*
 * minmaxavg.c

 *
 *  Created on: Feb 13, 2020
 *      Author: giuseppezynq
 */
#include "xil_printf.h"

void MinMaxAvg(double *datain, int size, double *min, double *max, double *avg)
{
	*min=0x7FFF;
	*max=0;
	*avg=0;
	double sum = 0;
    int i;
    double *tmp = datain;

    for (i=0; i < size; i++) //size equal to the number of elements for each type timer (if there are 2 timers, size=half of the total)
    {
        sum += *tmp;  //total value for the average

        if (*tmp > *max)	//searching max
        {
        	*max = *tmp;
        }

        else if (*tmp < *min) //searching min
        {
        	*min = *tmp;
        }
    	tmp = tmp + 2; //increment of 2 int to select only the even (or odd) elements
//        tmp++; //for the loop
    }
//    xil_printf("size = %d \r\n",size);
    *avg = sum/size;
}
