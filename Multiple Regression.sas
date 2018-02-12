data sevenminscreen;
infile '/folders/myfolders/Data/7minscreen.csv' DSD missover firstobs=2;
input x y z;
run; 

proc reg data=sevenminscreen;
model z = x y;
run;


proc corr data=sevenminscreen;
var x y z;
run;
