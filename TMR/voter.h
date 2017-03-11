#include "systemc.h"


SC_MODULE(voter){

sc_in < sc_uint <16> > a;
sc_in < sc_uint <16> > b;
sc_in < sc_uint <16> > c;
sc_out < sc_uint <16> > y;


void maj_func();

SC_CTOR(voter){

	SC_METHOD(maj_func);
	sensitive << a<< b <<c;
}

};
