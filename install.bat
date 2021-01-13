@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco feature enable -n=allowGlobalConfirmation

choco install googlechrome
choco pin add -n=googlechrome

choco install notepadplusplus.install
choco install powertoys

choco install git.install -y --params "/GitAndUnixToolsOnPath /NoAutoCrlf /WindowsTerminal"
call refreshenv
rem always have Linux line endings in text files
git config --global core.autocrlf input
git config --global core.longpaths true

choco install powershell-core
choco install vcxsrv
choco install everything
choco install 7zip
choco install vlc
choco install discord
choco install spotify
choco install telegram
choco install whatsapp
choco install slack
choco install steam
choco install authy-desktop
choco install bitwarden
choco install openvpn
choco install brave

choco install vscode
choco pin add -n vscode