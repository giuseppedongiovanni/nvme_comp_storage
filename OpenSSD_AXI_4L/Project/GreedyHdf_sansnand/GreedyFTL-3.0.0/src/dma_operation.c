/*
 * dma_operation.c

 *
 *  Created on: Mar 24, 2020
 *      Author: giuseppezynq
 */
#include "xaxidma.h"
#include "memory_map.h"

void DMATransfer(XAxiDma *InstancePtr, u8 *Data_TxBufferPtr, u8 *Data_RxBufferPtr, u8 *Spare_TxBufferPtr, u8 *Spare_RxBufferPtr)
{
//	xil_printf("dma \r\n");
	int transfer;
	//data buffer
	Xil_DCacheFlushRange((UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#ifdef __aarch64__
		Xil_DCacheFlushRange((UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif

	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DEVICE_TO_DMA);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer1 forward = %d \r\n",transfer);
	}
	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DMA_TO_DEVICE);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer1 back = %d \r\n",transfer);
	}
	while ((XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
//		xil_printf("busy transfer1 \r\n");
	}
	/* Invalidate the DestBuffer before receiving the data, in case the Data Cache is enabled */
	#ifndef __aarch64__
		Xil_DCacheInvalidateRange((UINTPTR)Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif

	///////////////////////////////////////////////////////////////////////////////////////////////
	//spare buffer
	Xil_DCacheFlushRange((UINTPTR) Spare_TxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE);
	#ifdef __aarch64__
		Xil_DCacheFlushRange((UINTPTR) Spare_RxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE);
	#endif

	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Spare_RxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE, (int) XAXIDMA_DEVICE_TO_DMA);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer2 forward = %d \r\n",transfer);
	}
	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Spare_TxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE, (int) XAXIDMA_DMA_TO_DEVICE);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer2 back = %d \r\n",transfer);
	}
	while ((XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
//		xil_printf("busy transfer2 \r\n");
	}

	#ifndef __aarch64__
		Xil_DCacheInvalidateRange((UINTPTR)Spare_RxBufferPtr, BYTES_PER_SPARE_REGION_OF_PAGE);
	#endif
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

	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DEVICE_TO_DMA);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer1 forward = %d \r\n",transfer);
	}
	transfer = XAxiDma_SimpleTransfer(InstancePtr,(UINTPTR) Data_TxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DMA_TO_DEVICE);
	if (transfer != XST_SUCCESS)
	{
		xil_printf("transfer1 back = %d \r\n",transfer);
	}
	while ((XAxiDma_Busy(InstancePtr,XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(InstancePtr,XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
		xil_printf("busy transfer1 \r\n");
	}
	/* Invalidate the DestBuffer before receiving the data, in case the Data Cache is enabled */
	#ifndef __aarch64__
		Xil_DCacheInvalidateRange((UINTPTR)Data_RxBufferPtr, BYTES_PER_DATA_REGION_OF_NAND_ROW);
	#endif
}

void Void_operation()
{
}
