// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __worker_create_COO_matrix_1_3_2_H__
#define __worker_create_COO_matrix_1_3_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct worker_create_COO_matrix_1_3_2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 625;
  static const unsigned AddressWidth = 10;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(worker_create_COO_matrix_1_3_2_ram) {
        for (unsigned i = 0; i < 344 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[344] = "0b11000000010110111011111111110101";
        for (unsigned i = 345; i < 358 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[358] = "0b00111111011110011011001010001010";
        for (unsigned i = 359; i < 395 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[395] = "0b10111111110100000010101110011101";
        for (unsigned i = 396; i < 402 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[402] = "0b00111101100001010011011011010110";
        for (unsigned i = 403; i < 530 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[530] = "0b11000000101100010111000100001100";
        for (unsigned i = 531; i < 554 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[554] = "0b01000000110000011001000110111011";
        for (unsigned i = 555; i < 625 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(worker_create_COO_matrix_1_3_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 625;
static const unsigned AddressWidth = 10;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


worker_create_COO_matrix_1_3_2_ram* meminst;


SC_CTOR(worker_create_COO_matrix_1_3_2) {
meminst = new worker_create_COO_matrix_1_3_2_ram("worker_create_COO_matrix_1_3_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~worker_create_COO_matrix_1_3_2() {
    delete meminst;
}


};//endmodule
#endif