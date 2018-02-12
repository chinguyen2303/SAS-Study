/*Option 1*/
data houseprice;

INPUT type$ price tax;

DATALINES;

Single 300000 0.20

Single 250000 0.25

Duplex 175000 0.15

;

RUN;
%MACRO somestats;    /* %Macro allows you to create your macro 
and assign it a name. somestats is the macro name.*/

proc means;    /* We are telling SAS to run the proc (procedure) 
called 'means'.*/

var price tax;    /* The 'var' statement allows us to tell SAS 
what variables we want the proc means done on.
*/

RUN;

%MEND;   /* Tells SAS that we are finished making our Macro.*/

data housepricetwo;  /* We are creating a new data name..
because we want a new output.*/

set houseprice;     /* We are telling SAS to read our original 
data set. We need to tell it that because that is where the 
information is taken from.*/

if type='Single';    /* The 'if' statement allows us to only 
run data on a specific variables type. Instead of showing us 
all types  of homes, we only get single homes.*/

RUN;

%somestats;   /* We are invoking our macro variable. 
By invoking, we are putting it into action. It's running proc 
means on variables price and tax.*/