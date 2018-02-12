data bringittogether;
	separator = ',';
	first = '    Larry';
	last = 'Larryson    ';
	result = catx(separator,propcase(first), propcase(last));
	scann = scan(result,1);
	drop separator;
	run;
	
proc print data=bringittogether;
run;