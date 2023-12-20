# top entry:

## Check mem.v line 23 for removing 1-cycle mem read latency

## For windows with iverilog & gtkwave installed:

- runTB.bat: run memory testbench
- runTBCPU.bat: run CPU testbench

# For MAC or other unix-class OS:

- convert the *test_code.bin* into *test_code.hex*:
```make convert```
- run cpu testbench code:
```make```
- run memory testbench code:
```make mem```
