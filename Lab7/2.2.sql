
CREATE VIEW VW_TUOI_NV AS 
SELECT TENNV,LUONG,YEAR (GETDATE())-YEAR(NGSINH) AS 'TUỔI' FROM NHANVIEN
SELECT * FROM VW_TUOI_NV
GO