use Northwind
go

create view vmRrOrderList as
	select * from Products 
		where UnitPrice < ReorderLevel
go

select * from vmRrOrderList
go


/*declare @z varchar  = '字串'
select @z

declare @i int = 100
select @i*/


declare @i int = 0
declare @unitPrice decimal(10,3)
set @i = 3
select @i = UnitsInStock
	  ,@unitPrice = UnitPrice
	from Products where ProductID = 1
select @i
select @unitPrice
go

declare @a int = 100

if (@a between 10 and 20) 
begin
 print 'Yes'
 print 'OK'
end
else
begin
 print 'No'
end

go





create procedure usp_ListProd as
	select*from Products
go

execute usp_ListProd
go

drop procedure usp_ListProd
go

create procedure usp_ListProd
	@min int, 
	@max int
as
	select*from Products where UnitPrice between @min and @max
go
execute usp_ListProd 10,20 --call by order
execute usp_ListProd @max = 12,@min = 10 --call by name
go

drop procedure usp_ListProd
go
create procedure usp_ListProd
	@min int = 0, --預設值 
	@max int = 999
as
	select*from Products where UnitPrice between @min and @max
go
execute usp_ListProd @max = 12



drop procedure usp_ListProd
go
create procedure usp_ListProd
	@min int = null, 
	@max int = null
as
if (@min is null) --注意是is 不是=
	set @min = 10
if (@max is null)
	select @max = max(UnitPrice) from Products
	select*from Products where UnitPrice between @min and @max
go
execute usp_ListProd 
go

declare @i int = 0
set @i = 1
while(@i <= 3)
begin
	print @i
	set @i = @i + 1
end

