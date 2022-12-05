﻿IF OBJECT_ID('FN_LUONG_NV_PB') IS NOT NULL
DROP FUNCTION FN_LUONG_NV_PB
GO
CREATE FUNCTION FN_LUONG_NV_PB(@TENPHONGBAN NVARCHAR(15))
RETURNS @LISTNV TABLE(HOTEN NVARCHAR(60), LUONG FLOAT)
AS 
BEGIN
DECLARE @LUONGTB FLOAT 
SELECT @LUONGTB=AVG(LUONG) FROM NHANVIEN
INNER JOIN PHONGBAN ON PHONGBAN.MAPHG=NHANVIEN.PHG
WHERE UPPER(TENPHG)=UPPER(@TENPHONGBAN)
INSERT INTO @LISTNV
SELECT CONCAT(HONV, ' ', TENLOT,' ',TENNV), LUONG FROM NHANVIEN 
WHERE LUONG>@LUONGTB
RETURN
END
SELECT * FROM PHONGBAN
SELECT * FROM DBO.FN_LUONG_NV_PB(N'ĐIỀU HÀNH')