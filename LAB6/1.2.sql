create trigger trg_insertNHANVIEN on NHANVIEN
for insert 
as
declare @age int
set @age = year(getdate()) - (select year(NGSINH) from inserted)
if(@age<18 or @age>65)
begin
print'Tuoi khong hop le'
rollback transaction
end
