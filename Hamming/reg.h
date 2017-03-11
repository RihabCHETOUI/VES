#include "systemc.h"

SC_MODULE(shift) {
	// Ports
	sc_in <sc_logic > clk;
	sc_in < sc_uint<11> > din;
    sc_out < sc_uint<11> > dout;
    void shifter();

    // Constructeur
    SC_CTOR(shift){
    	SC_METHOD(shifter);
    	sensitive<< clk.pos();
    }
};
