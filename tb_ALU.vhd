----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2019 08:27:59 PM
-- Design Name: 
-- Module Name: tb_ALU - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ALU is
end tb_ALU;

architecture Behavioral of tb_ALU is
   component ALU is
         Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (2 downto 0);
           Output : out STD_LOGIC_VECTOR(3 downto 0));
           end component;
           --inputs
           signal a : STD_LOGIC_VECTOR(3 downto 0);
           signal b : STD_LOGIC_VECTOR(3 downto 0);
           signal op : STD_LOGIC_VECTOR(2 downto 0);
           --output
           signal output : STD_LOGIC_VECTOR(3 downto 0);
begin
    dut: ALU port map(
    A => a,
    B => b,
    OP => op,
    Output => output);
process
begin
    a <= "0000";
    b <= "0000";
    op <= "000";
    wait for 100 ns;
    a <= "0001";
    b <= "0001";
    op <= "001";
    wait for 100 ns;
    a <= "0010";
    b <= "0010";
    op <= "011";
    wait for 100 ns;
    a <= "0011";
    b <= "0011";
    op <= "100";
    wait for 100 ns;
    a <= "0100";
    b <= "0100";
    op <= "101";
    wait for 100 ns;
    a <= "0101";
    b <= "0101";
    op <= "110";
    wait for 100 ns;
    a <= "0110";
    b <= "0110";
    op <= "111";
    wait for 100 ns;
    a <= "0111";
    b <= "0111";
      op <= "000";
    wait for 100 ns;
    a <= "1000";
    b <= "1000";
        op <= "001";
    wait for 100 ns;
    a <= "1001";
    b <= "1001";
        op <= "011";
    wait for 100 ns;
    a <= "1010";
    b <= "1010";
        op <= "100";
    wait for 100 ns;
    a <= "1011";
    b <= "1011";
        op <= "101";
    wait for 100 ns;
    a <= "1100";
    b <= "1100";
        op <= "110";
    wait for 100 ns;
    a <= "1101";
    b <= "1101";
        op <= "111";
    wait for 100 ns;
    a <= "1110";
    b <= "1110";
    wait for 100 ns;
    a <= "1111";
    b <= "1111";
    wait for 100 ns;
    end process;
    
end Behavioral; 

