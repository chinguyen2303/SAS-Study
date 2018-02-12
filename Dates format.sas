data dates;
input name$ bday date11.;
cards;
Eric 4 Mar 1985
Doug 15 Feb 1976
Sean 14 Jun 1975 
Lisa 5 Jan 1988
;
Run;

Proc print data = dates;
FORMAT bday date9.;
run; 
