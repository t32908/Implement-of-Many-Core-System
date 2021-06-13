First copy the file in the platform folder to basic-acc  
  $ cp -r riscv-vp-acc/riscv-vp/vp/src/platform/* $EE6470/platform  
  $ cd riscv-vp/vp/build  
  $ cmake ..  
  $ make install  
Second copy the folder of test-hw7 to ~/riscv-vp/sw  
use CMakelists to compile in riscv-vp  
  $ cp -r riscv-vp-acc/riscv-vp/sw/* $EE6470/riscv-vp/sw  
  $ cd riscv-vp/sw  
  $ cd test-hw7
  $ make  
  $ make sim  
  
warning : In Makefile the path of sim must modify 

