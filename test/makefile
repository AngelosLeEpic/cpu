componentName=test
library=$(shell find ~/Desktop/codedb-college/verilog/ -type f -name "*.vhd")

run: dependences
	ghdl -a $(componentName)
	ghdl -a $(componentName)_tb.vhd
	ghdl -e $(componentName)_tb
	ghdl -r $(componentName)_tb --vcd=$(componentName)_tb.vcd
	gtkwave $(componentName)_tb.vcd

runthis:
	ghdl -a $(componentName)
	ghdl -a $(componentName)_tb.vhd
	ghdl -e $(componentName)_tb
	ghdl -r $(componentName)_tb --vcd=$(componentName)_tb.vcd
	gtkwave $(componentName)_tb.vcd

packages:
	ghdl -a ~/Desktop/codedb-college/verilog/tools_ange_templates/packages/*.vhd

runClean:
	ghdl --clean
	ghdl -a $(componentName)_tb.vhd
	ghdl -e $(componentName)_tb
	ghdl -r $(componentName)_tb --vcd=$(componentName)_tb.vcd
	gtkwave $(componentName)_tb.vcd

thisClean:
	ghdl --clean
	ghdl -a $(componentName).vhd
	ghdl -a $(componentName)_tb.vhd
	ghdl -e $(componentName)_tb
	ghdl -r $(componentName)_tb --vcd=$(componentName)_tb.vcd
	gtkwave $(componentName)_tb.vcd

dependences:
	ghdl -a $(library)

clean:
	ghdl --clean
