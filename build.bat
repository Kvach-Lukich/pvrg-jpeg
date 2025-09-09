del pvrg-jpeg.exe
del transform.o
del stream.o
del marker.o
del lexer.o
del leedct.o
del jpeg.o
del io.o
del huffman.o
del codec.o
del chendct.o

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
gcc -O3 -g jpeg.o codec.o huffman.o io.o chendct.o leedct.o lexer.o marker.o stream.o transform.o -lm -o pvrg-jpeg.exe
