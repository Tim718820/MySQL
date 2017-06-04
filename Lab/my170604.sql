drop table test1


create table test1
(
	id int not null primary key,
	data int null default 100,
	data2 int not null 

)

alter table test1
	add constraint chk_data check (data>=0)
insert into test1 (id,data,data2) values (10,100,1000)
insert into test1 (id,data,data2) values (10,-1,1000)






use TestDB
go

select * into Customers from Northwind.dbo.Customers
select * into Orders from Northwind.dbo.Orders
go

select * from Customers where CustomerID = ''
select * from Orders

alter table Orders
	add constraint FK_Customers_Orders
		foreign key (CustomerID) references Customers(CustomerID)
		on update cascade on delete cascade

alter table Orders
	DROP constraint FK_Customers_Orders

	 
	  