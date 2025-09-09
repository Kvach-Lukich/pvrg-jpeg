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
