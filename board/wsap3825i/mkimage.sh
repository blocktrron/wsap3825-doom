#!/bin/sh

IMAGE_DIR=$1

mkimage \
	-A powerpc \
	-O linux \
	-T kernel \
	-C none \
	-e 0x2000000 \
	-a 0x2000000 \
	-n "DOOM_WS-AP3825i" \
	-d $IMAGE_DIR/simpleImage.ws-ap3825i \
	$IMAGE_DIR/wsap3825-doom-uimage.bin
