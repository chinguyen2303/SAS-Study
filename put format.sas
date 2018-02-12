data disease; 
input diagcode$;
datalines;
001
290
800
;
run;

proc format;
value $codetwo
'001' = 'Malaria'
'290' = 'Social Anxiety Distorder'
'800' = 'Leg Injury';
run;

data diseasereal;
set disease;
diagdesc = put (diagcode, $codetwo.);
run;

proc print data=diseasereal;
run;