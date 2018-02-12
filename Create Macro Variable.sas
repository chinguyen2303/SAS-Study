data houseprice; 
infile '/folders/myfolders/Data/houseprice.txt';
input type$ price tax;
run; 



proc sgplot data = houseprice;
scatter y = price x=tax;
title "Comparing the Price and Tax by Type of Home";

run; 