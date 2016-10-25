library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LT24_Interface is
	port(
		-- LT24 Slave signals
		start_single : in  std_logic;
		data_cmd_n   : in  std_logic;
		data_in      : in  std_logic_vector(15 downto 0);
		busy         : out std_logic;
		-- LT24 board signals
		csx          : out std_logic;
		dcx          : out std_logic;
		wrx          : out std_logic;
		rdx          : out std_logic;
		data_out     : out std_logic_vector(15 downto 0);
		-- LT24 Master signals
		running      : in  std_logic;
		-- FIFO signals
		read_fifo    : out std_logic;
		read_data    : in  std_logic_vector(15 downto 0);
		fifo_empty   : in  std_logic;
		-- System signals
		clk          : in  std_logic;
		reset_n      : in  std_logic
	);
end entity LT24_Interface;

architecture RTL of LT24_Interface is
begin
end architecture RTL;

