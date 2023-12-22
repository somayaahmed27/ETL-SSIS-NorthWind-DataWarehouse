SELECT TOP (1000) [ProductID]
      ,[ProductName]
      ,[SupplierID]
      ,[UnitPrice]
      ,[QuantityPerUnit]
      ,[Discontinued]
      ,[CategoryName]
	  ,[Productkey]
  FROM [NorthWindWarehouse].[dbo].[Product];

  
  alter table [dbo].[Product]
  alter column [ProductID] int not null;

  alter table [dbo].[Product]
  alter column [ProductID] nvarchar(50) not null;


  alter table [dbo].[Product]
  add constraint product_Pk primary key ([ProductID]);



     -----drop coonstraint to create surrogate key-----
  alter table [dbo].[Product]
  drop constraint product_Pk
  -------------------
  alter table [dbo].[Product]
  add  Productkey int not null identity(1,1) ;

    ----make it primary key--------
  alter table [dbo].[Product]
  Add constraint product_Pk primary key (Productkey);