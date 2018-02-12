data filter;
set houseprice;
if price < 200000;
run;
