select HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG from NHANVIEN
insert into NHANVIEN(HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
values('Phạm ', 'Bá ', 'Sáng ', '129', '2002-04-28', 'Đồng Nai ', 'Nam','24000', '004', '6')

create proc lab5_bai3_c
@HONV varchar(10), @TENLOT varchar(10), @TENNV varchar(10),
@MANV varchar(10), @NGSINH date, @DCHI varchar(50), @PHAI varchar(10),
@LUONG float, @MA_NQL varchar(10) = null, @PHG int
as
begin
	declare @age int
	set @age = YEAR(GETDATE()) - YEAR(@NGSINH)
	if @PHG = (select MaPHG from PHONGBAN where TENPHG ='CNTT')
		begin
			if @LUONG < 25000
				set @MA_NQL = '009'
			else set @MA_NQL= '005'

			if(@PHAI = 'Nam' and (@age >= 18 and @age <= 65))
				or (@PHAI = N'Nữ' and (@age >= 18 and @age <= 60))
				begin
					insert into NHANVIEN(HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
					values(@HONV, @TENLOT, @TENNV, @MANV, @NGSINH, @DCHI, @PHAI, @LUONG, @MA_NQL, @PHG)
				end
			else
				print 'khong thuoc do tuoi lao dong'
		end
	else
		print 'khong phai phong CNTT'
end
exec lab5_bai3_c 'Phạm ', 'Bá ', 'Sáng ', '129', '2002-04-28', 'Đồng Nai ', 'Nam','24000', '004', '6'
exec lab5_bai3_c 'Đặng ', 'Lê ','Hoàng ','Nam', '130', '2020-09-5', 'TP HCM', 'Nam','24000', '005', '9'
exec lab5_bai3_c 'Nguyễn ', 'Minh ', 'Toàn ', '018', '1954-02-11', 'Thái Bình ', 'Nam','24000', '004', '6'