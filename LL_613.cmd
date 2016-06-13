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
echo Admin checker 
if exist "%SystemRoot%\system32\TempDeleteMeAdminTestFolder" ( rmdir "%SystemRoot%\system32\TempDeleteMeAdminTestFolder" )
mkdir "%SystemRoot%\system32\TempDeleteMeAdminTestFolder" 2>nul
if "%errorlevel%" == "0" (
                rmdir "%SystemRoot%\system32\TempDeleteMeAdminTestFolder" & goto LL
) else (
                echo.
                echo You should run Liini-Loo as an administrator, just hit "X" in the corner to close , or........
                pause
                goto :End
)

:Run
echo.
echo Running.

:End
echo.
echo End.
::pause


:LL
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
rem 
echo      Where should we start ?
rem
echo(  1. Create a system restore point                          
echo(  2. Make registry backup      
echo(  3. Clear temp files  
echo(  4. Clear browser cache 
echo(  5. Reset browser homepage 
echo(  6. Launch system tools 
echo(  7. Exit Lini-Loo       
echo(   
echo(
echo(

set /p option=
if %option%== 1 goto 1
if %option%== 2 goto 2
if %option%== 3 goto 3
if %option%== 4 goto 4
if %option%== 5 goto 5
if %option%== 6 goto 6
if %ottion%== 7 goto 7 

:1
echo      Make a system restore point
echo(  
echo(
start powershell.exe checkpoint-computer -description "adhoc"
echo(
echo(
pause

:2 
echo      Backup your registry
pause
echo(
echo(
reg export "hkey_local_machine\software\microsoft\windows" "%userprofile%\Linni_Loo_regbackup"
rem 
echo(
echo(
pause

:3 
echo   Clean the clutter in the temp folders  
pause
echo( 
echo( 
erase "%TEMP%\*.*" /f /s /q 
for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"
erase "%TMP%\*.*" /f /s /q 
for /D %%i in ("%TMP%\*") do RD /S /Q "%%i"
erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q 
for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"
erase "%SystemRoot%\TEMP\*.*" /f /s /q 
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"
pause

:4 
echo   Clear browser cache
echo(
echo( 
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"
rem 
rem
erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"
rem
rem
erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"
pause


:5
echo  What website would you like as your homepage on your browser?
rem 
echo Type the name of the website like "google" "yahoo" (No need to use quotes)

set/p page=
if %page%== yahoo goto Y 
if %page%== google goto G
if %page%== msn goto M

if %page%== "" goto ?
set /p name=


:?
REG ADD "HKCU\SOFTWARE\MICROSOFT\INTERNET EXPLORER\MAIN" /V "START PAGE" /D "http://www.%name%.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\GOOGLE CHROME\MAIN" /V "START PAGE" /D "http://www.%name%.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\MOZILLA FIREFOX\MAIN" /V "START PAGE" /D "http://www.%name%.com/" /F 
 

:G
REG ADD "HKCU\SOFTWARE\MICROSOFT\INTERNET EXPLORER\MAIN" /V "START PAGE" /D "http://www.google.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\GOOGLE CHROME\MAIN" /V "START PAGE" /D "http://www.google.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\MOZILLA FIREFOX\MAIN" /V "START PAGE" /D "http://www.google.com/" /F 
 

:Y
REG ADD "HKCU\SOFTWARE\MICROSOFT\INTERNET EXPLORER\MAIN" /V "START PAGE" /D "http://www.yahoo.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\GOOGLE CHROME\MAIN" /V "START PAGE" /D "http://www.yahoo.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\MOZILLA FIREFOX\MAIN" /V "START PAGE" /D "http://www.yahoo.com/" /F 
 

:M
REG ADD "HKCU\SOFTWARE\MICROSOFT\INTERNET EXPLORER\MAIN" /V "START PAGE" /D "http://www.msn.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\GOOGLE CHROME\MAIN" /V "START PAGE" /D "http://www.msn.com/" /F 
REG ADD "HKCU\SOFTWARE\MICROSOFT\MOZILLA FIREFOX\MAIN" /V "START PAGE" /D "http://www.msn.com/" /F 
 
 
:6
start msconfig
start regedit 
start services.msc
start taskmgr
pause

:7
EXIT

Bradley Felder
Operations
IT/IS Compliance, Quality Assurance

Advanced Tech Support / Inbound Call Experts, LLC.
700 Banyan Trail | Suite 200 | Boca Raton | Florida 33431
T: 561-503-3873 | Skype: brad.felder

bfelder@inboundcallexperts.com
www.advancedtechsupport.com
www.inboundcallexperts.com


The information transmitted, including attachments, is intended only for the person(s) or entity to which it is addressed and may contain confidential and/or privileged material. Any review, retransmission, dissemination or other use of, or taking of any action in reliance upon this information by persons or entities other than the intended recipient is prohibited. If you received this in error, please contact the sender and destroy any copies of this information.

