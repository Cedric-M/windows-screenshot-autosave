@echo off
set InstallPath=%userprofile%\Pictures\WindowsScreenshotAutosave
set screenCapture=screenCapture.bat

rem create a directory only if the \WindowsScreenshotAutosave folder does not exist.
if not exist "%InstallPath%\" mkdir %InstallPath%

rem clone screenCapture.bat if not already done before
if not exist "%InstallPath%\%screenCapture%" bitsadmin.exe /transfer "getting screenCapture" https://raw.githubusercontent.com/npocmaka/batch.scripts/master/hybrids/.net/c/screenCapture.bat %InstallPath%\%screenCapture%

cd %InstallPath%

call screenCapture.bat screenshot%RANDOM%%RANDOM%.png

rem pause