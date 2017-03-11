#include "systemc.h"
#include "codeHam.h"
#include "Correction.h"
#include "codeSynd.h"

SC_MODULE(circuit) {
	// Ports
	sc_in <sc_logic> clk;
	sc_in < sc_uint<11> > messageIn;
    sc_out < sc_uint<11> > wordCodeOut;
	sc_signal < sc_uint<15> > tempEncodage;
    sc_signal < sc_uint<4> > tempSynd;

    SC_CTOR(circuit){

            encodage encodage("circuit_encodage");
        			 encodage.message (messageIn);

        			 encodage.clk (clk);
        			 encodage.wordCode  (tempEncodage);


             syndrome syndrome ("calcul_syndrome");
                     syndrome.clk (clk);
                     syndrome.wordCodeSynd (tempEncodage);
                     syndrome.syndValue (tempSynd);

          correction correction ("mot_de_valide");
                     correction.clk (clk);
                     correction.syndCalculate (tempSynd);
                     correction.wordCodein (tempEncodage);
                     correction.wordCodeValide (wordCodeOut);

                     sensitive << clk.pos();
    }

};
