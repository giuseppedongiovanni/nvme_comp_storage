#include <stdio.h>
#include <string.h>

#include <time.h>
#include <stdint.h>	/* for uint64 definition */
#include <stdio.h>
#include <stdlib.h>

#define BILLION 1000000000L


int main () {
   int i;
   struct timespec start, end,res;
   char *buffer = (char*) malloc(4096);
   uint64_t time_vector1[64];
   FILE *fp;
   size_t result;
   uint64_t resolution;

   /* Open file for reading */
   if(buffer==NULL)
   {
    printf("buffer error");
    return(0);
   }
   	clock_getres(CLOCK_MONOTONIC, &res);
	clock_gettime(CLOCK_MONOTONIC, &start);
	clock_gettime(CLOCK_MONOTONIC, &end);	/* mark the end time */
	resolution = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
	printf("getres:%10ld.%09ld s; diff res: %ld ns \r\n",(long) res.tv_sec,res.tv_nsec,resolution);

   for(i=0; i<64;i++)
   {
	clock_gettime(CLOCK_MONOTONIC, &start);	/* mark start time */
	fp = fopen("/dev/nvme0n1", "rb");
	if(fp==NULL)
	{
	  printf("FILE error");
	  return(0);
	}
	result = fread(buffer, 1, 4096, fp);
	fclose(fp);
	clock_gettime(CLOCK_MONOTONIC, &end);	/* mark the end time */
	time_vector1[i] = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
	if(result!=4096)
	{	
		printf("size=%ld \r\n",result);
   	}
   }
   
   for (i=0;i < 64; i++)
   {
     printf("%d: %llu ns \r\n",i,(long long unsigned int)time_vector1[i]);
   }
   return(0);
}

