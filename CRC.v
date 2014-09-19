//-----------------------------------------------------------------------------
//Kathan P. Shah
//University of Southern California
//Data Width:7 Poly:1001
//-----------------------------------------------------------------------------
module crc(
  input [6:0] data_in,
  output [2:0] crc_out);

  reg [2:0] crc_out;

  always @(*) begin
    crc_out[0] = data_in[0] ^ data_in[3] ^ data_in[6];
    crc_out[1] = data_in[1] ^ data_in[4];
    crc_out[2] = data_in[2] ^ data_in[5];

  end // always

endmodule // crc