//////////////////////////////////////////////////////////////////////////////////
// nvme_main.c for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//				  Kibin Park <kbpark@enc.hanyang.ac.kr>
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
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//			 Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//			 Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: NVMe Main
// File Name: nvme_main.c
//
// Version: v1.2.0
//
// Description:
//   - initializes FTL and NAND
//   - handles NVMe controller
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.2.0
//   - header file for buffer is changed from "ia_lru_buffer.h" to "lru_buffer.h"
//   - Low level scheduler execution is allowed when there is no i/o command
//
// * v1.1.0
//   - DMA status initialization is added
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////
#include "xil_printf.h"
#include "debug.h"
#include "io_access.h"

#include "nvme.h"
#include "host_lld.h"
#include "nvme_main.h"
#include "nvme_admin_cmd.h"
#include "nvme_io_cmd.h"

#include "../memory_map.h"
#include "xuartps_hw.h"

volatile NVME_CONTEXT g_nvmeTask;

#include "xaxidma.h"
extern XAxiDma *DMAInstance;
extern XAxiDma_Config *DMAConfig;

void nvme_main()
{
//	u32 busy1,busy2;
//	int transfer1,transfer2,i,j;
	unsigned int exeLlr;
	char c = 0;
	xil_printf("!!! Wait until FTL reset complete !!! \r\n");

	InitFTL();

	xil_printf("\r\nFTL reset complete!!! \r\n");
	xil_printf("Turn on the host PC \r\n");

	while(1)
	{

		exeLlr = 1;
		if(g_nvmeTask.status == NVME_TASK_WAIT_CC_EN)
		{
			unsigned int ccEn;
			ccEn = check_nvme_cc_en();
			if(ccEn == 1)
			{
				set_nvme_admin_queue(1, 1, 1);
				set_nvme_csts_rdy(1);
				g_nvmeTask.status = NVME_TASK_RUNNING;
				xil_printf("\r\nNVMe ready!!!\r\n");
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_RUNNING)
		{
			NVME_COMMAND nvmeCmd;
			unsigned int cmdValid;
			cmdValid = get_nvme_cmd(&nvmeCmd.qID, &nvmeCmd.cmdSlotTag, &nvmeCmd.cmdSeqNum, nvmeCmd.cmdDword);

			if(cmdValid == 1)
			{
				if(nvmeCmd.qID == 0)
				{
//					xil_printf("\r\n handle_nvme_admin_cmd \r\n");
					handle_nvme_admin_cmd(&nvmeCmd);
				}
				else
				{
//					xil_printf("\r\n handle_nvme_io_cmd \r\n");
					handle_nvme_io_cmd(&nvmeCmd);
					ReqTransSliceToLowLevel();
					exeLlr=0;
				}
			}
//			aggiunta per write e read da keyboard
			if(XUartPs_IsReceiveData(STDIN_BASEADDRESS))
			{
				c = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
				switch(c)
				{//shift di 64 per tutte le operazioni (indirizzo base = 0x40h)
//					case 'w': //scrivo nelle locazioni di memoria 10000 per 16kB
//					{
//						for (i=0;i<128;i++)
//						{
//							for (j=0; j < 128; j++)
//							MemSpace[10000 + 128*i + j] = j;
//						}
//						transfer1 = XAxiDma_SimpleTransfer(DMAInstance,(u32) &MemSpace[10000], BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DEVICE_TO_DMA);
//						if (transfer1 != XST_SUCCESS)
//						{
//							xil_printf("transfer1 = %d \r\n",transfer1);
//						}
//						busy1 = XAxiDma_Busy(DMAInstance, XAXIDMA_DEVICE_TO_DMA);
//						while (busy1 != TRUE)
//						{
//							xil_printf("busy1 \r\n");
//						}
//						transfer2 = XAxiDma_SimpleTransfer(DMAInstance,(u32) &MemSpace[30000], BYTES_PER_DATA_REGION_OF_NAND_ROW, (int) XAXIDMA_DMA_TO_DEVICE);
//						if (transfer1 != XST_SUCCESS)
//						{
//							xil_printf("transfer2 = %d \r\n",transfer2);
//						}
//						busy2 = XAxiDma_Busy(DMAInstance, XAXIDMA_DMA_TO_DEVICE);
//						while (busy2 != TRUE)
//						{
//							xil_printf("busy2 \r\n");
//						}
//						xil_printf("Write Done \r\n");
//						break;
//					}
//					case 'r': //read delle prime 256 posizioni sia in 10000 che 30000
//					{
//						for (i=0; i<128; i++)
//						{
//							xil_printf("MemSpace[%d]= %X \r\n ",(10000 + i*128),MemSpace[10000 + i*128]);
//						}
//						for (i=0; i<128; i++)
//						{
//							xil_printf("MemSpace[%d]= %X \r\n ",(30000 + i*128),MemSpace[30000 + i*128]);
//						}
//						break;
//					}
					case 'p': //read dei counter delle fifo/funzioni
					{
						xil_printf("\r\n freeReqQ headReq: %X; tailReq: %X; reqCnt: %d \r\n",freeReqQ.headReq,freeReqQ.tailReq,freeReqQ.reqCnt);
						xil_printf("\r\n sliceReqQ headReq: %X; tailReq: %X; reqCnt: %d \r\n",sliceReqQ.headReq,sliceReqQ.tailReq,sliceReqQ.reqCnt);
						xil_printf("\r\n nvmeDmaReqQ headReq: %X; tailReq: %X; reqCnt: %d \r\n",nvmeDmaReqQ.headReq,nvmeDmaReqQ.tailReq,nvmeDmaReqQ.reqCnt);
						xil_printf("\r\n blockedByBufDepReqQ headReq: %X; tailReq: %X; reqCnt: %d \r\n",blockedByBufDepReqQ.headReq,blockedByBufDepReqQ.tailReq,blockedByBufDepReqQ.reqCnt);
						xil_printf("\r\n nandReqQ[0][0] headReq: %X; tailReq: %X; reqCnt: %d \r\n",nandReqQ[0][0].headReq,nandReqQ[0][0].tailReq,nandReqQ[0][0].reqCnt);
						xil_printf("\r\n blockedByRowAddrDepReqQ[0][0] headReq: %X; tailReq: %X; reqCnt: %d \r\n",blockedByRowAddrDepReqQ[0][0].headReq,blockedByRowAddrDepReqQ[0][0].tailReq,blockedByRowAddrDepReqQ[0][0].reqCnt);
					}
//					case 'b': //read dei counter delle fifo/funzioni
//					{
//						xil_printf("\r\n freeReqQ headReq: %X; tailReq: %X; reqCnt: %d \r\n",freeReqQ.headReq,freeReqQ.tailReq,freeReqQ.reqCnt);
//					}
					default:
						break;
				}
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_SHUTDOWN)
		{
			NVME_STATUS_REG nvmeReg;
			nvmeReg.dword = IO_READ32(NVME_STATUS_REG_ADDR);
			if(nvmeReg.ccShn != 0)
			{
				unsigned int qID;
				set_nvme_csts_shst(1);

				for(qID = 0; qID < 8; qID++)
				{
					set_io_cq(qID, 0, 0, 0, 0, 0, 0);
					set_io_sq(qID, 0, 0, 0, 0, 0);
				}

				set_nvme_admin_queue(0, 0, 0);
				g_nvmeTask.cacheEn = 0;
				set_nvme_csts_shst(2);
				g_nvmeTask.status = NVME_TASK_WAIT_RESET;

				//flush grown bad block info
				UpdateBadBlockTableForGrownBadBlock(RESERVED_DATA_BUFFER_BASE_ADDR);

				xil_printf("\r\nNVMe shutdown!!!\r\n");
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_WAIT_RESET)
		{
			unsigned int ccEn;
			ccEn = check_nvme_cc_en();
			if(ccEn == 0)
			{
				g_nvmeTask.cacheEn = 0;
				set_nvme_csts_shst(0);
				set_nvme_csts_rdy(0);
				g_nvmeTask.status = NVME_TASK_IDLE;
				xil_printf("\r\nNVMe disable!!!\r\n");
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_RESET)
		{
			unsigned int qID;
			for(qID = 0; qID < 8; qID++)
			{
				set_io_cq(qID, 0, 0, 0, 0, 0, 0);
				set_io_sq(qID, 0, 0, 0, 0, 0);
			}
			g_nvmeTask.cacheEn = 0;
			set_nvme_admin_queue(0, 0, 0);
			set_nvme_csts_shst(0);
			set_nvme_csts_rdy(0);
			g_nvmeTask.status = NVME_TASK_IDLE;

			xil_printf("\r\nNVMe reset!!!\r\n");
		}

		if(exeLlr && ((nvmeDmaReqQ.headReq != REQ_SLOT_TAG_NONE) || notCompletedNandReqCnt || blockedReqCnt))
		{
			CheckDoneNvmeDmaReq();
			SchedulingNandReq();
		}
	}
}


