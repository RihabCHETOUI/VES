
#include "reg.h"

void shift::shifter()
{
	 sc_uint <16> tmp;

	  tmp= (din.read());

	dout.write(tmp); // version non defaillante
}

