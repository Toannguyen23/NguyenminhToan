
create procedure Diem(@MaSV char(5),@MaMon char(5), @DiemThi float)
as
insert into Diem(MaSV,MaMon,Diemthi) values(@MaSV,@MaMon,@DiemThi)
go
Diem 'SV04','MM03',9
