create table Billing_Details(Inv_Id int Primary key auto_increment, 
Date date, Order_Id
int, Delivery_Status varchar(30), foreign key(Order_Id) 
references Orders(Id));