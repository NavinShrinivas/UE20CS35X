-- create database partdb
use partdb

EXEC sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE WITH OVERRIDE;  
GO  
EXEC sp_configure 'max degree of parallelism', 4;  
GO  
RECONFIGURE WITH OVERRIDE;  
GO    

CREATE PARTITION FUNCTION CustRangePF11 (char)  
    AS RANGE LEFT FOR VALUES ('c','e') ;  -- ab cd ef left ranges
GO

ALTER DATABASE [partdb] ADD FILEGROUP [FG1]
GO
USE [partdb]
GO
ALTER DATABASE [partdb] ADD FILEGROUP [FG2]
GO
ALTER DATABASE [partdb] ADD FILE ( NAME = N'testFG1', FILENAME = '/var/opt/mssql/data/test1.md' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FG1]
GO
ALTER DATABASE [partdb] ADD FILE ( NAME = N'testFG2', FILENAME = '/var/opt/mssql/data/test2.md' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FG2]
GO
ALTER DATABASE [partdb] ADD FILEGROUP [FG3]
GO
ALTER DATABASE [partdb] ADD FILE ( NAME = N'testFG3', FILENAME = '/var/opt/mssql/data/test3.md' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FG3]
GO

CREATE PARTITION SCHEME CustRangePS1  
    AS PARTITION CustRangePF11  
    TO (FG1, FG2, FG3) ;  
GO 


CREATE TABLE students_no_index(SRN VARCHAR(15), student_name varchar(20), DOB DATETIME, branch CHAR(3), section char(1)) ON CustRangePS1 (section) ;

CREATE TABLE teachers_no_index(teacher_name varchar(20), DOB DATETIME, branch CHAR(3), section char(1)) ON CustRangePS1 (section) ;


DECLARE @counter BIGINT;  
SET @counter = 0;  
WHILE @counter < 1000000
   BEGIN  
      DECLARE @localsection char;
      SELECT @localsection = CHAR(cast((5) * rand() + 65 AS INTEGER));
      insert into students_no_index values ('PES2UG20CS23'+@localsection,'andomlygenerated'+@localsection,'11/10/2002','CSE',@localsection);
      SET @counter = @counter + 1  
   END;  
GO 


DECLARE @counter BIGINT;  
SET @counter = 0;  
WHILE @counter < 100000
   BEGIN  
      DECLARE @localsection char;
      SELECT @localsection = CHAR(cast((5) * rand() + 65 AS INTEGER));
      insert into teachers_no_index values ('teacherrandom'+@localsection,'11/10/2002','CSE',@localsection);
      SET @counter = @counter + 1  
   END;  
GO 


select count(*) from students_no_index as s JOIN teachers_no_index as t ON s.section=t.section AND s.section = 'C';

select count(*) from students_no_index as s JOIN teachers_no_index as t ON s.branch=t.branch AND s.section='C';