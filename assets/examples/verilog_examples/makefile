default:
	iverilog -o testShift testNum.v
	vvp -n testShift -lxt2

test_cnt:
	iverilog -o wave counter.v
	vvp -n wave -lxt2

cnt1:
	iverilog -o wave cnt_tb.v
	vvp -n wave -lxt2

plot:
	gtkwave wave.vcd
