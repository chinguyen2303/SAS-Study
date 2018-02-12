Data houseprice;
infile '/folders/myfolders/Data/houseprice.txt';
input type$ price tax;
run;

Data newhomes;
infile '/folders/myfolders/Data/newhomes.txt';
input type$ price tax;
run;

proc sort data=houseprice out= houseprice2;
by price;
run;

proc sort data=newhomes out= newhomes2;
by price;
run;

data newcollection;
merge houseprice2 newhomes2; 
by price;
run;
