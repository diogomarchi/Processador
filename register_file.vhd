------------------------------------------------
-- Design: register_file
-- Entity: register_file
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;



entity register_file is
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 4); -- address width
  port ( i_CLK   : in std_logic;
       i_CLR_N : in std_logic;
       i_RF_W_wr  : in  std_logic;  -- enable W write
		 i_RF_RP_rd : in  std_logic;  -- enable RP read
		 i_RF_RQ_rd : in  std_logic;  -- enable RQ read
       i_RF_W_addr  : in  std_logic_Vector(3 downto 0);  -- W write address
		 i_RF_RP_addr : in  std_logic_Vector(3 downto 0);  -- RP read address   
		 i_RF_RQ_addr : in  std_logic_Vector(3 downto 0);  -- RP read address
		 i_W_DATA  : in  std_logic_Vector(15 downto 0);    -- W input data
		 o_RP_DATA : out  std_logic_Vector(15 downto 0);  -- RP output data
		 o_RQ_DATA : out  std_logic_Vector(15 downto 0)   -- RQ output data
       ); 
end register_file;


architecture arch1 of register_file is

  type reg_file_type is array (0 to 2**A_Width-1) of std_logic_vector(D_Width-1 downto 0);
  signal reg_file : reg_file_type := (others => (others => '0'));

begin
  
  process(i_CLK, i_CLR_n)
  begin
    if(i_CLR_n = '0') then
	   reg_file <= (others => (others => '0'));	   
	 elsif(rising_edge(i_CLK)) then
	     if(i_RF_W_wr = '1') then
		    reg_file(to_integer(unsigned(i_RF_W_addr))) <=  i_W_DATA;
	     end if;
        
    end if;	 
  end process;
  
  o_RP_DATA <= reg_file(to_integer(unsigned(i_RF_RP_addr))) when(i_RF_RP_rd = '1')  else "ZZZZZZZZZZZZZZZZ";
  o_RQ_DATA <= reg_file(to_integer(unsigned(i_RF_RQ_addr))) when(i_RF_RQ_rd = '1')  else "ZZZZZZZZZZZZZZZZ";
  
end arch1;


