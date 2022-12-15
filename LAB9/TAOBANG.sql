create table Lop(
MaLop char(5) not null primary key, 
TenLop nvarchar(20), 
SiSo int)
go
create table Sinhvien(
MaSV char(5) not null primary key,
Hoten nvarchar(20), 
Ngaysinh date, 
MaLop char(5) constraint fk_malop references lop(malop))
go
create table MonHoc(
MaMH char(5) not null primary key, 
TenMH nvarchar(20))
go
create table KetQua(
MaSV char(5) not null, 
MaMH char(5) not null, 
Diemthi float,
constraint fk_Masv foreign key(MaSV) references sinhvien(MaSV),
constraint fk_Mamh foreign key(MaMH) references Monhoc(MaMH),
constraint pk_Masv_Mamh primary key(Masv, mamh))
go