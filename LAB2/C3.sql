DECLARE @AVGLUONG FLOAT
SELECT  @AVGLUONG=AVG(LUONG)
FROM NHANVIEN
SELECT TENPHG,COUNT (*) AS SOLUONG
FROM PHONGBAN,NHANVIEN
WHERE  MAPHG =PHG 
GROUP BY TENPHG
HAVING @AVGLUONG>30000