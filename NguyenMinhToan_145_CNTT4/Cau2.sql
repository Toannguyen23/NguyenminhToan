go
create function tksv (@tmh nvarchar(20))
returns int
as
begin
 declare @dem int
 set @dem = (select count(*)
 from Diem
where @dem<5)
 return @dem
end
go
select dbo.tksv ('Do Thi')