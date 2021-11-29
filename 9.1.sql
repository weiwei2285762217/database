--select x.St_ID,x.St_Name,y.Score
--from St_Info x,S_C_Info y
--where x.St_ID=y.St_ID and y.Score between 70 and 80

--select x.St_ID,x.St_Name,y.Score
--from St_Info x,S_C_Info y,C_Info z
--where x.St_ID=y.St_ID and y.C_NO = z.C_No and z.C_Name = 'C++程序设计基础'
--select x.St_ID,x.St_Name,z.C_Name, y.Score
--from St_Info x,S_C_Info y,C_Info z
--where x.St_ID=y.St_ID and y.C_NO = z.C_No and y.Score<60

--select st.St_ID,st.St_Name,c.C_Name, sc.Score
--from St_Info st join S_C_Info sc on st.St_ID=sc.St_ID join C_Info c on sc.C_NO=c.C_No
--where Cl_Name like '法学%'
--order by st.St_ID

--select C_Name as 课程名称, MAX(Score) as 最高分
--from S_C_Info sc join C_Info c on sc.C_NO=c.C_No
--group by C_Name

--select a.C_No,a.C_Name,b.St_ID,b.Score
--from C_Info a left outer join S_C_Info b on a.C_No = b.C_NO

--select a.C_No,a.C_Name,b.St_ID,b.Score
--from C_Info a right outer join S_C_Info b on a.C_No = b.C_NO

--select a.C_No,a.C_Name,b.St_ID,b.Score
--from C_Info a full outer join S_C_Info b on a.C_No = b.C_NO

--select a.St_ID as 学号,a.St_Name as 姓名, AVG(Score) as 平均成绩
--from St_Info a inner join S_C_Info b on a.St_ID = b.St_ID
--     inner join C_Info c on b.C_NO = c.C_No
--GROUP BY a.St_ID, a.St_Name
--having AVG(Score)>85 

--select c.C_No,c.C_Name,c.C_Credit,a.St_Name,b.Score
--from St_Info a inner join S_C_Info b on a.St_ID = b.St_ID
--     inner join C_Info c on b.C_NO = c.C_No
--where c.C_Type='必修'

select a.St_ID 学号,a.St_Name 姓名,b.C_NO 课程编号,b.Score as 分数
from St_Info a inner join S_C_Info b on a.St_ID = b.St_ID
--order by a.St_ID
where Score=(select MAX(score)from S_C_Info where St_ID=a.st_id)
--compute max(b.score) by a.st_id

--select a.St_ID 学号,a.St_Name 姓名,max(b.Score) as 分数
--from St_Info a inner join S_C_Info b on a.St_ID = b.St_ID
--group by a.St_ID,a.St_Name

--select *
--from St_Info a right outer join S_C_Info b on a.St_ID = b.St_ID








--select a.St_ID 学号,a.St_Name 姓名,max(b.Score) as 分数
--into newtem
--from St_Info a inner join S_C_Info b on a.St_ID = b.St_ID
--group by a.St_ID,a.St_Name
--go
--select distinct a.学号,a.姓名,b.C_NO 课程编号,a.分数
--from newtem a left outer join S_C_Info b on (a.分数 = b.Score and a.学号 = b.St_ID)
--drop table newtem


--select st.St_ID 学号,st.St_Name 姓名,SUM(sc.Score) 总成绩
--from St_Info st left outer join S_C_Info sc on st.St_ID = sc.St_ID
--group by st.St_ID,st.St_Name

--select a.St_ID 学号,a.St_Name 姓名, c.C_Name 课程名称,b.Score as 分数
--from St_Info a inner join S_C_Info b on a.St_ID = b.St_ID inner join C_Info c on b.C_NO=c.C_No
--where a.St_Sex = '男' 