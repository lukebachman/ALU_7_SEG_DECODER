----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2019 11:53:08 AM
-- Design Name: 
-- Module Name: tb_decoder - Behavioral
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

entity tb_decoder is
end tb_decoder;

architecture Behavioral of tb_decoder is
    component decoder
        PORT(
        Input : IN std_logic_vector(3 downto 0);
        Output : OUT std_logic_vector(6 downto 0)
        );
end component;
 
--Inputs
signal input : std_logic_vector(3 downto 0) := (others => '0');
 
--Outputs
signal output : std_logic_vector(6 downto 0);


begin
    dut: decoder PORT MAP (
    Input => input,
    Output => output
    );
 
-- Stimulus process
process
begin
--------------- 0-9
input <= "0000";
wait for 100 ns;
input <= "0001";
wait for 100 ns;
input <= "0010";
wait for 100 ns;
input <= "0011";
wait for 100 ns;
input <= "0100";
wait for 100 ns;
input <= "0101";
wait for 100 ns;
input <= "0110";
wait for 100 ns;
input <= "0111";
wait for 100 ns;
input <= "1000";
wait for 100 ns;
input <= "1001";
wait for 100 ns;
--------------- A-F
input <= "1010";
wait for 100 ns;
input <= "1011";
wait for 100 ns;
input <= "1100";
wait for 100 ns;
input <= "1101";
wait for 100 ns;
input <= "1110";
wait for 100 ns;
input <= "1111";
wait for 100 ns;

end process;
 
end Behavioral;
