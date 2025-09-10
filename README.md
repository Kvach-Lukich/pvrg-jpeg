# PVRG-JPEG Lossless Encoder Fork

This is a fork of the PVRG JPEG lossless encoder designed to save **Bayer images** in the same format as **Canon CR2 photos**.  

The original code includes all Debian patches for **x64 architecture support**, with additional conditions added for compilation on **Windows (TDM-GCC-64)**.  

In encoder mode, a new parameter `-e <number_of_components>` has been added, allowing **pipe-based operation**. Both components are fed into a single input stream, producing a ready-to-use JPEG on output.

---

## Building

### Windows

1. Install **TDM-GCC**: [https://jmeubank.github.io/tdm-gcc/download/](https://jmeubank.github.io/tdm-gcc/download/)  
2. Run `build.bat`

### Linux / Debian / Nix

1. Install **GCC**:
   ```bash
   sudo apt install build-essential
2. Run `build.sh`

Example to use:
```bash
prepared_data | pvrg_jpeg -e 2 -iw 2640 -ih 3528 -k 1 -p 14 -ci 1 component1 -ci 2 component2 >output.jpeg
```
prepared_data component 1 R & G1 lines of Bayer data + component 2 G2 & B lines...  
-e 2 enable stdin out mode for 2 components  
-iw 2640 half of Bayer width data 5280  
-ih 3528 Bayer height  
-k 1 lossless  
-p 14 bits (for canon 14 bit matrix)  
-ci 1 component1 Component number and file name for backward compatibility with file mode  
