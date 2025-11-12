/*
Create Database and Schemas
===========================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreaed.  Additionally, the script sets up three schemas within
  the database: 'bronze','silver', and 'gold'.
WARNING:
  Running the script will drop the entire 'DataWarehouse' database if it exists. 
  All data will be permenantly deleted.  Proceed with caution.






*/

-- Create Database 'DataWarehouse"

USE master;

CREATE DATABASE DataWarehouse;


--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

USE DataWarehouse;
GO

--Cete the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
