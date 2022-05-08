
delete from cancelled_bills;


insert into cancelled_bills values((
select Inv_id from billing_details where date = '2021-10-03' 
and delivery_status = 'Undelivered'
), '2021-10-04', 'Insufficient Amount');

select * from cancelled_bills;

