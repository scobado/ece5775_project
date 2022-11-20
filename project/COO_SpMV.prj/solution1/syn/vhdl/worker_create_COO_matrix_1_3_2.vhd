-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity worker_create_COO_matrix_1_3_2_rom is 
    generic(
             dwidth     : integer := 32; 
             awidth     : integer := 10; 
             mem_size    : integer := 625
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of worker_create_COO_matrix_1_3_2_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 to 343=> "00000000000000000000000000000000", 
    344 => "11000000010110111011111111110101", 
    345 to 357=> "00000000000000000000000000000000", 
    358 => "00111111011110011011001010001010", 
    359 to 394=> "00000000000000000000000000000000", 
    395 => "10111111110100000010101110011101", 
    396 to 401=> "00000000000000000000000000000000", 
    402 => "00111101100001010011011011010110", 
    403 to 529=> "00000000000000000000000000000000", 
    530 => "11000000101100010111000100001100", 
    531 to 553=> "00000000000000000000000000000000", 
    554 => "01000000110000011001000110111011", 
    555 to 624=> "00000000000000000000000000000000" );


attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity worker_create_COO_matrix_1_3_2 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 625;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of worker_create_COO_matrix_1_3_2 is
    component worker_create_COO_matrix_1_3_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    worker_create_COO_matrix_1_3_2_rom_U :  component worker_create_COO_matrix_1_3_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

