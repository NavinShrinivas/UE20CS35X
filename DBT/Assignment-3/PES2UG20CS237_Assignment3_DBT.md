# Assignment 3 DBT
## Details : 
- Name : P K Navin Shrinivas
- SRN : PES2UG20CS237
- Section : D
## Task A : 
- Creating partitions and inserting a million rows : 
- Code : 
```sql
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
AS RANGE LEFT FOR VALUES ('c','e') ; -- ab cd ef left ranges
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
DECLARE @counter SMALLINT;
SET @counter = 0;
WHILE @counter < 1000000
BEGIN
DECLARE @localsection char;
SELECT @localsection = CONVERT(varchar(255), NEWID())
insert into students_no_index values ('PES2UG20CS237'+@localsection,'andomlygenerated'+@localsection,'11/10/2002','CSE',@localsection);
SET @counter = @counter + 1
END;
GO
```
![image](DBT/Assignment-3/1.png)
## Query 1 : 
![[Pasted image 20230330232334.png]]
- Cost : 0.2026447 
## Query 2 : 
![[Pasted image 20230330232703.png]]
- Cost : 0.8922026
> Note : The second query was not based on partition and hence a very high time for execution can be observed.