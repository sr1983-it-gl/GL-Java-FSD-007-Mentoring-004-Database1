delete from Orders;


insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) 
values('2021-10-01',
(select id from Cust_Details where phone_no = '1432245789'), 
1, 'online', 'cancelled');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) 
values('2021-10-01',
(select id from Cust_Details where phone_no = '1871614322'), 
1, 'POD', 'Ordered');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-02',
(select id from Cust_Details where phone_no = '1614322551'), 4, 'POD', 'Cancelled');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-03',
(select id from Cust_Details where phone_no = '1432245789'), 1, 'POD', 'Ordered');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-04',
(select id from Cust_Details where phone_no = '1871614322'), 1, 'Online', 'Ordered');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-05',
(select id from Cust_Details where phone_no = '1432245789'), 1, 'Online', 'Ordered');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-06',
(select id from Cust_Details where phone_no = '1000614322'), 4, 'Online', 'Ordered');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-07',
(select id from Cust_Details where phone_no = '1614322551'), 9, 'POD', 'Ordered');

insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-09',
(select id from Cust_Details where phone_no = '14433245789'), 5, 'Online', 'Ordered');

select * from orders;

