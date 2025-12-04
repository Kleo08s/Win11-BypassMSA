@echo off

echo.
echo ===== Kleo08s/Win11-BypassMSA =====
echo A script that bypasses Windows requirements and Microsoft account login in OOBE
echo.
timeout 5
echo.
echo Downloading unattend...
echo.
curl -L -o C:\Windows\Panther\unattend.xml https://raw.githubusercontent.com/Kleo08s/Win11-BypassMSA/refs/heads/main/unattend.xml
echo.
echo Restarting OOBE...
echo.
%WINDIR%\System32\Sysprep\Sysprep.exe /oobe /unattend:C:\Windows\Panther\unattend.xml /reboot

