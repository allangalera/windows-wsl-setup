@echo off

@REM my default font for vscode and terminal
@REM https://github.com/microsoft/cascadia-code
@REM default font with icons
@REM https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode

@REM enable WSL
powershell dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
@REM enable virtual machine
powershell dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

wsl --install
wsl --install -d Ubuntu

winget install --id Microsoft.VisualStudio.2022.BuildTools
@REM winget install Microsoft.VisualStudio.2022.BuildTools --force --override "--wait --passive --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows11SDK.22000"
@REM possible command to install Visual Studio BuildTools with
@REM needed components (like Visual C++ tools)

winget install --id VideoLAN.VLC
winget install --id Bitwarden.Bitwarden
winget install --id Notepad++.Notepad++
winget install --id Microsoft.PowerToys
winget install --id Git.Git

winget install --id  7zip.7zip
@REM winget install voidtools.Everything

winget install --id Discord.Discord
@REM spotify
winget install --id 9NCBCSZSJRSB
winget install --id Telegram.TelegramDesktop
@REM whatsapp
winget install --id 9NKSQGP7F2NH
winget install --id SlackTechnologies.Slack
winget install --id Valve.Steam
@REM got 0x80190193 : Forbidden (403) last time I tried to install authy
@REM winget install Twilio.Authy

@REM browsers
winget install --id BraveSoftware.BraveBrowser
winget install --id Mozilla.Firefox
winget install --id Google.Chrome


@REM Rust
winget install --id Rustlang.Rust.MSVC
@REM For Rust to work also needs to open Visual Studio Installer
@REM and install Visual C++ tools

@REM winget install --id  plex.plexmediaserver
@REM winget install --id  qBittorrent.qBittorrent
@REM winget install --id  Zoom.Zoom

@REM SQL GUI softwares
@REM winget install --id  dbeaver.dbeaver

@REM change to rancher because Docker Desktop is paid now
@REM winget install --id  Docker.DockerDesktop
@REM Insomnia now needs login
@REM probably going to use Bruno now (usebruno.com)
@REM winget install --id  Insomnia.Insomnia

@REM Iriun - cellphone as webcam
winget install --id Iriun.IriunWebcam 

@REM Shell prompt
winget install --id Starship.Starship
@REM Allow execution of powershell scripts
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
@REM Create profile for powershell
New-Item $PROFILE
@REM Add script to initialize Startship
Set-Content $PROFILE "Invoke-Expression (&starship init powershell)"

@REM Remote desktop open source
@REM winget install --id RustDesk.RustDesk

@REM VSCode
winget install --id Microsoft.VisualStudioCode
@REM vscode extensions
code --install-extension eamodio.gitlens
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension wmaurer.change-case
code --install-extension aaron-bond.better-comments
code --install-extension wix.vscode-import-cost
code --install-extension yzhang.markdown-all-in-one
code --install-extension wwm.better-align
code --install-extension oderwat.indent-rainbow
code --install-extension bmalehorn.vscode-fish
code --install-extension chakrounanas.turbo-console-log
code --install-extension editorconfig.editorconfig
code --install-extension stylelint.vscode-stylelint
code --install-extension netcorext.uuid-generator
code --install-extension dbaeumer.vscode-eslint
code --install-extension mikestead.dotenv
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension svelte.svelte-vscode