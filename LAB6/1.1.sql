CREATE TRIGGER trg_insertNHANVIEN on NHANVIEN
for insert
as
if(select LUONG from inserted) <15000
    begin
	   print'Luong phai lon hon 15000'
	   rollback transaction
	   end