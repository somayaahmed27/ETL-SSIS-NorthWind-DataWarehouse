SELECT TOP (1000) [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[EmployeeID]
      ,[OrderDate]
      ,[ShippedDate]
      ,[ShipCity]
      ,[ShipCountry]
      ,[UnitPrice]
      ,[Quantity]
      ,[Discount]
  FROM [NorthWindWarehouse].[dbo].[FactTable]

  alter table [dbo].[FactTable]
  Add constraint customer_facttabel_Fk foreign key ([CustomerID]) references [dbo].[Customer]([customerkey]);

  alter table [dbo].[FactTable]
  Add constraint employee_facttabel_Fk foreign key ([EmployeeID]) references [dbo].[Employee]([employeekey]);

    alter table [dbo].[FactTable]
  Add constraint product_facttabel_Fk foreign key ([ProductID]) references [dbo].[Product]([Productkey]);


-----drop constraints to create surrogate key---------
alter table [dbo].[FactTable]
drop constraint customer_facttabel_Fk ;

alter table [dbo].[FactTable]
drop constraint employee_facttabel_Fk ;

alter table [dbo].[FactTable]
drop constraint [product_facttable_Fk] ;

-------drop data to alter datatype----------

delete from [dbo].[FactTable];

---change datatype of keys-------
alter table [dbo].[FactTable]
alter column [CustomerID] int not null;
alter table [dbo].[FactTable]
alter column [EmployeeID] int not null;
alter table [dbo].[FactTable]
alter column [ProductID] int not null;

  