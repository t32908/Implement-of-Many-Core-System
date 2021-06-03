First copy the file in the platform folder to basic-acc  
  $ cp -r riscv-vp-acc/riscv-vp/vp/src/platform/* $EE6470/riscv-vp/vp/src/platform  
  $ cd riscv-vp/vp/build  
  $ cmake ..  
  $ make install  
Second copy the folder of basic-gaussian to ~/riscv-vp/sw  
use CMakelists to compile in riscv-vp  
  $ cd riscv-vp/sw  
  $ cd basic-gaussian  
  $ cd make  
  $ make sim  
  
warning : In Makefile the path of sim must modify 

