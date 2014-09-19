//-----------------------------------------------------------------------------
//tb.v:Data width-7 Poly: 1001
//-----------------------------------------------------------------------------
`timescale 1ns/10ps
module tb;
reg [6:0] in;
wire [2:0] out;
reg [2:0] golden;
integer f;
crc mycrc(in,out);
initial
begin
f=$fopen("CRC_results.out");
$fwrite(f,"Data width:7, Poly:1001\n");
in=127;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=0;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=75;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=66;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=35;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=80;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=29;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=69;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=29;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=86;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=87;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=68;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=63;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=60;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=108;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=35;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=56;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=91;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=67;
golden=2;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=70;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=96;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=91;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=31;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=28;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=62;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=89;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=53;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=120;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=85;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=99;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=114;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=47;
golden=2;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=79;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=5;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=46;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=93;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=90;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=95;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=80;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=20;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=36;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=119;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=39;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=85;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=8;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=76;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=28;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=75;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=70;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=1;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=3;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=106;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=15;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=110;
golden=2;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=64;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=101;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=79;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=58;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=109;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=14;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=77;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=60;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=122;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=21;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=31;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=1;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=121;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=115;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=108;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=21;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=109;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=89;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=42;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=48;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=104;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=114;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=120;
golden=6;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=90;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=115;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=63;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=117;
golden=2;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=119;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=114;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=93;
golden=7;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=87;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=33;
golden=5;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=125;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=89;
golden=3;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=73;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=9;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=32;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=18;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=103;
golden=2;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=73;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=45;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=32;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=4;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=88;
golden=2;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=22;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=101;
golden=0;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=100;
golden=1;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

in=97;
golden=4;
#10;
if(out==golden) begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MATCH\n", $time,in, out, golden);
end
else begin
$fwrite(f,"At time %g ns, in= %b, out= %b, golden = %b MISMATCH\n", $time,in, out, golden);
end

$fclose(f);
$finish;
end
endmodule