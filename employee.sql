SELECT TOP (1000) [EmployeeID]
      ,[Fullname]
      ,[Title]
      ,[Country]
      ,[City]
  FROM [NorthWindWarehouse].[dbo].[Employee]

  alter table [dbo].[Employee]
  alter column [EmployeeID] nvarchar(50) not null;

  alter table [dbo].[Employee]
  add constraint Employee_Pk primary key ([EmployeeID]);

   -----drop coonstraint to create surrogate key-----
  alter table [dbo].[Employee]
  drop constraint Employee_Pk
  -------------------
  alter table [dbo].[Employee]
  add  employeekey int not null identity(1,1) ;

    ----make it primary key--------
  alter table [dbo].[Employee]
  Add constraint Employee_Pk primary key ([employeekey]);
