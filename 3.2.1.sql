/*创建简单数据库的语句*/
CREATE DATABASE Products
ON
(
 NAME = prods_dat,
 FILENAME = 'E:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\prods.mdf',
 SIZE = 4,
 MAXSIZE = 10,
 FILEGROWTH = 1

)