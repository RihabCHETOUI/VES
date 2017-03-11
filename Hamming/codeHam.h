#include "systemc.h"

SC_MODULE(encodage) {
	// Ports
	sc_in <sc_logic> clk;
	sc_in < sc_uint<11> > message;
    sc_out < sc_uint<15> > wordCode;

    void Code_Hamming();

    // Constructeur
    SC_CTOR(encodage){
    	SC_METHOD(Code_Hamming);
        sensitive << clk.pos();
    }
};
