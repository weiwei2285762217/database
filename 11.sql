--use Student
--go
--create proc selectScore
--AS
--select a.St_ID,a.St_Name,b.C_Name,c.Score
--from St_Info a,C_Info b,S_C_Info c
--where a.St_ID = c.St_ID and b.C_No = c.C_NO and c.Score >= 90
--order by c.Score DESC
--go

--use Student
--go
--create proc cCount
--AS
--select COUNT(C_No) as 课程门数 from C_Info
--go

--测试
--select a.St_Name,b.C_No,b.C_Name,c.Score
--from St_Info a,C_Info b,S_C_Info c
--where a.St_ID = c.St_ID and b.C_No = c.C_NO and a.St_ID = '2602170100'

--use Student
--go
--create proc studentScore @stuID varchar(20)
--AS
--select a.St_Name,b.C_No,b.C_Name,c.Score
--from St_Info a,C_Info b,S_C_Info c
--where a.St_ID = c.St_ID and b.C_No = c.C_NO and a.St_ID = @stuID
--go

--sp_help studentScore
--go
--sp_helptext studentScore

--exec dbo.studentScore @stuID = '2001160115'
--exec dbo.studentScore @stuID = '0603170109'
--exec dbo.studentScore @stuID = '2602170100'
--exec dbo.studentScore

--修改
--use Student
--go
--alter proc studentScore @stuID varchar(20) ='*'
--AS
--	if(@stuID='*')
--	begin
--	select a.St_Name,b.C_No,b.C_Name,c.Score
--		from St_Info a,C_Info b,S_C_Info c
--		where a.St_ID = c.St_ID and b.C_No = c.C_NO
--	end
--	else
--	begin
--		select a.St_Name,b.C_No,b.C_Name,c.Score
--		from St_Info a,C_Info b,S_C_Info c
--		where a.St_ID = c.St_ID and b.C_No = c.C_NO and a.St_ID = @stuID
--	end
--go
--exec dbo.studentScore

--use Student
--go
--create proc stdCCnt @Cnt int
--AS
--select a.St_ID 学号,St_Name 姓名,COUNT(*) 课程门数
--from St_Info a join S_C_Info b on a.St_ID = b.St_ID
--group by a.St_ID,St_Name
--having COUNT(*) = @cnt
--go
--执行两种
--exec dbo.stdCCnt 2
--exec dbo.stdCCnt @Cnt = 2

--use Student
--go
--create proc insertCinfo @cno char(10), @cname varchar(30), @ccredit tinyint
--AS
--insert into C_Info values (@cno,@cname,'',@ccredit,'')

--go

--use Student
--go
--create proc updataCinfo @cno char(10), @cname varchar(30),@ctype char(4) ='必修',@ccredit tinyint
--AS
--update C_Info set C_Name = @cname,C_Type = @ctype,C_Credit = @ccredit where C_No = @cno

--go

--use Student
--go
--create proc deletCinfo @cno char(10)
--AS
--delete C_Info where C_No = @cno

--go

--use Student
--go
--create proc stdDname @sname char(10),@dname char(30) output
--as
--select @dname = D_name
--from St_Info a join D_Info b on a.D_ID = b.D_ID
--where a.St_Name = @sname
--go

--declare @getdname char(30)
--exec dbo.stdDname '吴中华',@getdname output
--select @getdname 学院名称

--use Student
--go
--create proc getPractise @dname varchar(30)
--as
--select st.St_ID 学号, st.St_Name 姓名, c.C_No 课程编号, c.C_Name 课程名称
--from St_Info st join S_C_Info sc on st.St_ID = sc.St_ID join C_Info c on sc.C_NO=c.C_No join D_Info d on st.D_ID=d.D_ID
--where d.D_name=@dname and c.C_Type = '实践'
--go

--use Student
--go
--alter proc getPractise @dname varchar(30)
--as
--select st.St_ID 学号, st.St_Name 姓名, c.C_No 课程编号, c.C_Name 课程名称
--from St_Info st join S_C_Info sc on st.St_ID = sc.St_ID join C_Info c on sc.C_NO=c.C_No join D_Info d on st.D_ID=d.D_ID
--where d.D_name=@dname and c.C_Type = '实践'
--go
--exec dbo.getPractise @dname = '法学院'
--exec dbo.getPractise @dname = '材料科学与工程学院'

--测试
--select st.St_ID 学号, st.St_Name 姓名, c.C_No 课程编号, c.C_Name 课程名称, d.D_name
--from St_Info st join S_C_Info sc on st.St_ID = sc.St_ID join C_Info c on sc.C_NO=c.C_No join D_Info d on st.D_ID=d.D_ID
--where c.C_Type = '实践'

--sp_rename 'getPractise','getPctStu'

--use Student
--go
--alter proc getPctStu @dname varchar(30),@stuCount int output
--as
----select st.St_ID 学号, st.St_Name 姓名, c.C_No 课程编号, c.C_Name 课程名称
----from St_Info st join S_C_Info sc on st.St_ID = sc.St_ID join C_Info c on sc.C_NO=c.C_No join D_Info d on st.D_ID=d.D_ID
----where d.D_name=@dname and c.C_Type = '实践'
----group by c.C_No
------测试人次
----select @stuCount = count(c.C_Name)
----from St_Info st join S_C_Info sc on st.St_ID = sc.St_ID join C_Info c on sc.C_NO=c.C_No join D_Info d on st.D_ID=d.D_ID
----where d.D_name=@dname and c.C_Type = '实践'
----测试人数
--if(@dname in (select D_Name from D_Info))
--	begin
--		select @stuCount = COUNT(St_ID) from St_Info where St_ID in(
--		select distinct st.St_ID 学号
--		from St_Info st join S_C_Info sc on st.St_ID = sc.St_ID join C_Info c on sc.C_NO=c.C_No join D_Info d on st.D_ID=d.D_ID
--		where d.D_name=@dname and c.C_Type = '实践')
--		return 0
--	end
--else 
--	begin
--		print'院系不存在'
--		return -1
--	end
--go

--declare @i int
--declare @return int
--exec @i = dbo.getPctStu '法学', @return output
----select @i
----select @return as 人数

--sp_helptext getPctStu
drop proc getPctStu