LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY exercicio_1 IS
	PORT (A : IN std_logic;
			B : IN std_logic;
  Carry_IN : IN std_logic;
		 SUM : OUT std_logic;
 Carry_OUT : OUT std_logic);
END exercicio_1;

ARCHITECTURE logica OF exercicio_1 IS
	SIGNAL X : std_logic;
BEGIN
			  X <= A XOR B;
	Carry_OUT <= (A AND B) OR (X AND Carry_IN);
			SUM <= X XOR Carry_IN;
END logica;