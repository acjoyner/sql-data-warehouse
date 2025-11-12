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
