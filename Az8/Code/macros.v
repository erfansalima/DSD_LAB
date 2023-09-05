`define MEM_LEN 32 // length of memory
`define A_LEN 5 // length of address memory
`define W_LEN 8 // length of the imaginary and real parts of the numbers. 
`define complex [2*`W_LEN-1:0]
`define Re(c) c[2*`W_LEN-1:`W_LEN]
`define Im(c) c[`W_LEN-1:0]
`define sRe(c) $signed(`Re(c))
`define sIm(c) $signed(`Im(c))
