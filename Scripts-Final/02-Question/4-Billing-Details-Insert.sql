delete from billing_details;

insert into billing_details(Date, Order_Id, Delivery_Status) values (
'2021-10-03', (
select id from orders where cust_id = (
select id from cust_details where phone_no = '1432245789') 
and status = 'cancelled'
),'Delivered');

insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-10-03', (
select id from orders where cust_id = (select id from cust_details where phone_no = '1871614322')
and payment_type = 'POD'
),'Undelivered');

insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-10-04', (
select id from orders where cust_id = (select id from cust_details where phone_no = '1432245789')
and status = 'Ordered' and payment_type = 'POD'
),'Delivered');

insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-10-06', (
select id from orders where cust_id = (select id from cust_details where phone_no = '1871614322')
and status = 'Ordered' and payment_type = 'Online'),
'Delivered');

insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-11-06', (
select id from orders where cust_id = (select id from cust_details where phone_no = '1432245789')
and status = 'Ordered' and payment_type = 'Online'
),
'Delivered');

insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-11-06', (
select id from orders where cust_id = (select id from cust_details where phone_no = '1000614322')
and status = 'Ordered' and payment_type = 'Online'
),
'Delivered');

insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-11-08', (
select id from orders where cust_id = (select id from cust_details where phone_no = '1614322551')
and status = 'Ordered' and payment_type = 'POD'
),
'Delivered'); 

select * from billing_details;

