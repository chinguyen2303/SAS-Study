data compressd;

input phonen$1-15;

phone1 = compress(phonen);
/*The second column (named phone1) is the first time that we utilize 
the compress function. Notice that the only argument we pass or enter 
is phonen. (the original variable). You will notice that it gets rid of 
the problematic spaces that we have in our second phone number listed 
under datalines.  */
phone2 = compress(phonen,'(-)','s');
/* 
 * The third column, (named phone2) we perform another compress function, 
 * but this time we have two additional arguments. Notice that both of 
 * these arguments have apostrophes around them. The first argument, we are 
 * telling SAS to get rid of the - and the parentheses. The 2nd argument, 
 * the 's', tells SAS to compress or delete spaces. Now, the reason that 
 * we had to compress spaces here and it was done by default in the second 
 * column is that the default is to compress spaces..but since we used the 
 * 2nd argument to get rid of - and the parentheses..we had to pass a 
 * third argument to delete the spaces.*
 */
datalines;

(314)456-4768

(314) 453-56 78

;

run;