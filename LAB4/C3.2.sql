BEGIN TRY
DECLARE @RESULT INT
SET @RESULT = 55/0
END TRY
BEGIN CATCH 
DECLARE 
@ERMESSAGE NVARCHAR(2480),
@ERSEVERITY INT,
@ERSTATE INT
SELECT 
@ERMESSAGE = ERROR_MESSAGE(),
@ERSEVERITY = ERROR_SEVERITY(),
@ERSTATE = ERROR_STATE()
RAISERROR(@ERMESSAGE,
          @ERSEVERITY,
		  @ERSTATE)
END CATCH
