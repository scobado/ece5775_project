// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __worker_create_COO_matrix_1_2_2_H__
#define __worker_create_COO_matrix_1_2_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct worker_create_COO_matrix_1_2_2_ram : public sc_core::sc_module {

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


   SC_CTOR(worker_create_COO_matrix_1_2_2_ram) {
        for (unsigned i = 0; i < 21 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[21] = "0b01000001000110111100000111011100";
        for (unsigned i = 22; i < 113 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[113] = "0b00111111111100000100110110110101";
        for (unsigned i = 114; i < 179 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[179] = "0b11000000100011101000100101000110";
        for (unsigned i = 180; i < 261 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[261] = "0b11000000110100101001111111011111";
        for (unsigned i = 262; i < 387 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[387] = "0b11000000111010010001001000001000";
        for (unsigned i = 388; i < 440 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[440] = "0b10111111100011011011000011110110";
        for (unsigned i = 441; i < 569 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[569] = "0b11000000111010100100111111110101";
        for (unsigned i = 570; i < 598 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[598] = "0b10111111000100011100001011100110";
        for (unsigned i = 599; i < 625 ; i = i + 1) {
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


SC_MODULE(worker_create_COO_matrix_1_2_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 625;
static const unsigned AddressWidth = 10;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


worker_create_COO_matrix_1_2_2_ram* meminst;


SC_CTOR(worker_create_COO_matrix_1_2_2) {
meminst = new worker_create_COO_matrix_1_2_2_ram("worker_create_COO_matrix_1_2_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~worker_create_COO_matrix_1_2_2() {
    delete meminst;
}


};//endmodule
#endif