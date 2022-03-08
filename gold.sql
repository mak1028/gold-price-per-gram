select * from annual_gold_rate

create table usd_per_gram(
 year varchar(8), USD_tounce decimal(10,2), USD_gram decimal(10,2)
)

insert into usd_per_gram(year, USD_tounce) 
select Date, USD
from annual_gold_rate

update usd_per_gram
set USD_gram = USD_tounce / 31.10

select * from usd_per_gram
