insert into PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
values ('7','CNTT','008','2002-04-28')

create proc lab5_bai3_a
	@MaPB int, @TenPB nvarchar(20),
	@MaTP varchar(10), @NgayNhanChuc date
as
	begin
		if(exists(select * from PHONGBAN where MaPHG=@MaPB))
			print'Them that bai'
		else 
			begin
				insert into PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
				values (@MaPB,@TenPB,@MaTP,@NgayNhanChuc)
				print 'Them thanh cong'
		end
end