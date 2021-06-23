First copy the file in the platform folder to basic-acc  
  $ cp -r riscv-vp-acc/riscv-vp/vp/src/platform/* $EE6470/platform  
  $ cd riscv-vp/vp/build  
  $ cmake ..  
  $ make install  
Second copy the folder of final_project to ~/riscv-vp/sw  
use CMakelists to compile in riscv-vp  
  $ cp -r riscv-vp-acc/riscv-vp/sw/* $EE6470/riscv-vp/sw  
  $ cd riscv-vp/sw  
  $ cd final_project
  $ make  
  $ make sim  
  
warning : In Makefile the path of sim must modify 

