#Visiting the tables
select * from customers;

select * from markets;

select * from transactions;

select * from products;

#Counting the entries
select count(*) from transactions;

select count(*) from markets;

select count(*) from products;

select count(*) from customers;

#Counting the number of transacions for chennai
select count(*) from transactions where market_code="Mark001";

#Entries containing USD
select * from transactions where currency="USD";

#Merging two tables
select * from transactions
inner join date
on transactions.order_date = date.date;

#Top revenue generated in year and given market
select sum(sales_amount) from transactions
inner join date
on transactions.order_date = date.date
where year=2020 and market_code="Mark001";

#Distinct products in Chennai
select distinct product_code
from transactions
where market_code="Mark001";
