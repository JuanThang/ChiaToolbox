@ECHO OFF
TITLE=Chia Node DB Backup

CLS
ECHO.
ECHO ..........................................................
ECHO !! Please Shutdown your Node prior to restore !!
ECHO ..........................................................
ECHO Press any key to confirm...
pause > nul

:MENU
ECHO ...............................................
ECHO.
ECHO 1 - Backup
ECHO 2 - Schedule Backup
ECHO 3 - Restore
ECHO 4 - Exit
ECHO.
ECHO ...............................................

SET /P M=Type 1, 2, 3 or 4 then press ENTER:
IF %M%==1 GOTO BACK
IF %M%==2 GOTO SCHE
IF %M%==3 GOTO REST
IF %M%==4 GOTO EOF

:SCHE
ECHO ...............................................
ECHO.
ECHO 1 - Daily
ECHO 2 - Weekly
ECHO 3 - Monthly
ECHO 4 - Return
ECHO.
ECHO ...............................................
SET /P M=Type 1, 2, 3 or 4 then press ENTER:
IF %M%==1 GOTO DAIL
IF %M%==2 GOTO WEEK
IF %M%==3 GOTO MONT
IF %M%==4 GOTO MENU

:DAIL
ECHO.
set /p T=Enter Time (HH:MM):
copy .\"Chia DB Backup.bat" "%USERPROFILE%\.chia\mainnet\db\Chia DB Backup.bat"
SCHTASKS /CREATE /SC DAILY /TN "Chia Database Backup" /TR "%USERPROFILE%\.chia\mainnet\db\Chia DB Backup.bat" /ST %T%
GOTO MENU

:WEEK
ECHO.
set /p D=Select Day (Mon, Tue, Wed, Thu, Fri, Sat, Sun):
set /p T=Enter Time (HH:MM):
copy .\"Chia DB Backup.bat" "%USERPROFILE%\.chia\mainnet\db\Chia DB Backup.bat"
SCHTASKS /CREATE /SC WEEKLY /D %D% /TN "Chia Database Backup" /TR "%USERPROFILE%\.chia\mainnet\db\Chia DB Backup.bat" /ST %T%

:MONT
ECHO.
set /p D=Select Day (1-31 or last):
set /p T=Enter Time (HH:MM):
copy .\"Chia DB Backup.bat" "%USERPROFILE%\.chia\mainnet\db\Chia DB Backup.bat"
SCHTASKS /CREATE /SC MONTHLY /D %D% /TN "Chia Database Backup" /TR "%USERPROFILE%\.chia\mainnet\db\Chia DB Backup.bat" /ST %T%
GOTO MENU

:BACK
copy "%USERPROFILE%"\.chia\mainnet\db\blockchain_v1_mainnet.sqlite "%USERPROFILE%"\.chia\mainnet\db\blockchain_v1_mainnet.sqlite.bak
GOTO MENU

:REST
copy "%USERPROFILE%"\.chia\mainnet\db\blockchain_v1_mainnet.sqlite.bak "%USERPROFILE%"\.chia\mainnet\db\blockchain_v1_mainnet.sqlite /y
GOTO MENU