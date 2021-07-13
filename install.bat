@echo off

@REM my default font for vscode and terminal
@REM https://github.com/microsoft/cascadia-code
@REM default font with icons
@REM https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode

@REM enable WSL
powershell dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
@REM enable virtual machine
powershell dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

winget install VideoLAN.VLC
winget install Bitwarden.Bitwarden
winget install Mozilla.Firefox
winget install Notepad++.Notepad++
winget install Microsoft.PowerToys
winget install Git.Git
@REM maybe change to other terminal
winget install Microsoft.WindowsTerminal
winget install Eugeny.Terminus
winget install 7zip.7zip
winget install voidtools.Everything
@REM tool to have GUI on WSL remove when is natively available
winget install marha.VcXsrv
winget install Discord.Discord
winget install Spotify.Spotify
winget install Telegram.TelegramDesktop
winget install WhatsApp.WhatsApp
winget install SlackTechnologies.Slack
winget install Valve.Steam
winget install Twilio.Authy
winget install OpenVPNTechnologies.OpenVPN
winget install BraveSoftware.BraveBrowser
winget install Microsoft.VisualStudioCode
winget install plex.plexmediaserver
winget install qBittorrent.qBittorrent
winget install rammichael.7+TaskbarTweaker
winget install GitHub.cli
winget install Zoom.Zoom
winget install Figma.Figma
winget install dbeaver.dbeaver
winget install Docker.DockerDesktop
winget install NickeManarin.ScreenToGif

@REM vscode extensions
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension wmaurer.change-case
code --install-extension aaron-bond.better-comments
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wix.vscode-import-cost
code --install-extension yzhang.markdown-all-in-one
code --install-extension wwm.better-align
code --install-extension pnp.polacode
code --install-extension oderwat.indent-rainbow
code --install-extension bmalehorn.vscode-fish
code --install-extension chakrounanas.turbo-console-log
code --install-extension editorconfig.editorconfig
code --install-extension stylelint.vscode-stylelint
code --install-extension netcorext.uuid-generator
code --install-extension rangav.vscode-thunder-client
code --install-extension dbaeumer.vscode-eslint
code --install-extension mikestead.dotenv
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension pnp.polacode