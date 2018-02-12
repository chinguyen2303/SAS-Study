data sevenminscreen;
infile '/folders/myfolders/Data/7minscreen.csv' DSD missover firstobs=2;
input x y;
run; 

proc reg data=sevenminscreen;
model y = x;
run;
