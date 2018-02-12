Data newhomes;
infile '/folders/myfolders/Data/newhomes.txt';
input x$ y z;
run;

data cleannewhomes; set newhomes;
rename x = type
	y = price
	z = tax;
	run;
	
	data cleannewhomes; set cleannewhomes;
	label type = 'Type of Home'
			price = 'Price of Home'
			tax= 'Tax percentage of Home';
			run;
			
			proc freq data=cleannewhomes;
			table type price tax;
			run;
			