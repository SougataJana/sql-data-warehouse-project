use master;
GO

if exists (select 1 from  sys.databases where name='Datawarehouse')
BEGIN
   alter database Datawarehouse set single_user with rollback immediate;
   drop database Datawarehouse ;
   end;
   go
create database Datawarehouse;
use Datawarehouse;

create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO

