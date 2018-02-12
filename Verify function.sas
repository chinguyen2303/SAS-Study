data errors valid;
input id$ stage : $5.;
if verify(stage, 'abcd') then output errors;
else output valid;
cards;
001 aabcd
002 aabqc
;
run;


proc print data=errors;
title 'Errors'; 
run;

proc print data = valid;
title 'Valid';
run;

