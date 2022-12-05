// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __worker_COO_SpMV_0_vector_H__
#define __worker_COO_SpMV_0_vector_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct worker_COO_SpMV_0_vector_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 100;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(worker_COO_SpMV_0_vector_ram) {
        ram[0] = "0b01000001000111110101101000000110";
        ram[1] = "0b11000000001100101011100100111110";
        ram[2] = "0b11000000101001000001001000111100";
        ram[3] = "0b01000000011111110011100011101110";
        ram[4] = "0b00111101011100011100001100000111";
        ram[5] = "0b11000001000011000110010000100011";
        ram[6] = "0b11000000101001000111010111011101";
        ram[7] = "0b01000000100001001010011110011101";
        ram[8] = "0b01000000101001111101011111101101";
        ram[9] = "0b00111111001000100000011110111010";
        ram[10] = "0b11000000000001000111111010101100";
        ram[11] = "0b11000000101111111111100000011111";
        ram[12] = "0b01000000100101111100010000110001";
        ram[13] = "0b00111111011111010101000010110111";
        ram[14] = "0b11000000111000010100110011000011";
        ram[15] = "0b11000000101001001101001000001111";
        ram[16] = "0b11000000110010001010000001000111";
        ram[17] = "0b11000001000111010011110001011011";
        ram[18] = "0b11000000011100001111011100110111";
        ram[19] = "0b01000000010100101100111001000000";
        ram[20] = "0b01000001000110101101111001110001";
        ram[21] = "0b01000000111101101011101001001000";
        ram[22] = "0b01000000100001110011110000000100";
        ram[23] = "0b11000000111000011101011010010101";
        ram[24] = "0b01000001000000101001011011001011";
        ram[25] = "0b01000001000100110000111000101011";
        ram[26] = "0b01000000101110100010011101110101";
        ram[27] = "0b11000001000110010100100010000010";
        ram[28] = "0b11000000001100010101010000110011";
        ram[29] = "0b10111111101101000110011011000111";
        ram[30] = "0b10111111111011011000001101101011";
        ram[31] = "0b01000000100100110000011100110011";
        ram[32] = "0b11000000110111100111110011111101";
        ram[33] = "0b01000000100001111011111110101100";
        ram[34] = "0b10111111101010100011001111010110";
        ram[35] = "0b11000000100000101110010110110011";
        ram[36] = "0b11000001000111010010111100011011";
        ram[37] = "0b01000000111110010111110100001010";
        ram[38] = "0b11000001000110010100100100110011";
        ram[39] = "0b00111110100111101110000010110010";
        ram[40] = "0b11000000101111000111110100001001";
        ram[41] = "0b11000001000011110100111101001000";
        ram[42] = "0b01000000110111001111100101011000";
        ram[43] = "0b01000000010100010110110010110011";
        ram[44] = "0b11000001000101101011100111101100";
        ram[45] = "0b01000000111111010101101001011100";
        ram[46] = "0b00111111110111110000100111011000";
        ram[47] = "0b11000000001010101100101100011000";
        ram[48] = "0b11000000000101101111000000100001";
        ram[49] = "0b01000001000101011011011111010111";
        ram[50] = "0b11000000100010111111000100011010";
        ram[51] = "0b10111110110000011110010000110000";
        ram[52] = "0b00111111100000011100000011010100";
        ram[53] = "0b11000000010110001011000010101111";
        ram[54] = "0b11000001000111011101100000001011";
        ram[55] = "0b11000001000011100010100001111001";
        ram[56] = "0b01000000111110100101000000011000";
        ram[57] = "0b01000000110011111001100000011000";
        ram[58] = "0b10111101111110000010010110100100";
        ram[59] = "0b11000000000101010100000111100101";
        ram[60] = "0b00111101001111010000100101011010";
        ram[61] = "0b11000000101100110010110010110000";
        ram[62] = "0b01000000000100011001101111111101";
        ram[63] = "0b11000000101111111101110100010110";
        ram[64] = "0b01000000011010010011111111011101";
        ram[65] = "0b11000000100110011110110111111011";
        ram[66] = "0b00111111100110100011011011111110";
        ram[67] = "0b11000000101000000111011101001110";
        ram[68] = "0b10111111110100100001011000011000";
        ram[69] = "0b11000000010101000111001101101111";
        ram[70] = "0b00111111001101000101110110000101";
        ram[71] = "0b00111110100101110011011101000001";
        ram[72] = "0b11000000111001001011001111001100";
        ram[73] = "0b01000000000100100101111001010011";
        ram[74] = "0b10111111111010110111100001000000";
        ram[75] = "0b00111111100001001100010101011010";
        ram[76] = "0b11000001000011111101110100111101";
        ram[77] = "0b01000000001010011100000101101010";
        ram[78] = "0b00111111101100000100100110110101";
        ram[79] = "0b11000001000001100101101001100101";
        ram[80] = "0b01000001000011101100000100111010";
        ram[81] = "0b01000000100010111111111000110010";
        ram[82] = "0b11000000110110111011011100111000";
        ram[83] = "0b00111110100111000111011100111010";
        ram[84] = "0b11000000000100100110010100101000";
        ram[85] = "0b01000000101110001000100010000011";
        ram[86] = "0b11000000001000111010101111101000";
        ram[87] = "0b11000000010111101010001010010111";
        ram[88] = "0b01000000101011100011000111101100";
        ram[89] = "0b01000000010011101101111001101011";
        ram[90] = "0b00111111000101110100100010101101";
        ram[91] = "0b11000001000001011111000010001111";
        ram[92] = "0b01000000011101000000100100111111";
        ram[93] = "0b10111110100011011011001010100111";
        ram[94] = "0b11000000101011011001000000110100";
        ram[95] = "0b01000000000110010100000000000101";
        ram[96] = "0b01000000101011011000000101101110";
        ram[97] = "0b01000001000110111011010101000011";
        ram[98] = "0b11000001000010100010010100101111";
        ram[99] = "0b11000000000010100000011000010100";


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


SC_MODULE(worker_COO_SpMV_0_vector) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 100;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


worker_COO_SpMV_0_vector_ram* meminst;


SC_CTOR(worker_COO_SpMV_0_vector) {
meminst = new worker_COO_SpMV_0_vector_ram("worker_COO_SpMV_0_vector_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~worker_COO_SpMV_0_vector() {
    delete meminst;
}


};//endmodule
#endif