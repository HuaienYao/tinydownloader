@echo off
if "%~x1" equ "" goto end
if "%~x1" equ ".txt" goto txt
goto end

:txt
cd /d %~dp0
java -cp .;./lib/*;./bin; ga.uuid.tinydownload.App "%~f1"
echo.
echo 	press any key to exit
pause>nul&EXIT

:end
call :txt ./resources/urls.txt
exit