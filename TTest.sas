data qualityoflife; 
infile '/folders/myfolders/Data/qualityoflife.txt';
input socioeconomicstatus$ QLI;
run; 

proc ttest data =qualityoflife;
title 'The impact of SES of QLI';
class socioeconomicstatus;
var QLI; 
run;