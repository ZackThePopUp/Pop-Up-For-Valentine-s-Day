@echo off
:: Create a temporary VBS file to display a pop-up message
echo Set WshShell = CreateObject("WScript.Shell") > tempPopup.vbs
echo WshShell.Popup "Happy Valentine's Day", 5, "Warning",64 + 4096 >> tempPopup.vbs
echo WshShell.Popup "We Love You", 5, "Warning",64 + 4096 >> tempPopup.vbs
echo WshShell.Popup "Happy Valentine's Day", 5, "Warning",64 + 4096 >> tempPopup.vbs
echo WshShell.Popup "Love <Your Name Here>", 5, "Warning",64 + 4096 >> tempPopup.vbs
:: Execute the VBS to display the message
start "" tempPopup.vbs

:: Wait for the pop-up to automatically close (wait for 5 seconds)
timeout /t 0 /nobreak >nul

:: Delete the temporary VBS file
del tempPopup.vbs