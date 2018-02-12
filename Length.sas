data lenghfunctions; 
	one = 'ABC    ';
	two = ' ';
	three = 'abc   xyz';
	length_one = length(one);
	lengthn_one = lengthn(one);
	lengthc_one = lengthc(one);
	length_two = length(two);
	lengthn_two = lengthn(two);
	lengthc_two = lengthc(two);
	length_three = length(three);
	lengthn_three = lengthn(three);
	lengthc_three = lengthc(three);
run;

proc print data = lenghfunctions;
	title 'Length(n)(c) Function Examples';
run;

/*lengthc returns everything, lengthn returns missing data as 0 (otherwise 1)
*/ 
