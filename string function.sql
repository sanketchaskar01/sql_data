select lower('sAnket');   # if you want all value in lower alphabets
select lower('SANKET');

select upper('SanKet');   # if you want all value in upper alphabet
select upper('sanket');

select concat('Welcome to ITvedant','Thane');    #concat operator use for differnt word in one line

select replace('Welcome to ITvedant thane','thane','andheri');    #if you want change the specific word

select length('my name is sanket');         #if want to know the length size of the paragraph or anyone

select length(trim('    abc  abc    '));     #if want to know spaces length
select trim('    abc  abc    ');             #if you want delete right and left spaces

select substring('my name is sanket',1,2);   #if you want specific character or word from paragraph
select substring('my name is sanket','12');

select rtrim('                    my     ');  #if you want right side trim or space deleted then// use this
select ltrim('        my');                   # if you want left side trim or space deleted then use this

select concat("mysql","is","fun");
select concat("i love mysql");
select replace("i love mysql","mysql","coding");
select length("i love india")


 
