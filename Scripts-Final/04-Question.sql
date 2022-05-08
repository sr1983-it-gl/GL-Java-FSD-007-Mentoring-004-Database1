# Display one customer from each product category who purchased maximum no of cylinders with 
# Connection_Type, Cust_Id, Name and Quantity purchased.

select * from cust_details;

select c_id, co.name, connection_type from 
(select cd.id as c_id, name, connection_type, ord.no_of_cylinders from cust_details as cd
inner join
(
select id, cust_id, sum(quantity) as no_of_cylinders from orders group by cust_id
)
as ord
on cd.id = ord.cust_id
)
as co
group by connection_type
