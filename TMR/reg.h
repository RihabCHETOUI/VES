#include "systemc.h"

SC_MODULE(shift)
{
  //Ports
  sc_in <sc_logic> clk;
  sc_in < sc_uint<16> > din;
  sc_out < sc_uint<16> > dout;


  //processus principal
  void shifter();

  //constructeur

  SC_CTOR(shift)
    {SC_METHOD(shifter);
    sensitive << clk.pos();
    }

};

SC_MODULE(shift_def)
{
  //Ports
  sc_in <sc_logic> clk;
  sc_in < sc_uint<16> > din;
  sc_out < sc_uint<16> > dout;


  //processus principal
  void shifter_def();

  //constructeur
  SC_CTOR(shift_def)
    {SC_METHOD(shifter_def);
    sensitive << clk.pos();
    }

};


