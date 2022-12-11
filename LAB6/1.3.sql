CREATE TRIGGER trg_UpdateNHANVIEN on NHANVIEN
for update
as
if(select DCHI from inserted) like '%HCM%'
    begin
	   print'Dia chi khong hop le'
	   rollback transaction
	   end
update NHANVIEN set TENNV = 'NamNV' where MANV ='006'
