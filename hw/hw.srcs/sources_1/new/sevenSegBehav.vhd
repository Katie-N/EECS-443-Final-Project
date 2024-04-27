----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2024 02:32:53 PM
-- Design Name: 
-- Module Name: sevenSegBehav - Behavioral
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

entity sevenSegBehav is
    port(
       clk_i          : in std_logic;
       rstn_i         : in std_logic;
       sw_i           : in std_logic_vector(4 downto 0);
       seg          : out std_logic_vector(6 downto 0);
       an           : out std_logic_vector(7 downto 0));
end sevenSegBehav;

architecture Behavioral of sevenSegBehav is
signal SECONDS_TO_RECORD : integer := 5;
signal data : STD_LOGIC_VECTOR (6 downto 0);
begin

an(0) <= '0';
an(1) <= '1';
an(2) <= '1';
an(3) <= '1';
an(4) <= '1';
an(5) <= '1';
an(6) <= '1';
an(7) <= '1';

seg <= data;


SECONDS_TO_RECORD <= 5 when sw_i(4) = '1' else
                    4 when sw_i(3) = '1' else
                    3 when sw_i(2) = '1' else
                    2 when sw_i(1) = '1' else
                    1 when sw_i(0) = '1' else
                    5; -- Default to 5 seconds
    
p0 : process(SECONDS_TO_RECORD)
begin
    case(SECONDS_TO_RECORD) is
        when 1 =>
            data <= "1111001";
        when 2 =>
            data <= "0100100";
        when 3 =>
            data <= "0110000";
        when 4 =>
            data <= "0011001";
        when others => -- default to 5 seconds
            data <= "0010010";
    end case;
end process;



end Behavioral;
