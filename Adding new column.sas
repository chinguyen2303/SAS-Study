Data houseprice;
infile '/folders/myfolders/Data/houseprice.txt';
input type$ price tax;
Actualamountoft = ROUND (price * tax);
run;