/*
 * dma_operation.c

 *
 *  Created on: Mar 24, 2020
 *      Author: giuseppezynq
 */
#include "xaxidma.h"
#include "memory_map.h"

#include "xtime_l.h"

extern double *timer_pointer2;
extern double *timer_pointer3;
extern double *limit_pointer2;
extern XTime timer3,timer4,timer5;
extern int kounter2;

void DMATransfer(XAxiDma *InstancePtr, u8 *Data_TxBufferPtr, u8 *Data_RxBufferPtr, u8 *Spare_TxBufferPtr, u8 *Spare_RxBufferPtr)
{
//	XTime_GetTime(&timer3);
	int transfer;
	//data buffer
	Xil_DCacheFlushRange((UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#ifdef __aarch64__
		Xil_DCacheFlushRange((UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif

	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, XAXIDMA_DEVICE_TO_DMA);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer1 forward = %d \r\n",transfer);
	}
	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, XAXIDMA_DMA_TO_DEVICE);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer1 back = %d \r\n",transfer);
	}
	while ((XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
//		xil_printf("busy1_1 = %d; busy1_2 = %d \r\n",XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA),XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE));
	}
	/* Invalidate the DestBuffer before receiving the data, in case the Data Cache is enabled */
	#ifndef __aarch64__
		Xil_DCacheInvalidateRange((UINTPTR)Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif

//	XTime_GetTime(&timer4);
	///////////////////////////////////////////////////////////////////////////////////////////////
	//spare buffer
	Xil_DCacheFlushRange((UINTPTR) Spare_TxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE);
	#ifdef __aarch64__
		Xil_DCacheFlushRange((UINTPTR) Spare_RxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE);
	#endif

	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Spare_RxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE, XAXIDMA_DEVICE_TO_DMA);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer2 forward = %d \r\n",transfer);
	}
	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Spare_TxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE, XAXIDMA_DMA_TO_DEVICE);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer2 back = %d \r\n",transfer);
	}
	while ((XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
//		xil_printf("busy2_1 = %d; busy2_2 = %d \r\n",XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA),XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE));
	}

	#ifndef __aarch64__
		Xil_DCacheInvalidateRange((UINTPTR)Spare_RxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE);
	#endif

//	XTime_GetTime(&timer5);
//	if (timer_pointer2 <= limit_pointer2)
//	{
//		kounter2++;
//		*timer_pointer2=((timer4-timer3)*(10/4));
//		timer_pointer2++;
//		*timer_pointer3=((timer5-timer4)*(10/4));
//		timer_pointer3++;
//	}
	//////////////////////////////////////////////////////////////////////////
}

void DMATransferRaw(XAxiDma *InstancePtr, u8 *Data_TxBufferPtr, u8 *Data_RxBufferPtr)
{
	int transfer;
	//data buffer
	Xil_DCacheFlushRange((UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#ifdef __aarch64__
		Xil_DCacheFlushRange((UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif

	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, XAXIDMA_DEVICE_TO_DMA);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("raw transfer1 forward = %d \r\n",transfer);
	}
	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, XAXIDMA_DMA_TO_DEVICE);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("raw transfer1 back = %d \r\n",transfer);
	}
	while ((XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
//		xil_printf("raw busy1_1 = %d; busy1_2 = %d \r\n",XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA),XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE));
	}
	/* Invalidate the DestBuffer before receiving the data, in case the Data Cache is enabled */
	#ifndef __aarch64__
		Xil_DCacheInvalidateRange((UINTPTR)Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif
}

void Void_operation()
{
}
