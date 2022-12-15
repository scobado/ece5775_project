# ECE5775 Project : SpMV Accelerator Repository
This Repository is a part of ECE5775 class final project, where we accelerated the Spare-Matrix Vector Multiplication using COO format and HLS Optimization techniques that were learnt as a part of lecture classes.

Follow the step by step procedure below to reproduce the results of the whole project.

Firstly clone the Repo :
```
% git clone git@github.com:scobado/ece5775_project.git
% cd ece5775_project 
```
• project : contains C++ project to build the SpMV HLS design and synthesize
it to a hardware module. This code should be completed on ecelinux.

• zedboard: contains symbolic links to the files in the project directory required for
software execution of SpMV on CPU.

Directory Structure is as follow :
```
%tree project
project
├── COO_SpMV.cpp
├── COO_SpMV.h
├── COO_SpMV_test.cpp
├── data
├── Dense_SpMV.cpp
├── Dense_SpMV.h
├── Dense_SpMV_test.cpp
├── Makefile
├── matrix_gen.py
├── model.h
├── pagerank.cpp
├── pagerank_final.cpp
├── pagerank.h
├── pagerank_test.cpp
├── run_bitstream_dense.sh
├── run_bitstream_pagerank.sh
├── run_bitstream.sh
├── run_coo.tcl
├── run_dense.tcl
├── run_pagerank.tcl
├── timer.h
└── xillydemo.bit

%tree zedboard
zedboard
├── COO_SpMV.cpp -> ../project/COO_SpMV.cpp
├── COO_SpMV.h -> ../project/COO_SpMV.h
├── COO_SpMV_test.cpp -> ../project/COO_SpMV_test.cpp
├── data -> ../project/data
├── Dense_SpMV.cpp -> ../../ece5775_project/project/Dense_SpMV.cpp
├── Dense_SpMV.h -> ../../ece5775_project/project/Dense_SpMV.h
├── Dense_SpMV_test.cpp -> ../../ece5775_project/project/Dense_SpMV_test.cpp
├── host.cpp
├── Makefile
├── model.h -> ../project/model.h
├── pagerank.cpp -> ../project/pagerank.cpp
├── pagerank.h -> ../project/pagerank.h
├── pagerank_test.cpp -> ../project/pagerank_test.cpp
├── timer.h -> ../project/timer.h
└── xillydemo.bit -> ../project/xillydemo.bit
```

Dense_SpMV : Regular Sparse-Matrix Vector Multiplication

COO_SpMV   : Baseline - COO Format based Sparse-Matrix Vector Multiplication without optimizations (PE=1) <br>
             Xcel     - COO Format based Sparse-Matrix Vector Multiplication with optimizations    (PE=25) <br>
             
Pagerank   : Recursive call of COO_SpMV 

This project compares the performance of Dense SpMV multiplication, COO SpMV multiplication w&wo HLS optimizations and use the optimized COO SpMV recursively to perform pagerank algorithm.

# Dense SpMV Multiplication

Run Dense SpMV multiplication on ecelinux server :
```
% cd project
% make vivado_dense
% source run_bitstream_dense.sh  
creates bitstream file xillydemo.bit for dense SpMV multiplication
```
To run Dense SpMV multiplication on FPGA :
```
% ../
% zip zedboard.zip zedboard
% scp zedboard.zip netid@zhang-zedboard-XX-ece.cornell.edu:~ 
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
after logging into zedboard XX (replace XX with zedboard number ex. 01)
% unzip zedboard.zip
% mount /mnt/sd
% cd ../zedboard/xillydemo.bit /mnt/sd
% sudo reboot
Reboot is required to configure the FPGA with the mounted bitstream
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
% cd /zedboard/
% make sw_dense
This gives the performance of the Dense SpMV multiplication on ARM
% make fpga
This gives the performance of the Dense SpMV multiplication on FPGA
% exit
```
# COO_SpMV Multiplicaiton without optimizations (PE =1)

