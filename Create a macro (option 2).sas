data houseprice;

INPUT type$ price tax;

DATALINES;

Single 300000 0.20

Single 250000 0.25

Duplex 175000 0.15

;

RUN;

%Macro newstats (PROG, VARS);   /*We open the process of 
creating our macro with %MACRO and we assign it a name 
'newstats'. In parentheses, separated by a comma, we have the 
two parameters. (PROG, VARS). You can name the parameters 
anything. We use parameters to allow us greater flexibility.*/

proc &PROG;  /*We want to do a procedure (proc)...but instead 
of specifying a particular procedure as we did in option 1, 
we instead call our parameter using & and the parameter name 
'PROG'.*/

var &vars; /*Here we are using the 'var' statement (letting 
SAS know the variables we want to do procedures on)..but 
instead of declaring a particular variable, we just call our 
parameter (like above).*/

RUN;

%MEND;  /*Ends our macro.*/

%newstats (MEANS, price tax);   /*We are invoking our macro 
(&newstats). Then in parentheses, separated by a comma, 
we have our two parameters. Since our parameters are part of 
our macro, by calling our macro, we get to specify type of 
procedure and type of variable we want to evaluate. If we 
didn't have the parameters, we would not have the flexibility 
of choosing procedure and variables.*/

%newstats (Univariate, price);  /*Same as above.*/