/*改名*/
/*ALTER DATABASE Archive
MODIFY FILE(NAME = Arch1,NEWNAME = Arch1_main)*/
/*改大小*/
/*ALTER DATABASE Archive
MODIFY FILE
(
 NAME = Arch1_main,
 MAXSIZE = 35,
 FILEGROWTH = 5
)*/
/*删除文件*/
/*ALTER DATABASE Archive
REMOVE FILE Arch3*/
/*删除数据库*/
/*DROP DATABASE Archive,Rsxxgl_db*/
/*重命名*/
/*ALTER DATABASE Sales MODIFY NAME = NewSales*/
/*增加大小*/
/*ALTER DATABASE Products
MODIFY FILE
(
 NAME = Prods_dat,
 SIZE = 10MB
)*/
/*CREATE DATABASE Products*/
/*CREATE DATABASE TEST*/
ALTER DATABASE NewSales
REMOVE FILE TEST