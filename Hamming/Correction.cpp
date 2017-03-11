#include "Correction.h"

void correction:: Code_Correction(){

 sc_uint<15> temp;
 temp =wordCodein.read();
 sc_uint<4> tempSyndRead=syndCalculate.read();
if (tempSyndRead==0)
	cout << "No ERROR";

if (tempSyndRead==1)
    {cout << "Bit 0 ERROR";
    temp[0]=~temp[0];}

if (tempSyndRead==2)
	{cout << "Bit 1 ERROR";
    temp[1]=~temp[1];}

if (tempSyndRead==4)
	{cout << "Bit 2 ERROR";
    temp[2]=~temp[2];}

if (tempSyndRead==8)
	{cout << "Bit 3 ERROR";
temp[3]=~temp[3];}

if (tempSyndRead==15)
	{cout << "Bit 4 ERROR";
    temp[4]=~temp[4];}

if (tempSyndRead==7)
	{cout << "Bit 5 ERROR";
temp[5]=~temp[5];}

if (tempSyndRead==11)
	{cout << "Bit 6 ERROR";
    temp[6]=~temp[6];}

if (tempSyndRead==3)
		{cout << "Bit 7 ERROR";
        temp[7]=~temp[7];}

if (tempSyndRead==13)
		{cout << "Bit 8 ERROR";
        temp[8]=~temp[8];}

if (tempSyndRead==5)
	{cout << "Bit 9 ERROR";
temp[9]=~temp[9];}

if (tempSyndRead==9)
	{cout << "Bit 10 ERROR";
temp[10]=~temp[10];}

if (tempSyndRead==14)
	{cout << "Bit 11 ERROR";
temp[11]=~temp[11];}

if (tempSyndRead==6)
	{cout << "Bit 12 ERROR";
temp[12]=~temp[12];}

if (tempSyndRead==10)
	{cout << "Bit 13 ERROR";
temp[13]=~temp[13];}

if (tempSyndRead==12){
	cout << "Bit 14 ERROR";

temp[14]=~temp[14];
}

wordCodeValide.write(temp.range(14,4));
}
