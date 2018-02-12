data houseprice; 
infile '/folders/myfolders/Data/houseprice.txt';
input type$ price tax;
run; 

proc gchart data=houseprice;
title "Comparing the Price and Tax by Type of Home";
format price dollar9.;
vbar price tax/ group = type;
pattern color = yellow;
run;
