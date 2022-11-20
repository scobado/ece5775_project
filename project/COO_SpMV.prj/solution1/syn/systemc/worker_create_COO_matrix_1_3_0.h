// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __worker_create_COO_matrix_1_3_0_H__
#define __worker_create_COO_matrix_1_3_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct worker_create_COO_matrix_1_3_0_ram : public sc_core::sc_module {

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


   SC_CTOR(worker_create_COO_matrix_1_3_0_ram) {
        for (unsigned i = 0; i < 230 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[230] = "0b11000001000101110110101000110010";
        for (unsigned i = 231; i < 370 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[370] = "0b01000001000110111001100100101010";
        for (unsigned i = 371; i < 521 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[521] = "0b11000000100100101111110001001100";
        for (unsigned i = 522; i < 625 ; i = i + 1) {
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


SC_MODULE(worker_create_COO_matrix_1_3_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 625;
static const unsigned AddressWidth = 10;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


worker_create_COO_matrix_1_3_0_ram* meminst;


SC_CTOR(worker_create_COO_matrix_1_3_0) {
meminst = new worker_create_COO_matrix_1_3_0_ram("worker_create_COO_matrix_1_3_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~worker_create_COO_matrix_1_3_0() {
    delete meminst;
}


};//endmodule
#endif