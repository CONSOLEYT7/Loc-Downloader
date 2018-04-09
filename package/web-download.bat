@echo off
title Loc-Downloader Web Downloader

:start
cls
echo Type Download Web URL To Download File!
echo.
echo Download Web URL : 
set /p url=
goto download

:download
cls
xcopy /E /Y "%url%"
goto downloading

:downloading
cls
echo Downloading.
timeout /t 1 /nobreak >nul
echo Downloading..
timeout /t 1 /nobreak >nul
echo Downloading...
timeout /t 1 /nobreak >nul
goto downloading