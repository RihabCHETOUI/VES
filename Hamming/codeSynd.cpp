#include "codeSynd.h"

void syndrome:: Code_Syndrome(){
	sc_uint<15> temp;
	sc_uint<4> temp1;
temp=wordCodeSynd.read();

temp1[3]=temp[14]^temp[13]^temp[11]^temp[10]^temp[8]^temp[6]^temp[4]^temp[3];
temp1[2]=temp[14]^temp[12]^temp[11]^temp[9]^temp[8]^temp[5]^temp[4]^temp[2];
temp1[1]=temp[13]^temp[12]^temp[11]^temp[7]^temp[6]^temp[5]^temp[4]^temp[1];
temp1[0]=temp[10]^temp[9]^temp[8]^temp[7]^temp[6]^temp[5]^temp[4]^temp[0];

syndValue.write(temp1);
}
