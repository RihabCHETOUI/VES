#include "systemc.h"

SC_MODULE(correction) {
	// Ports

	sc_in <sc_logic> clk;
	sc_in < sc_uint<15> > wordCodein;
    sc_in < sc_uint<4> > syndCalculate;
    sc_out < sc_uint<11> > wordCodeValide;

    void Code_Correction();

    // Constructeur
    SC_CTOR(correction){
    	SC_METHOD(Code_Correction);
        sensitive << clk.pos();
    }
};
