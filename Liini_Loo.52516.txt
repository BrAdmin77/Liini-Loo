@echo off
setlocal
echo    SYSTEM INFO           
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.3" echo  Windows 8.1
if "%version%" == "6.2" echo  Windows 8.
if "%version%" == "6.1" echo  Windows 7.
if "%version%" == "6.0" echo  Windows Vista.
rem etc etc
endlocal
echo( %date%
echo( %time%
@echo off
echo(
echo(
echo(
title BrAdmin's Removal Tool 2016 BETA v.2.0.1 - Now known as "Liini-Loo" (5/3/2016)
Color 71
echo         YOU FOUND LIINI-LOO!!
echo The "Liini-Loo" PC maintnamce tool"
echo         Written by: BrAdmin   
echo         ~~~BETA v.2.0.1~~~ 
ECHO(	                                      
ECHO(        )\._.,--....,'``.                
echo(       /,   _.. \   _\  (`._ ,.          
echo(      `._.-(,_..'--(,_..'`-.;.'          
echo(                                                   
echo(
echo(
echo(
pause
rem 
echo(
echo            "Stay Liini-Loo"
echo(  
echo      Make a system restore point
echo(	
rem
Pause 
start powershell.exe checkpoint-computer -description "adhoc"
echo(
rem 
echo    "Good job Linni, now lets back up the registy"
rem
echo(
pause 
reg export "hkey_local_machine\software\microsoft\windows" "%userprofile%\Linni_Loo_regbackup"
rem 
echo(
echo(
echo(
echo              "Clean up Liini"
echo(
echo   Clean the clutter in the temp folders  
echo( 
rem
pause
erase "%TEMP%\*.*" /f /s /q 
for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"
erase "%TMP%\*.*" /f /s /q 
for /D %%i in ("%TMP%\*") do RD /S /Q "%%i"
erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q 
for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"
erase "%SystemRoot%\TEMP\*.*" /f /s /q 
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"
pause
rem 
echo(
echo   Dont forget the browser cache Liini... 
scho( 
rem
pause
rem 	
echo Clean IE  -  (Deletes Temporary Internet Files Only)
rem
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"
rem 
echo Clean Chrome 
rem
erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"
rem
echo Clean Firefox 
rem
erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"
pause
rem
echo STEP 3: Set all browser home pages to "www.google.com"
rem
pause
REG ADD "HKCU\SOFTWARE\MICROSOFT\INTERNET EXPLORER\MAIN" /V "START PAGE" /D "http://www.google.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\GOOGLE CHROME\MAIN" /V "START PAGE" /D "http://www.google.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\MOZILLA FIREFOX\MAIN" /V "START PAGE" /D "http://www.google.com/" /F 
pause 
REM rem 
REM echo(
REM echo                "Watch'em Liini!"
REM echo(
REM echo     Lets see whats going on behind the scenes
REM echo(	
REM rem       
REM tasklist /svc>tellmemore.txt&start tellmemore.txt
REM pause
REM rem 
REM echo           "Ok Linni the the owner of "    
REM rem
REM pause
REM start c:\windows\regedit.exe
REM Start msconfig.exe
REM pause
REM rem 
echo( 
echo                "lets go hunting Linni-Loo"
echo(
echo
rem
Pause

 
