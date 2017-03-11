#include "systemc.h"
#include "testbenchreg.h"
#include "reg.h"
#include "voter.h"

int sc_main(int argc, char *argv[])
{


  sc_signal <sc_logic> clk;
  sc_signal < sc_uint<16> > in;
  sc_signal < sc_uint<16> > out, out1, out2, out3;


  shift shift1("reg_decalage");
  shift1.clk(clk);
  shift1.din(in);
  shift1.dout(out);



  shift shift2("reg_decalage2");
  shift2.clk(clk);
  shift2.din(in);
  shift2.dout(out1);

  shift shift3("reg_decalage3");
  shift3.clk(clk);
  shift3.din(in);
  shift3.dout(out2);

 shift_def shift_def1("reg_decalage_def");
  shift_def1.clk(clk);
  shift_def1.din(in);
 shift_def1.dout(out2);


  voter v("voter_val");
  v.a(out);
  v.b(out1);
  v.c(out2);
  v.y(out3);

  testbenchreg test("test");
  test.clk(clk);
  test.din(in);
  test.dout(out);
  //test.dout(out3);


  sc_start();
  return 0;
 

}



