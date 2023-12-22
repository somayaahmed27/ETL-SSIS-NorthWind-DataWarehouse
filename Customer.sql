SELECT TOP (1000) [CustomerID]
      ,[City]
      ,[Country]
      ,[Phone]
      ,[CustomerName]
  FROM [NorthWindWarehouse].[dbo].[Customer]

  ALTER TABLE [dbo].[Customer]
   ALTER COLUMN [CustomerID] nvarchar(50) NOT NULL;

  alter table [dbo].[Customer]
  Add constraint customer_pk primary key ([CustomerID]);

  -----drop coonstraint to create surrogate key-----
  alter table [dbo].[Customer]
  drop constraint customer_pk
  -------------------
  alter table [dbo].[Customer]
  add  customerkey int not null identity(1,1) ;
  ----make it primary key--------
   alter table [dbo].[Customer]
  Add constraint customer_pk primary key ([customerkey]);

 

