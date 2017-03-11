
#include "voter.h"


void voter::maj_func()
{

	sc_uint<16> la, lb, lc, temp;

	la =a.read();
	lb =b.read();
	lc =c.read();
	if((la==lb) || (la==lc)){
		temp =la;}
	else
	{
		temp=lc;
	}

	y.write(temp);
}

//sc_assert((la==lb) | (la==lc) | (lb==lc));
//arreter la simulation si la condition est fausse

//sc_report_handler::set_log_file_name("run.log");
//SC_REPORT_WARNING("condition du voter non respecté
