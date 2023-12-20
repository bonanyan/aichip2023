set sigs [list]
lappend sigs "__bug_marker__"
lappend sigs "TB.CLK\[0\]"
lappend sigs "TB.u_rvcpu.PC\[31:0\]"
lappend sigs "TB.u_rvcpu.NXPC\[31:0\]"
lappend sigs "TB.DADDR\[31:0\]"
lappend sigs "TB.DATAI\[31:0\]"
lappend sigs "TB.DATAO\[31:0\]"
lappend sigs "TB.IADDR\[31:0\]"
lappend sigs "TB.IDATA\[31:0\]"

set added [ gtkwave::addSignalsFromList $sigs ]