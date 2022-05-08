
select * from billing_details;
select * from orders;

select * from cust_details;

select * from pricing;

select cob.id, cob.name, Order_ID, Order_Date, type, month, year, connection_type, price from pricing as pricing
inner join 
(
select id, name, ord_bd.o_id as Order_ID, ord_bd.o_date Order_Date, ord_bd.bd_inv_id, ord_bd.bd_date, 
monthname(ord_bd.bd_date) cob_month, year(ord_bd.bd_date) cob_year, connection_type from cust_details as cd
inner join
(
	select id as o_id, cust_id, bd.inv_id as bd_inv_id, bd.bd_date as bd_date, date as o_date from orders as ord
	inner join
	(
	select date as bd_date, inv_id, order_id from billing_details where Delivery_Status = 'Delivered'
	)
	as bd
	on ord.id = bd.order_id
)
as ord_bd
on cd.id = ord_bd.cust_id
) 
as cob
on pricing.type = cob.connection_type AND pricing.month = cob.cob_month AND pricing.year = cob.cob_year;



