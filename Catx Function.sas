data bringittogether;
	separator = ',';
	first = '    Larry';
	last = 'Larryson    ';
	result = catx(separator, first, last);
	drop separator;
	run;
	
proc print data=bringittogether;
run;