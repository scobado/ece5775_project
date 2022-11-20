// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __worker_matrix_1_1_H__
#define __worker_matrix_1_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct worker_matrix_1_1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 2500;
  static const unsigned AddressWidth = 12;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(worker_matrix_1_1_ram) {
        for (unsigned i = 0; i < 32 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[32] = "0b01000000100111001000101101101110";
        for (unsigned i = 33; i < 111 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[111] = "0b01000001000111101001101111001000";
        for (unsigned i = 112; i < 117 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[117] = "0b11000000110001110010100110001111";
        for (unsigned i = 118; i < 127 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[127] = "0b11000001000101111111110111001101";
        for (unsigned i = 128; i < 226 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[226] = "0b01000000011001111111001001010110";
        for (unsigned i = 227; i < 308 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[308] = "0b01000000011100010101100011000011";
        for (unsigned i = 309; i < 320 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[320] = "0b11000000001001011011111101010111";
        for (unsigned i = 321; i < 327 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[327] = "0b11000000100111111011101000011010";
        for (unsigned i = 328; i < 381 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[381] = "0b10111111000101100101000101001101";
        for (unsigned i = 382; i < 406 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[406] = "0b10111111001011100010100001001111";
        ram[407] = "0b10111111101001001001010001000001";
        for (unsigned i = 408; i < 537 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[537] = "0b11000000111010010000010000100010";
        for (unsigned i = 538; i < 570 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[570] = "0b11000000000110110101000111101001";
        for (unsigned i = 571; i < 623 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[623] = "0b11000000100100010111101111011000";
        for (unsigned i = 624; i < 646 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[646] = "0b01000001000010101100100000001000";
        for (unsigned i = 647; i < 673 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[673] = "0b10111111101111000001001110011101";
        for (unsigned i = 674; i < 829 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[829] = "0b01000000100011100010011000000000";
        for (unsigned i = 830; i < 871 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[871] = "0b11000000111011100111011110000101";
        for (unsigned i = 872; i < 923 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[923] = "0b00111111101111110110100111110111";
        for (unsigned i = 924; i < 932 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[932] = "0b11000001000001011101111010110011";
        for (unsigned i = 933; i < 939 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[939] = "0b00111111100010110110111000110011";
        for (unsigned i = 940; i < 952 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[952] = "0b11000000101100100000100000011101";
        for (unsigned i = 953; i < 1244 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1244] = "0b10111111101000101000011100000010";
        for (unsigned i = 1245; i < 1373 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1373] = "0b00111111010111011100110011010110";
        for (unsigned i = 1374; i < 1434 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1434] = "0b11000000101111010100101100111001";
        for (unsigned i = 1435; i < 1478 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1478] = "0b01000000101110100001100000010000";
        ram[1479] = "0b00000000000000000000000000000000";
        ram[1480] = "0b00000000000000000000000000000000";
        ram[1481] = "0b00000000000000000000000000000000";
        ram[1482] = "0b01000000000001001100110101110100";
        for (unsigned i = 1483; i < 1956 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1956] = "0b00111111011000010100101010100011";
        for (unsigned i = 1957; i < 2147 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2147] = "0b01000000101101011110001101000111";
        for (unsigned i = 2148; i < 2162 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2162] = "0b00111111101010111110010011001110";
        for (unsigned i = 2163; i < 2294 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2294] = "0b01000000001111011110101011010010";
        for (unsigned i = 2295; i < 2312 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2312] = "0b11000000100100110100100110001000";
        for (unsigned i = 2313; i < 2331 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2331] = "0b11000000011100001000100111000010";
        for (unsigned i = 2332; i < 2410 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2410] = "0b01000000100000000001010100000011";
        for (unsigned i = 2411; i < 2500 ; i = i + 1) {
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


SC_MODULE(worker_matrix_1_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 2500;
static const unsigned AddressWidth = 12;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


worker_matrix_1_1_ram* meminst;


SC_CTOR(worker_matrix_1_1) {
meminst = new worker_matrix_1_1_ram("worker_matrix_1_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~worker_matrix_1_1() {
    delete meminst;
}


};//endmodule
#endif