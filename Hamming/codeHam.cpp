#include "codeHam.h"

void encodage:: Code_Hamming(){
	sc_uint<11> temp;
	sc_uint<4> tempp;

	sc_uint<15> tempc;
	temp= message.read();
tempp[3]=temp[10]^temp[9]^temp[7]^temp[6]^temp[4]^temp[2]^temp[0];
tempp[2]=temp[10]^temp[8]^temp[7]^temp[5]^temp[4]^temp[1]^temp[0];
tempp[1]=temp[9]^temp[8]^temp[7]^temp[3]^temp[2]^temp[1]^temp[0];
tempp[0]=temp[6]^temp[5]^temp[4]^temp[3]^temp[2]^temp[1]^temp[0];

tempc = (temp,tempp);
wordCode.write(tempc.range(14,4));
}

