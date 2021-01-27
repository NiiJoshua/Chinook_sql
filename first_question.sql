/* 1a Total number of customers per country */
select "Country", count("CustomerId") as "Count"
from "Customer" x
where "CustomerId" in (select "CustomerId" from "Customer" y where x."Country" = y."Country")
group by "Country" ;