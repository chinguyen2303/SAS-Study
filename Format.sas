data disease; 
input diagcode$;
datalines;
001
290
800
;
run;

proc print data =disease;
run;

proc format;
value $codetwo
'001' = 'Malaria'
'290' = 'Social Anxiety Distorder'
'800' = 'Leg Injury';
run;

proc print data=disease;
format diagcode $codetwo.; 
run;