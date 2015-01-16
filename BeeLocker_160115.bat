cls
@echo off
title Folder private 
if EXIST "private.{20D04FE0-3AEA-1069-A2D8-08002B30309D}" goto UNLOCK 
if NOT EXIST private goto BEELOCKER
:CONFIRM 
echo Are you sure you want to lock the folder(Y/N) 
set/p "cho=>" 
if %cho%==Y goto LOCK 
if %cho%==y goto LOCK 
if %cho%==n goto END 
if %cho%==N goto END 
echo Invalid choice. 
goto CONFIRM 
:LOCK
ren "private" "private.{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
echo Folder locked 
goto End
:UNLOCK
echo Enter password to unlock folder 
set/p "pass=>" 
if NOT %pass%== ENTER_YOUR_PASSWORD_HERE goto FAIL 
ren "private.{20D04FE0-3AEA-1069-A2D8-08002B30309D}" "private"
echo Folder Unlocked successfully 
goto End 
:FAIL 
echo Invalid password 
goto UNLOCK 
:BEELOCKER 
echo No private file detected...
echo System will now create one for you.
md private 
echo.
echo ////////////////////////////////////////////////////////////////
echo Private file created successfully
echo.
echo ////////////////////////////////////////////////////////////////
echo PLEASE EDIT THE PASSWORD IN THIS .bat FILE TO YOUR OWN PASSWORD 
echo.
echo 							credit: bee.n
pause
goto END
:END
exit
