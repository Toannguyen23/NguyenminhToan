﻿ SELECT*, 
  CAST(THOIGIAN AS int) AS int THỜIGIAN,
  CAST(THOIGIAN AS decimal(5,2)) AS dec THỜIGIAN,
  CONVERT(decimal (5,2),THOIGIAN) AS dec1 THỜIGIAN
  FROM PHANCONG