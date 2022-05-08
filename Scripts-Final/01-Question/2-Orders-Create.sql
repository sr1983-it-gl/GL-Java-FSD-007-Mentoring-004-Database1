create table Orders (Id int primary key auto_increment, 
Date date, Cust_Id int, Quantity
int, Payment_type varchar(30), 
Status varchar(30), foreign key(Cust_Id) references
Cust_details(Id))