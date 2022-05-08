# Write a query to display a table with customer Id, Name, Connection_Type and No_Of Cylinders 
# ordered from orders table.

select id, name, connection_type, ord.quantity from cust_details 
as cd
inner join
(
	select cust_id, sum(quantity) as quantity, status from orders where status = 'Ordered' group by cust_id
) 
as ord
on cd.id = ord.cust_id;
