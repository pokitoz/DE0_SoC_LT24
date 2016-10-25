library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LT24_Slave is
	port(
		-- Avalon signals
		address      : in  std_logic_vector(2 downto 0);
		chip_select  : in  std_logic;
		read         : in  std_logic;
		write        : in  std_logic;
		read_data    : out std_logic_vector(31 downto 0);
		write_data   : in  std_logic_vector(31 downto 0);
		-- LT24 Board signals
		lcd_reset_n  : out std_logic;
		lcd_on       : out std_logic;
		-- LT24 Interface signals
		start_single : out std_logic;
		data_cmd_n   : out std_logic;
		data_in      : out std_logic_vector(15 downto 0);
		busy         : in  std_logic;
		-- LT24_Master signals
		start_dma    : out std_logic;
		address_dma  : out std_logic_vector(31 downto 0);
		len_dma      : out std_logic_vector(31 downto 0);
		-- System signals
		clk          : in  std_logic;
		reset_n      : in  std_logic
	);
end entity LT24_Slave;

architecture RTL of LT24_Slave is
begin
end architecture RTL;

