#include "systemc.h"

SC_MODULE(syndrome) {
	// Ports
	sc_in <sc_logic> clk;
    sc_in < sc_uint<15> > wordCodeSynd;
    sc_out < sc_uint<4> > syndValue;

    void Code_Syndrome();

    // Constructeur
    SC_CTOR(syndrome){
    	SC_METHOD(Code_Syndrome);
        sensitive << clk.pos();
    }
};
