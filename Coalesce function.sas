data coalesce; 
input home cell;
numavailable = coalesce(home, cell);
datalines;
6578975
6448565
;
run;

proc print data = coalesce;
run;