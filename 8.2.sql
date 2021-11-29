--select St_ID,St_Name from St_Info where St_ID in (select St_ID from S_C_Info where Score >=92)
--select * from S_C_Info where C_NO in (select C_NO from C_Info where C_Credit=4)
/*select St_Name, YEAR(GETDATE())-YEAR(Birthdate) as 年龄 from St_Info 
where YEAR(GETDATE())-YEAR(Birthdate) > all(
select YEAR(GETDATE())-YEAR(Birthdate) from St_Info where Cl_Name = '法学1603')*/
/*select St_ID,Score from S_C_Info where C_NO='9710041' and Score > any
(select Score from S_C_Info where C_NO = '29000011')*/
--select St_Name,Cl_Name from St_Info where St_ID not in
--(select St_ID from S_C_Info where C_NO = '9710041' or C_NO = '9710011')

--select C_NO,Score from S_C_Info where St_ID in
--(select St_ID from St_Info where St_Name like '王%' )

--select St_ID,St_Name from St_Info where St_ID in 
--(select St_ID from S_C_Info 
--group by St_ID
--having AVG(Score)>90)

--select C_No,C_Name from C_Info where C_No in
--(select C_No from S_C_Info
--group by C_NO
--having COUNT(*)>=4)
select St_ID,MAX(Score) from S_C_Info 
group by St_ID
