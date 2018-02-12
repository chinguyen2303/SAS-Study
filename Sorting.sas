proc print data=houseprice;
run;

proc sort data = houseprice out=houseprice2;
By descending tax;
run;

proc print data = houseprice2; run;
