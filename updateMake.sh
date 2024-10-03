if [ "$#" -ne 1 ]; then
  echo "you must insert an name of the file for which you are setting up!"
  exit 1;
fi


touch makefile
# Generate the Makefile

{
  echo "componentName=$1"
  echo "library=\$(shell find ~/Desktop/codedb-college/verilog/ -type f -name \"*.vhd\")"
  echo ""
  
  echo "run: dependences"
  echo "	ghdl -a \$(componentName)"
  echo "	ghdl -a \$(componentName)_tb.vhd"
  echo "	ghdl -e \$(componentName)_tb"
  echo "	ghdl -r \$(componentName)_tb --vcd=\$(componentName)_tb.vcd"
  echo "	gtkwave \$(componentName)_tb.vcd"
  echo ""

  echo "runthis:"
  echo "	ghdl -a \$(componentName)"
  echo "	ghdl -a \$(componentName)_tb.vhd"
  echo "	ghdl -e \$(componentName)_tb"
  echo "	ghdl -r \$(componentName)_tb --vcd=\$(componentName)_tb.vcd"
  echo "	gtkwave \$(componentName)_tb.vcd"
  echo ""
  
  echo "packages:"
  echo "	ghdl -a ~/Desktop/codedb-college/verilog/tools_ange_templates/packages/*.vhd"
  echo ""
  
  echo "runClean:"
  echo "	ghdl --clean"
  echo "	ghdl -a \$(componentName)_tb.vhd"
  echo "	ghdl -e \$(componentName)_tb"
  echo "	ghdl -r \$(componentName)_tb --vcd=\$(componentName)_tb.vcd"
  echo "	gtkwave \$(componentName)_tb.vcd"
  echo ""
  
  echo "thisClean:"
  echo "	ghdl --clean"
  echo "	ghdl -a \$(componentName).vhd"
  echo "	ghdl -a \$(componentName)_tb.vhd"
  echo "	ghdl -e \$(componentName)_tb"
  echo "	ghdl -r \$(componentName)_tb --vcd=\$(componentName)_tb.vcd"
  echo "	gtkwave \$(componentName)_tb.vcd"
  echo ""
  
  echo "dependences:"
  echo "	ghdl -a \$(library)"
  echo ""

  echo "clean:"
  echo "	ghdl --clean"
} > makefile

