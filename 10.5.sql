--USE [Student]
--GO
--CREATE VIEW v_stu_i
--AS
--SELECT     St_Name AS 姓名, St_Sex AS 性别, Address AS 家庭住址
--FROM         dbo.St_Info

--GO
--select * from v_stu_i


--USE [Student]
--GO
--CREATE VIEW v_stu_c
--AS
--SELECT     s.St_ID AS 学号, s.St_Name AS 姓名, c.C_Name AS 课程名称
--FROM         C_Info c INNER JOIN S_C_Info sc ON c.C_No = sc.C_NO 
--             INNER JOIN St_Info s ON sc.St_ID = s.St_ID

--GO
--select * from v_stu_c

USE [Student]
GO
CREATE VIEW v_stu_g
AS
SELECT     s.St_ID AS 学号, s.St_Name AS 姓名, c.C_Name AS 课程名称, sc.Score AS 成绩
FROM         C_Info c INNER JOIN S_C_Info sc ON c.C_No = sc.C_NO 
             INNER JOIN St_Info s ON sc.St_ID = s.St_ID

GO
select * from v_stu_g


