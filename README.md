# windows-wsl-setup

## Windows programs instalation

Use `install.bat` to install all necessary windows programs. Also activates WSL to be used.

```
Invoke-WebRequest https://raw.githubusercontent.com/allangalera/windows-wsl-setup/main/install.bat -OutFile install.bat
.\install.bat
Remove-Item -Path .\install.bat
```


## WSL script

To use this script to install the same tools that I want simply run:

```
curl -o- https://raw.githubusercontent.com/allangalera/windows-wsl-setup/main/setup.sh | bash
```
