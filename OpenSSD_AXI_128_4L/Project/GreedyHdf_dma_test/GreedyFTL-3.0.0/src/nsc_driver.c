//////////////////////////////////////////////////////////////////////////////////
// fmc_driver.c for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Kibin Park <kbpark@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// This file is part of Cosmos+ OpenSSD.
//
// Cosmos+ OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos+ OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos+ OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: NAND Storage Controller Driver
// File Name: nsc_driver.c
//
// Version: v1.1.0
//
// Description:
//   - low level driver for NAND storage controller
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0
//   - V2FReadPageTransferAsync needs additional input (rowAddress)
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "nsc_driver.h"

//aggiunta
#include "memory_map.h"
#include <stdio.h>
#include <string.h>
#include "xil_printf.h"

//#include "sleep.h"
//#include "xtime_l.h"
//#include <stdlib.h>

//unsigned int i=0;
//unsigned int j=0;
//unsigned int k=0;
//unsigned int l=0;
//unsigned int m=0;

//XTime tStart, tEnd;
//double  ElapsedTime;

#include "xaxidma.h"
extern XAxiDma *DMAInstance;
extern XAxiDma_Config *DMAConfig;
u32 busy1,busy2;
int transfer1,transfer2;

unsigned int __attribute__((optimize("O0"))) V2FIsControllerBusy(V2FMCRegisters* dev)
{
//		*((volatile unsigned int*)&(dev->channelBusy))= 0;
	volatile unsigned int channelBusy = *((volatile unsigned int*)&(dev->channelBusy)); //dato il while, è busy a 1

	return channelBusy;
}

void __attribute__((optimize("O0"))) V2FResetSync(V2FMCRegisters* dev, int way)
{
//	way è semplicemente il die che deve essere selezionato
	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_Reset;

	while (V2FIsControllerBusy(dev));
}

void __attribute__((optimize("O0"))) V2FSetFeaturesSync(V2FMCRegisters* dev, int way, unsigned int feature0x02, unsigned int feature0x10, unsigned int feature0x01, unsigned int payLoadAddr)
{
//	scrive nei registri per settare qualcosa per la sincronizzazione

	unsigned int* payload = (unsigned int*)payLoadAddr;
	payload[0] = feature0x02;
	payload[1] = feature0x10;
	payload[2] = feature0x01;
	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->userData)) = (unsigned int)payload;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_SetFeatures;

	while (V2FIsControllerBusy(dev));
}

//void __attribute__((optimize("O0"))) V2FGetFeaturesSync(V2FMCRegisters* dev, int way, unsigned int* feature0x01, unsigned int* feature0x02, unsigned int* feature0x10, unsigned int* feature0x30)
//{
//	volatile unsigned int buffer[4] = {0};
//	volatile unsigned int completion = 0;
//	*((volatile unsigned int*)&(dev->waySelection)) = way;
//	*((volatile unsigned int*)&(dev->userData)) = (unsigned int)buffer;
//	*((volatile unsigned int*)&(dev->completionAddress)) = (unsigned int)&completion;
//	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_GetFeatures;
//	while (V2FIsControllerBusy(dev));
//	while (!(completion & 1));
//	*feature0x01 = buffer[0];
//	*feature0x02 = buffer[1];
//	*feature0x10 = buffer[2];
//	*feature0x30 = buffer[3];
//}

void __attribute__((optimize("O0"))) V2FReadPageTriggerAsync(V2FMCRegisters* dev, int way, unsigned int rowAddress)
{
//	xil_printf("V2FReadPageTriggerAsync[%d] \r\n",i);
//	i++;

	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->rowAddress)) = rowAddress;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_ReadPageTrigger;

//	di regola questa funzione triggera la lettura nella SSD e salva nei registri dell'NSC. Cosa risponde?
}

void __attribute__((optimize("O0"))) V2FReadPageTransferAsync(V2FMCRegisters* dev, int way, void* pageDataBuffer, void* spareDataBuffer, unsigned int* errorInformation, unsigned int* completion, unsigned int rowAddress)
{
//	xil_printf("V2FReadPageTransferAsync[%d] \r\n",j);
//	j++;

	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->dataAddress)) = (unsigned int)pageDataBuffer;
	*((volatile unsigned int*)&(dev->spareAddress)) = (unsigned int)spareDataBuffer;
	*((volatile unsigned int*)&(dev->errorCountAddress)) = (unsigned int)errorInformation;
	*((volatile unsigned int*)&(dev->completionAddress)) = (unsigned int)completion;
	*((volatile unsigned int*)&(dev->rowAddress)) = rowAddress;
	*completion = 0;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_ReadPageTransfer;

