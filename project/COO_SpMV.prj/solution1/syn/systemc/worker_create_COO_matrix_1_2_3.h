// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __worker_create_COO_matrix_1_2_3_H__
#define __worker_create_COO_matrix_1_2_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct worker_create_COO_matrix_1_2_3_ram : public sc_core::sc_module {

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


   SC_CTOR(worker_create_COO_matrix_1_2_3_ram) {
        for (unsigned i = 0; i < 41 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[41] = "0b00111111101100101101110010101101";
        for (unsigned i = 42; i < 185 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[185] = "0b11000001000110100110100010001111";
        for (unsigned i = 186; i < 206 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[206] = "0b11000001000100010001110001001000";
        for (unsigned i = 207; i < 255 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[255] = "0b11000000101100110101110011101000";
        for (unsigned i = 256; i < 589 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[589] = "0b10111110010001111111001010001101";
        for (unsigned i = 590; i < 625 ; i = i + 1) {
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


SC_MODULE(worker_create_COO_matrix_1_2_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 625;
static const unsigned AddressWidth = 10;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


worker_create_COO_matrix_1_2_3_ram* meminst;


SC_CTOR(worker_create_COO_matrix_1_2_3) {
meminst = new worker_create_COO_matrix_1_2_3_ram("worker_create_COO_matrix_1_2_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~worker_create_COO_matrix_1_2_3() {
    delete meminst;
}


};//endmodule
#endif