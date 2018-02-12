data inputfunc; 
	input sale $9.; /* $9. means 9 characters (defaul is 8) */
	numsale = input(sale, comma9.);
	datalines;
	6,513,353
	;
run;

proc print data = inputfunc;
run;

proc contents data = inputfunc;
run;


data putfunc; 
	input sale; 
	charsale = put(sale, 7.);
	datalines;
	6513353
	;
run;

proc print data = putfunc;
run;

proc contents data = putfunc;
run;