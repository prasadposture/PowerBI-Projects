#Get all the unique values from the currency
select distinct currency from transactions;

#Count the number of transactions for particular currency
select currency, count(*)
from transactions
group by currency;

select * from transactions
where currency="USD" or currency="USD\r";

#from above two querries it appears that
#Currencies with '\r' are right ones and the others seem to be duplicated
#We will remove the duplicate ones in PowerQuerry
