
default: cpu plot

convert:
	python convertBIN2HEX.py

mem:
	rm wave
	iverilog -o wave tb_mem.v
	vvp -n wave -lxt2

cpu:
	rm wave
	iverilog -o wave tb_cpu.v
	vvp -n wave -lxt2

plot:
	gtkwave wave.vcd -S plt.tcl
