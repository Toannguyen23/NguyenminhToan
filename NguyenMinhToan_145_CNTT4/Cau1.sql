create table MonHoc(
MaMon char(5) not null primary key,
TenMon nvarchar(20),
SoTC int)
create table SinhVien(
MaSV char(5) not null primary key,
HoTen nvarchar(30),
NgaySinh smalldatetime)
create table Diem(
MaSV char(5) not null,
MaMon char(5) not null,
Diemthi float,
constraint fk_Masv foreign key(MaSV) references SinhVien(MaSV),
constraint fk_Mamh foreign key(MaMon) references Monhoc(MaMon),
constraint pk_Masv_Mamh primary key(MaSV, MaMon))
 
 go 
 insert into MonHoc values
 ('MM01','Toan Cao Cap',2),
 ('MM02','He Quan Tri Co So Du Lieu',3),
 ('MM03','BigData',3)
 insert into SinhVien values
 ('SV01','Minh Toan','2002-12-4'),
 ('SV02','Phuong Dinh','2002-2-9'),
 ('SV03','Thanh Phuc','2001-1-2')
 insert into Diem values
 ('SV01','MM01',9),
 ('SV02','MM02',8),
 ('SV03','MM03',10),
 ('SV01','MM02',10),
 ('SV02','MM03',9)
 go

 select *
 from MonHoc

 go

 select *
 from SinhVien

 go
 select *
 from Diem