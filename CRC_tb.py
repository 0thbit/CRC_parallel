__author__ = 'Kathan'
from random import randint
tb=open('CRC_tb.v','w')
dw=raw_input("Enter the width of the data:\n")
dint=int(dw)
p=raw_input("Enter the polynomial:\n")#polynomial should be represented as binary string
pbin=int(str(p),2)# converting to binary format
lenp=len(str(p))
palign=pbin<<(dint-1)

def crc(datax,polyx,dw,pw):# datax and polyx should be aligned, dw is number of bits in datax, pw is length of poly
    temp=1<<(dw-1)
    for i in range(dw-pw):
        if(datax&temp==temp):
            datax=datax^polyx
            polyx=polyx>>1
        else:
	        polyx=polyx>>1
        temp=temp>>1
    return datax

lines=["//-----------------------------------------------------------------------------","\n","//tb.v:Data width-",dw," Poly: ",p,"\n","//-----------------------------------------------------------------------------", "\n"]
lines.append("`timescale 1ns/10ps\n")
lines.append("module tb;\n")
lines.append("reg [%s:0] in;\n"%(dint-1))
lines.append("wire [%s:0] out;\n"%(lenp-2))
lines.append("reg [%s:0] golden;\n"%(lenp-2))
lines.append("integer f;\n")
lines.append("crc mycrc(in,out);\ninitial\nbegin\nf=$fopen(\"CRC_results.out\");\n")
lines.append("$fwrite(f,\"Data width:%s, Poly:%s\\n\");\n"%(dw,p))
inp=2**(dint)-1
gldn=crc(inp<<(lenp-1),palign,(dint+lenp-1),lenp-1)
lines.append("in=%s;\n"%inp)
lines.append("golden=%s;\n"%gldn)
lines.append("#10;\n")
lines.append("if(out==golden) begin\n")
lines.append("$fwrite(f,\"At time %g ns, in= %b, out= %b, golden = %b MATCH\\n\", $time,in, out, golden);\n")
lines.append("end\nelse begin\n")
lines.append("$fwrite(f,\"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\\n\", $time,in, out, golden);\nend\n\n")


inp=0
gldn=crc(inp<<(lenp-1),palign,(dint+lenp-1),lenp-1)
lines.append("in=%s;\n"%inp)
lines.append("golden=%s;\n"%gldn)
lines.append("#10;\n")
lines.append("if(out==golden) begin\n")
lines.append("$fwrite(f,\"At time %g ns, in= %b, out= %b, golden = %b MATCH\\n\", $time,in, out, golden);\n")
lines.append("end\nelse begin\n")
lines.append("$fwrite(f,\"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\\n\", $time,in, out, golden);\nend\n\n")


for i in range(100):
    inp=randint(1,(2**dint-2))
    gldn=crc(inp<<(lenp-1),palign,(dint+lenp-1),lenp-1)
    lines.append("in=%s;\n"%inp)
    lines.append("golden=%s;\n"%gldn)
    lines.append("#10;\n")
    lines.append("if(out==golden) begin\n")
    lines.append("$fwrite(f,\"At time %g ns, in= %b, out= %b, golden = %b MATCH\\n\", $time,in, out, golden);\n")
    lines.append("end\nelse begin\n")
    lines.append("$fwrite(f,\"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\\n\", $time,in, out, golden);\nend\n\n")


lines.append("$fclose(f);\n$finish;\nend\nendmodule")




tb.writelines(lines)
tb.close()
print("TestBench 'CRC_tb.v' generated!")
