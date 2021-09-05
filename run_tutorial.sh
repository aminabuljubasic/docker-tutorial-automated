#!/bin/sh
#Sanity check
echo $DO_DEMO

if [ "$DO_DEMO" = "1" ] 
then
   # need to copy to $VAR_DIR		
   cp  /docker-tutorial-hello-amina/demo_files/read.txt /write_directory/read.txt
fi

./docker-tutorial-hello-amina/hello3 $VAR_DIR $VAR1 $VAR2 $VAR3
