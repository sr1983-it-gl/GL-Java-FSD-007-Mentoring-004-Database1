create table Cancelled_Orders (Order_Id int, 
Date date, Reason varchar(50), foreign
key(Order_Id) references Orders(Id));
