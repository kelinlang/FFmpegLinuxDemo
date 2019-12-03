#include <stdint.h>
#include <stdio.h>
#include "VideoTransCode.h"
/* Called from the main */
int main(int argc, char** argv) {

	IOFiles file;
	file.inputName = "/home/kelinlang/workspace/testFiles/E1.mp4";
	file.outputName = "/home/kelinlang/workspace/testFiles/E1.ts";
	printf("doTransCode start\n");

	doTransCode(&file);


	printf("doTransCode finish\n");
}