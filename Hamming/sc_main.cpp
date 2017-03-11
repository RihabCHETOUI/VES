#include "testbench.h"
#include "reg.h"
#include "systemc.h"
#include "CompletCircuit.h"

int sc_main (int argc, char *argv [])
{
	  sc_signal<sc_logic> clk;
	  sc_signal < sc_uint<11> > in;
	  sc_signal < sc_uint<11> > out;
	  sc_signal < sc_uint<11> > outTest;






	shift shift("reg_decalage");
	shift.clk (clk);
	shift.din  (in);
	shift.dout  (out);

	circuit circuit1 ("circuit_complet");
	circuit1.clk(clk);
	circuit1.messageIn (out);
	circuit1.wordCodeOut (outTest);

    testbenchreg test ("test");
    test.clk (clk);
    test.din (in);
    test.dout (outTest);

    sc_start();
    return 0;
}
