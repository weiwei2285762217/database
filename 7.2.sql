--SELECT * from St_Info
--SELECT St_ID, St_Name, Birthdate from St_Info
--SELECT St_Name, Address from St_Info where St_ID = '2001160307'
--select St_ID, St_Name from St_Info where St_Sex = '男'
--select St_ID, St_Name, Cl_Name  from St_Info where Cl_Name = '材料科学1702'
--select  * from C_Info where C_Credit=3 or C_Credit=4 
--select C_NO 课程编号, AVG(Score) 平均成绩  from S_C_Info GROUP by C_NO
--select St_ID, St_Name, St_Sex, Birthdate  from St_Info where St_Name like '张%'
/*select MAX(YEAR(GETDATE())-YEAR(birthdate)) 最大年龄, MIN(YEAR(GETDATE())-YEAR(birthdate)) 最小年龄 
from St_Info where Cl_Name like '%临床%'*/
--select St_ID,St_Name,Address  from St_Info where Address like '%山%'