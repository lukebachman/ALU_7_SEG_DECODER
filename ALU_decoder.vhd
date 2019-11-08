----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2019 09:09:25 PM
-- Design Name: 
-- Module Name: ALU_decoder - Behavioral
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

entity ALU_decoder is
  Port (Input : in STD_LOGIC_VECTOR(3 downto 0);
        Output: out STD_LOGIC_VECTOR(3 downto 0); 
        OP : in STD_LOGIC_VECTOR (2 downto 0);
        A : in STD_LOGIC_VECTOR (3 downto 0);
        B : in STD_LOGIC_VECTOR (3 downto 0) );
end ALU_decoder;

--This is the top file shell where we define ports only
--These are also known as your global inputs or main inputs to the overall circuit
--------------------------------------------------------------
architecture Behavioral of ALU_decoder is
   component ALU
         Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
                B : in STD_LOGIC_VECTOR (3 downto 0);
                OP : in STD_LOGIC_VECTOR (2 downto 0);
                Output : out STD_LOGIC_VECTOR(3 downto 0));
   end component;
   
   component decoder
        Port( Input : in std_logic_vector(3 downto 0);
              Output : out std_logic_vector(6 downto 0));
    end component;
--This is where we delare the components we are using
----------------------------------------------------------------
signal int_signal : STD_LOGIC_VECTOR;
--This is the signal that connects component a to component b
--The 4-bit ALU output is going to the input of the decoder

begin

component_a: ALU port map(
                 A => A,
                 B => B,
                 OP => OP,
                 Output => int_signal );
component_b: decoder port map(
                 Input => int_signal,
                 Output => Output );

end Behavioral;
