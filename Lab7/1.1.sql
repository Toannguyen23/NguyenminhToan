SELECT YEAR(GETDATE())-YEAR(NGSINH) AS N'Tuoi' FROM NHANVIEN
WHERE MANV = 1
if Object_ID('fn_TuoiNV') is not null
 drop function fn_TuoiNV
 go
CREATE FUNCTION fn_TuoiNV(@MaNV nvarchar(9))
returns int
as 
begin 
return(select YEAR(GETDATE())-YEAR(NGSINH) as N'Tuoi' from NHANVIEN where MANV=@MaNV)
end
