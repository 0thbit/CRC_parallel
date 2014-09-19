CRC_parallel
============

Kathan P.Shah

University of Southern California

Python scripts to generate verilog design and testbench for CRC bits in combinational logic.

Files:
-----
 CRC.py: Generate CRC.v file
 
 CRC_tb.py: Generate CRC_tb.v file
 
 CRC.v: Verilog Design for parallel CRC
 
 CRC_tb.v: Testbench for CRC.v, generates CRC_results.out showing MATCH or NOMATCH
 
 CRC_results.out: Results of the design simulation

Running on UNIX: 
---------------
(tested on aludra.usc.edu on Python 2.4.2)

Commands:
--------
 python CRC.py
 
 python CRC_tb.py

Example file:
-----------------
Data width: 7

Poly: 1001
	