To run COO_SpMV Multiplication without optimizations on ecelinux (PE =1)
```
% cd /project
% code model.h
Update the model.h file with PE = 1 (line 8)
//8      const int PE = 1;
% code COO_SpMV.cpp
Update the inputs of the create_COO and COO_SpMV functions in the worker function (line 137,138)
//137    int nnz = create_COO(matrix_10[i], row10_1[i], col10_1[i], val10_1[i], row_nnz[i], i);
//138    COO_SpMV(row10_1[i], col10_1[i], val10_1[i], v, dest_1[i], nnz);
% make vivado_coo
% source run_bitstream.sh
creates bitstream file xillydemo.bit for COO_SpMV multiplication without optimizations
```
To run COO_SpMV multiplication without optimizations on FPGA
```
% ../
% zip zedboard.zip zedboard
% scp zedboard.zip netid@zhang-zedboard-XX-ece.cornell.edu:~ 
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
after logging into zedboard XX (replace XX with zedboard number ex. 01)
% unzip zedboard.zip
% mount /mnt/sd
% cd ../zedboard/xillydemo.bit /mnt/sd
% sudo reboot
Reboot is required to configure the FPGA with the mounted bitstream
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
% cd /zedboard/
% make sw_coo
This gives the performance of the COO_SpMV multiplication with PE=1 on ARM
% make fpga
This gives the performance of the COO_SpMV multiplication with PE=1 on FPGA
% exit
```
# COO_SpMV Multiplication with optimizations (PE =25)

To run COO_SpMV Multiplication with optimizations on ecelinux (PE =25)
```
% cd /project
% code model.h
Update the model.h file with PE = 25 (line 8)
//8     const int PE = 25;
% code COO_SpMV.cpp
Update the inputs of the create_COO and COO_SpMV functions in the worker function (line 137,138)
//137    int nnz = create_COO(matrix_10[i], row10_25[i], col10_25[i], val10_25[i], row_nnz[i], i);
//138    COO_SpMV(row10_25[i], col10_25[i], val10_25[i], v, dest_25[i], nnz);
% make vivado_coo
% source run_bitstream.sh
creates bitstream file xillydemo.bit for COO_SpMV multiplication without optimizations
```

To run COO_SpMV multiplication with optimizations on FPGA
```
% ../
% zip zedboard.zip zedboard
% scp zedboard.zip netid@zhang-zedboard-XX-ece.cornell.edu:~ 
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
after logging into zedboard XX (replace XX with zedboard number ex. 01)
% unzip zedboard.zip
% mount /mnt/sd
% cd ../zedboard/xillydemo.bit /mnt/sd
% sudo reboot
Reboot is required to configure the FPGA with the mounted bitstream
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
% cd /zedboard/
% make sw_coo
This gives the performance of the COO_SpMV multiplication with PE=25 on ARM
% make fpga
This gives the performance of the COO_SpMV multiplication with PE=25 on FPGA
% exit
```

# PageRank Algorithm

To run pagerank on ecelinux
```
% cd /project
% make vivado_pagerank
% source run_bitstream_pagerank.sh
creates bitstream file xillydemo.bit for Pagerank
```

To run pagerank on zedboard FPGA
```
% ../
% zip zedboard.zip zedboard
% scp zedboard.zip netid@zhang-zedboard-XX-ece.cornell.edu:~ 
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
after logging into zedboard XX (replace XX with zedboard number ex. 01)
% unzip zedboard.zip
% mount /mnt/sd
% cd ../zedboard/xillydemo.bit /mnt/sd
% sudo reboot
Reboot is required to configure the FPGA with the mounted bitstream
% ssh netid@zhang-zedboard-XX-ece.cornell.edu
% cd /zedboard/
% make sw_pagerank
This gives the performance of the Pagerank
% make fpga
This gives the performance of the Pagerank
% exit
```
