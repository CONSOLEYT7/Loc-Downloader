@echo off

:start1
color
title Loc-Downloader
cd package
echo Welcome To Loc-Downloader!
echo.
echo Wait 5 Seconds To Start
timeout /t 1 /nobreak >nul
echo Welcome To Loc-Downloader!
echo.
echo Wait 4 Seconds To Start
timeout /t 1 /nobreak >nul
echo Welcome To Loc-Downloader!
echo.
echo Wait 3 Seconds To Start
timeout /t 1 /nobreak >nul
echo Welcome To Loc-Downloader!
echo.
echo Wait 2 Seconds To Start
timeout /t 1 /nobreak >nul
echo Welcome To Loc-Downloader!
echo.
echo Wait 1 Seconds To Start
timeout /t 1 /nobreak >nul
echo Welcome To Loc-Downloader!
echo.
echo Starting...
timeout /t 1 /nobreak >nul
set errorcode=01
goto start2

:error
color c
title Something goes Wrong!
echo Something goes Wrong!
echo.
echo Error Code : %errorcode%
echo Press Any Key To Restart Loc-Downlaoder
pause >nul
goto start1

:ytd
cd youtube-downloader
start downloader.bat
set errorcode=05
exit
goto error

:select
color
echo Select Menu!
echo.
echo ① Web Downloader
echo ② YouTube Downloader
echo ③ Music Player
echo.
echo Type Number And Press Enter To Continue!
set /p=menus

if %menus%==1 start web-downloader.bat
if %menus%==2 goto ytd
if %menus%==3 start music-player.bat
set errorcode=06
exit
goto error