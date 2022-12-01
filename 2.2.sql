CREATE TRIGGER trg_SumEmpsForUpdate
ON NHANVIEN
AFTER update
AS
IF (select top 1 PHAI FROM deleted) != (select top 1 PHAI FROM inserted)
   BEGIN
      Declare @male int, @female int;
      SELECT @female = count(Manv) from NHANVIEN where PHAI = N'Nữ';
      SELECT @male = count(Manv) from NHANVIEN where PHAI = N'Nam';
      PRINT N'Tổng số nhân viên là nữ: ' + cast(@female as varchar);
      PRINT N'Tổng số nhân viên là nam: ' + cast(@male as varchar);
   END;

UPDATE [dbo].[NHANVIEN]
   SET [HONV] = 'Tín'
      ,[PHAI] = N'Nữ'
 WHERE  MaNV = '345'