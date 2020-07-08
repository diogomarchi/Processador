------------------------------------------------
-- Design: mux3x1 16bits
-- Entity: mux3x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux3x1 IS
       PORT (
              i_SEL0 : IN std_logic; -- selector
              i_SEL1 : IN std_logic; -- selector
              i_A : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_B : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_C : IN std_logic_Vector(7 DOWNTO 0); -- data input
              o_Q : OUT std_logic_Vector(15 DOWNTO 0)); -- data output
END mux3x1;

ARCHITECTURE arch_1 OF mux3x1 IS
       SIGNAL w_C : std_logic_vector(15 DOWNTO 0);
BEGIN
       w_C(15 DOWNTO 8) <= "00000000";
       w_C(7 DOWNTO 0) <= i_C;
       o_Q <= i_A WHEN (i_SEL0 = '1' AND i_SEL1 = '0') ELSE
              i_B WHEN (i_SEL0 = '0' AND i_SEL1 = '0') ELSE
              w_C;

END arch_1;