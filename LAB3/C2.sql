﻿SELECT THOIGIAN as Tổngthờigian, ceiling(CAST(PHANCONG.THOIGIAN AS decimal(6,2)))
  FROM PHANCONG, DEAN

  GO
  SELECT THOIGIAN as Tổngthờigian, floor(CAST(PHANCONG.THOIGIAN AS decimal(6,2)))
  FROM PHANCONG, DEAN

  GO
  SELECT HONV+' '+TENLOT+' '+TENNV, LUONG FROM NHANVIEN
  WHERE LUONG > (SELECT ROUND(AVG(luong),2) FROM NHANVIEN WHERE PHG=(SELECT MAPHG FROM PHONGBAN WHERE TENPHG = N'Nghiên cứu'))