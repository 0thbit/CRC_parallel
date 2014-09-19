__author__ = 'Kathan P Shah'
dw=raw_input("Enter the width of the data:\n")
dint=int(dw)
p=raw_input("Enter the polynomial:\n")#polynomial should be represented as binary string
pbin=int(str(p),2)# converting to binary format
lenp=len(str(p))
presence=[]
allzero=1 # to check special case of all 0 in
flag=0
f=open('CRC.v','w') # creating verilog file named crc

for j in range(lenp-1): # initializing presence matrix
    presence.append([0]*int(dw))

# function to determine relation between input and output bits based on crc calculated from crc function defined
def relation(bitnum,crcres,numb): # bitnum is the input bit, crcres is result from crc computed and numb is length of poly
    global presence
    for i in range(numb):
        if(crcres & (1<<i)): # checking if corresponding bit is present in crc result computed
            presence[i][bitnum]=1
        else:
            presence[i][bitnum]=0

# function to calculate the crc
def crc(datax,polyx,dw,pw):# datax and polyx should be aligned, dw is number of bits in datax, pw is length of poly
    pans=datax
    temp=datax
    nans=pans^polyx #nans= next answer, pans = present answer
    polyx=polyx>>1
    for i in range(dw-pw):
        temp=temp>>1
        if(nans&(temp)>=(temp)): # checking if answer and poly are aligned
            pans=nans
            nans=pans^polyx
            polyx=polyx>>1
        else:
            polyx=polyx>>1
    return nans


d=1<<(lenp-1) # starting from bit 0, and aligning it with polynomial

for i in range(int(dw)):
    res=crc((d<<i),(pbin<<i),i+lenp,lenp) # computing crc for each bit position
    relation(i,res,lenp-1)# taking result from crc computed for corresponding input bit and determining its relation with output

lines=["//-----------------------------------------------------------------------------","\n","//Kathan P. Shah\n//University of Southern California","\n","//Data Width:",dw," Poly:",p ,"\n","//-----------------------------------------------------------------------------", "\n"]
lines.append("module crc(\n")
lines.append("  input [%s:0] data_in,\n"%(dint-1))
lines.append("  output [%s:0] crc_out);\n"%(lenp-2))
lines.append("\n  reg [%s:0] crc_out;\n\n"%(lenp-2))
lines.append("  always @(*) begin\n")

for i in range(lenp-1):
    lines.append("    crc_out[%s] = "%i)
    allzero=1
    for j in range(int(dw)):
        if(presence[i][j]==1): # looking relation from presence table
            allzero=0
            if(flag): #flag to insert xor operator "^"
                lines.append(" ^ ")
            lines.append("data_in[%s]"%j)
            flag=1
        if((allzero==1) and j==(dint-1)):
            lines.append("0")
            allzero=0
    lines.append(";\n")
    flag=0

lines.append("\n  end // always\n\nendmodule // crc")
f.writelines(lines)
f.close()
print("Design 'CRC.v' generated!")
