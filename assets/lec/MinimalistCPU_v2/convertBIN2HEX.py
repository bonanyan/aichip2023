
import re

def bin2hex(a):
    return f"{int(a, 2):08x}\n"

fi = open("test_code.bin","r")
fo = open("test_code.hex","w")
lines = fi.readlines()
for line in lines:
    fo.write(bin2hex(re.sub(" ","",line)))

fi.close()
fo.close()

