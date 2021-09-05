#!/bin/sh
#Throwing in OpenMP, we don't need it, to see if it will compile.

gcc src/docker-tutorial-hello-project.c -o hello3 -fopenmp  -Wall -lgomp 
