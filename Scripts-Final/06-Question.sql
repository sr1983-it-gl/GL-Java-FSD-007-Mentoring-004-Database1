
select * from billing_details;


select * from orders;

select * from cust_details;

select cd.id, name, ord_bd.bd_date from cust_details as cd
inner join
(
select id, cust_id, bd.inv_id, bd_date from orders as ord
inner join
(select inv_id, date as bd_date, order_id from billing_details where Delivery_Status = 'Delivered')
as bd
on ord.id = bd.order_id
)
as ord_bd
on cd.id = ord_bd.cust_id


