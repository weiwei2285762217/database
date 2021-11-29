/*指定多个*/
CREATE DATABASE Archive
ON
/*创建主数据库文件Arch1*/
PRIMARY 
(
 NAME = Arch1,
 FILENAME = 'D:\Mydb\Archdat1.mdf',
 SIZE = 5MB,
 MAXSIZE = 30,
 FILEGROWTH = 2

),
/*创建次数据库文件Arch2*/
(
 NAME = Arch2,
 FILENAME = 'D:\Mydb\Archdat2.ndf',
 SIZE = 5MB,
 MAXSIZE = 30,
 FILEGROWTH = 2

),
/*创建次数据库文件Arch3*/
(
 NAME = Arch3,
 FILENAME = 'D:\Mydb\Archdat3.ndf',
 SIZE = 5MB,
 MAXSIZE = 30,
 FILEGROWTH = 2

)
LOG ON
/*创建事物日志文件Archlog1*/
(
 NAME = Archlog1,
 FILENAME = 'D:\Mydb\Archlog1.ldf',
 SIZE = 5MB,
 MAXSIZE = 20,
 FILEGROWTH = 2
),
/*创建事物日志文件Archlog2*/
(
 NAME = Archlog2,
 FILENAME = 'D:\Mydb\Archlog2.ldf',
 SIZE = 5MB,
 MAXSIZE = 20,
 FILEGROWTH = 2
)