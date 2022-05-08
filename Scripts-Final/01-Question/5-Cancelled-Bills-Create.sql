create table Cancelled_Bills (Inv_Id int, Date date, 
Reason varchar(50), foreign
key(Inv_Id) references billing_details(Inv_Id));
