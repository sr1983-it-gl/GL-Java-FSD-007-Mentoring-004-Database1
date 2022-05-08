
# Display customer Id, Name, undelivered date and reason for undelivery using joins.

select C.Id as Cust_Id, C.Name, R.Cancelled_Bill_Date, R.Reason from cust_details as
C inner join
(select cust_id, Cancelled_Bill_Date, Reason from orders as O inner join
(select B.order_id, P.Date as Cancelled_Bill_Date, P.Reason from billing_details as B
inner join
(select * from cancelled_bills)
as P on P.Inv_Id = B.Inv_Id)
as Q on Q.order_id = O.Id)

as R on R.cust_id = C.Id;

select cd.id, cd.name, ord_bd_cb.cancelled_date, ord_bd_cb.cancelled_reason  from cust_details as cd 
inner join
(
select id, cust_id, bd_cb.bd_date as cancelled_date, bd_cb.reason as cancelled_reason from orders as ord
inner join
(
select bd.inv_id, bd.date as bd_date, order_id, cb.reason as reason from billing_details as bd
inner join
(
select inv_id, date, reason from cancelled_bills
)
as cb
on bd.inv_id = cb.inv_Id
)
as bd_cb
on ord.id = bd_cb.order_id
)
as ord_bd_cb
on cd.id = ord_bd_cb.cust_id


