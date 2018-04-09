@echo off
title Loc-Downloader Music Player

:selectmusic
echo Type Music Name With File Extensions!
set /p music
goto musiclength

:musiclength
echo Teach Me Music Length (Second) Please!
set /p length
goto playmusic

:playmusic
cls
echo Playing Music : %music%
set "file=%music%"
( 
  echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.settings.volume = 100
  echo Sound.settings.setMode "loop", True
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000
)>sound.vbs
start /min sound.vbs
timeout /t %length% /nobreak >nul
goto playmusic