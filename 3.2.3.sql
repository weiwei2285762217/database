/*使用文件组创建*/
CREATE DATABASE Rsxxgl_db
ON
/*创建主数据库文件Rsx1_dat*/
PRIMARY 
(
 NAME = Rsx1_dat,
 FILENAME = 'D:\Mydb\Rsx1dat.mdf',
 SIZE = 3,
 MAXSIZE = 20,
 FILEGROWTH = 5%

),
(
 NAME = Rsx2_dat,
 FILENAME = 'D:\Mydb\Rsx2dat.ndf',
 SIZE = 3,
 MAXSIZE = 20,
 FILEGROWTH = 5%

),
/*创建文件组RsxxglGroup1*/
FILEGROUP RsxxglGroup1
(
 NAME = RGrp1Fi1_dat,
 FILENAME = 'D:\Mydb\RG1Fi1dt.ndf',
 SIZE = 3,
 MAXSIZE = 20,
 FILEGROWTH = 5
),
(
 NAME = RGrp1Fi2_dat,
 FILENAME = 'D:\Mydb\RG1Fi2dt.ndf',
 SIZE = 3,
 MAXSIZE = 20,
 FILEGROWTH = 5
),
/*创建文件组RsxxglGroup2*/
FILEGROUP RsxxglGroup2
(
 NAME = RGrp2Fi1_dat,
 FILENAME = 'D:\Mydb\RG2Fi1dt.ndf',
 SIZE = 3,
 MAXSIZE = 20,
 FILEGROWTH = 5
),
(
 NAME = RGrp2Fi2_dat,
 FILENAME = 'D:\Mydb\RG2Fi2dt.ndf',
 SIZE = 3,
 MAXSIZE = 20,
 FILEGROWTH = 5
)
LOG ON
/*创建事务日志文件Rsxxgl_log*/
(
 NAME = Rsxxgl_log,
 FILENAME = 'D:\Mydb\Rsxxgllog.Ldf',
 SIZE = 1MB,
 MAXSIZE = 25MB,
 FILEGROWTH = 3MB
)