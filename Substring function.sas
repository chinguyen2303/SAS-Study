data new; 
date = '06MAY98';
month = substr(date, 3,5);

proc print data=new;
run;

/* substr(source, position, N) 
position = where to start reading
n = how many characters to read


date = '06MAY98';
substr(date, 3,5) = '16';
*/ 