//	aggiunta
//	memcpy((pageDataBuffer),&MemSpace[rowAddress*BYTES_PER_NAND_ROW],BYTES_PER_DATA_REGION_OF_NAND_ROW);
	transfer1 = XAxiDma_SimpleTransfer(DMAInstance,(u32) pageDataBuffer, BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DEVICE_TO_DMA);
	if (transfer1 != XST_SUCCESS)
	{
		xil_printf("transfer1 = %d \r\n",transfer1);
	}
	busy1 = XAxiDma_Busy(DMAInstance, XAXIDMA_DEVICE_TO_DMA);
	while (busy1 != TRUE)
	{
		xil_printf("busy1 \r\n");
	}
	transfer2 = XAxiDma_SimpleTransfer(DMAInstance,(u32) &MemSpace[rowAddress*BYTES_PER_NAND_ROW], BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DMA_TO_DEVICE);
	if (transfer1 != XST_SUCCESS)
	{
		xil_printf("transfer2 = %d \r\n",transfer2);
	}
	busy2 = XAxiDma_Busy(DMAInstance, XAXIDMA_DMA_TO_DEVICE);
	while (busy2 != TRUE)
	{
		xil_printf("busy2 \r\n");
	}
	memcpy((spareDataBuffer),&MemSpace[rowAddress*BYTES_PER_NAND_ROW+16384],BYTES_PER_SPARE_REGION_OF_NAND_ROW);

	*completion = 0x1;
	*errorInformation = 0x11000000;
	*(errorInformation +1) = 0xFFFFFFFF;
}

void __attribute__((optimize("O0"))) V2FReadPageTransferRawAsync(V2FMCRegisters* dev, int way, void* pageDataBuffer, unsigned int* completion)
{
//	xil_printf("BAD: V2FReadPageTransferRawAsync[%d] \r\n",k);
//	k++;

	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->dataAddress)) = (unsigned int)pageDataBuffer;
	*((volatile unsigned int*)&(dev->completionAddress)) = (unsigned int)completion;
	*completion = 0;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_ReadPageTransferRaw;

//	aggiunta

	memcpy((pageDataBuffer),&MemSpace,BYTES_PER_DATA_REGION_OF_NAND_ROW);

	*completion = 0x1;
}


void __attribute__((optimize("O0"))) V2FProgramPageAsync(V2FMCRegisters* dev, int way, unsigned int rowAddress, void* pageDataBuffer, void* spareDataBuffer)
{
//	if (l==0)
//	{
//		XTime_GetTime(&tStart);
//		xil_printf("V2FProgramPageAsync[%d] \r\n",l);
//		l++;
//		XTime_GetTime(&tEnd);
//		ElapsedTime = 1.0 * (tEnd - tStart) * 1000000 / (COUNTS_PER_SECOND);
//		printf(" Output took %.f us\n",ElapsedTime);
//	}
//	xil_printf("V2FProgramPageAsync[%d] \r\n",l);
//	l++;
//	usleep(9);

	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->rowAddress)) = rowAddress;
	*((volatile unsigned int*)&(dev->dataAddress)) = (unsigned int)pageDataBuffer;
	*((volatile unsigned int*)&(dev->spareAddress)) = (unsigned int)spareDataBuffer;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_ProgramPage;
//	xil_printf("Program[%d] rowAddress: %d \r\n",l,rowAddress);
//	l++;
//	aggiunta
	memcpy(&MemSpace[rowAddress*BYTES_PER_NAND_ROW],(pageDataBuffer),BYTES_PER_DATA_REGION_OF_NAND_ROW); //program PAGE. pari a BYTES_PER_DATA_REGION_OF_NAND_ROW. Per lo spare region è 256, non 1664
	memcpy(&MemSpace[rowAddress*BYTES_PER_NAND_ROW+16384],(spareDataBuffer),BYTES_PER_SPARE_REGION_OF_PAGE); //rowAddress è il semplice numero di blocco (da 0 a 4095). Necessario moltiplicare per (16384+1664)
}

void __attribute__((optimize("O0"))) V2FEraseBlockAsync(V2FMCRegisters* dev, int way, unsigned int rowAddress)
{

	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->rowAddress)) = rowAddress;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_BlockErase;

//	aggiunta

	memset(&MemSpace[rowAddress*BYTES_PER_NAND_ROW],0xff,(BYTES_PER_NAND_ROW * ROWS_PER_SLC_BLOCK));
//	memset(&MemSpace,0xff,(BYTES_PER_NAND_ROW * ROWS_PER_SLC_BLOCK)); //erase BLOCK. elimino un blocco intero con rowAdress che dovrebbe essere l'indirizzo iniziale. Nel mio caso, una riga
}

void __attribute__((optimize("O0"))) V2FStatusCheckAsync(V2FMCRegisters* dev, int way, unsigned int* statusReport)
{
//	if (m==256)
//		m=0;
//	xil_printf("V2FStatusCheckAsync[%d] \r\n",m);
//	m++;

	*((volatile unsigned int*)&(dev->waySelection)) = way;
	*((volatile unsigned int*)&(dev->completionAddress)) = (unsigned int)statusReport;
//	*statusReport = 0;
	*((volatile unsigned int*)&(dev->cmdSelect)) = V2FCommand_StatusCheck;

//	setto a 0x1C1C1 per segnare che sia completo (originariamente solo C1, poi il dottorando ha corretto)
	*statusReport = 0x1C1C1;
}

//unsigned int __attribute__((optimize("O0"))) V2FStatusCheckSync(V2FMCRegisters* dev, int way)
//{
//	volatile unsigned int status;
//	V2FStatusCheckAsync(dev, way, (unsigned int*)&status);
//	while (!(status & 1));
//	return (status >> 1);
//}

unsigned int __attribute__((optimize("O0"))) V2FReadyBusyAsync(V2FMCRegisters* dev)
{
//	*((volatile unsigned int*)&(dev->readyBusy))=1;
	volatile unsigned int readyBusy = dev->readyBusy;

	return readyBusy;
}



