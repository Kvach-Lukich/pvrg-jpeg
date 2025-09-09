#!/bin/bash
rm pvrg-jpeg
rm transform.o
rm stream.o
rm marker.o
rm lexer.o
rm leedct.o
rm jpeg.o
rm io.o
rm huffman.o
rm codec.o
rm chendct.o

gcc -O3 -g -c jpeg.c
gcc -O3 -g -c codec.c
gcc -O3 -g -c huffman.c
gcc -O3 -g -c io.c
gcc -O3 -g -c chendct.c
gcc -O3 -g -c leedct.c
gcc -O3 -g -c marker.c
gcc -O3 -g -c stream.c
gcc -O3 -g -c transform.c
gcc -O3 -g -c lexer.c
gcc -O3 -g jpeg.o codec.o huffman.o io.o chendct.o leedct.o lexer.o marker.o stream.o transform.o -lm -o pvrg-jpeg
