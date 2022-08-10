D:
cd WSL

wsl --import NixOS .\NixOS nixos-wsl-installer.tar.gz --version 2
wsl -d NixOS
wsl -s NixOS