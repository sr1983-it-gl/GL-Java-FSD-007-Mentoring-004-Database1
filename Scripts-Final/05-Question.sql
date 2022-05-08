# Display Customer Id, Successfully_Delivered and value of customer based on purchase of cylinders 
# using SQL Case Statement.
# when Successfully_Delivered >= 8 then 'Highly Valued'
# when Successfully_Delivered between 5 and 7 then 'Moderately Valued'
# Else 'Low Valued'

select * from orders;

select
CASE
	WHEN QUANTITY <5 THEN 'Low'
    WHEN QUANTITY =5 THEN 'Moderate'
    WHEN QUANTITY >5 THEN 'High'
END AS 'Quantity Weightage' from orders;


select * from billing_details;

select cust_id, sum(quantity) quantity,
CASE
	WHEN quantity >= 8 THEN 'High Valued'
    WHEN QUANTITY between 5 AND 7 THEN 'Moderate'
    WHEN QUANTITY < 5 THEN 'Low'
END AS 'Delivery Value'
from orders 
as ord
inner join
(
select order_id, delivery_status from billing_details where Delivery_Status = 'Delivered'
)
as bd
on ord.id = bd.order_id
group by cust_id


