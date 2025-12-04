@echo off

echo.
echo Kleo08s/W11-LocalOOBE
echo A script that bypasses Windows requirements and Microsoft account login in OOBE
echo.
pause 10
echo.
echo Downloading unattend...
echo.
curl -L -o C:\Windows\Panther\unattend.xml https://cdn.gocciola.xyz/notautounattend.xml
echo,
echo Restarting OOBE...

%WINDIR%\System32\Sysprep\Sysprep.exe /oobe /unattend:C:\Windows\Panther\unattend.xml /reboot
