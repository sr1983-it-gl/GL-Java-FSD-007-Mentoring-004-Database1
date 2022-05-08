delete from cancelled_orders;

#
# OrderID - 1
# Order - 1 2021-10-01 6 1 online cancelled
# select id from orders where cust_id = '6'

# select id from orders where cust_id = (
#select id from cust_details where phone_no = '1432245789'
#)

insert into cancelled_orders values(
(select id from orders where cust_id = (
select id from cust_details where phone_no = '1432245789') 
and status = 'cancelled')
, '2021-10-02', 'Out of Station');


insert into cancelled_orders values(
(select id from orders where cust_id = (
select id from cust_details where phone_no = '1614322551') 
and status = 'cancelled'
), '2021-10-03', 'Mistakenly Ordered');

select * from cancelled_orders;
