create proc ktra @msv char(5)
as
begin 
 declare @n int
 set @n=(select count(*) from ketqua where Masv=@msv)
 if @n=0 
 print 'sinh vien '+@msv + 'khong thi mon nao'
 else
 print 'sinh vien '+ @msv+ 'thi '+cast(@n as char(2))+ 'mon'
end 