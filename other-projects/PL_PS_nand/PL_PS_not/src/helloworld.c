/*
 * input: a single bit from the PL side
 * output: a single bit to the PL side which is the not of the input
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"

#include "xgpio.h"



int main()
{
    init_platform();
    int din, dout;
    int counter = 0;

    XGpio input, output;
    XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&input, 1, 1); // 1 for input

    XGpio_Initialize(&output, XPAR_AXI_GPIO_1_DEVICE_ID);
    XGpio_SetDataDirection(&output, 1, 0); // 0 for outputs



    while(1)
    {
    	printf("counter = %d\n", counter);
    	din = XGpio_DiscreteRead(&input, 1);
    	dout = ~din;
    	XGpio_DiscreteWrite(&output, 1, dout);
    	counter++;
    }

    cleanup_platform();
    return 0;
}
