{ config, pkgs, ... }: {
  imports = [
    "${fetchTarball {
        url = "https://github.com/msteen/nixos-vscode-server/tarball/57f1716bc625d2892579294cc207956679e3d94c";
        sha256 = "sha256:0ahgyd2swkapimvf70ah2y55wpn2hdh1wymfh6492xrkv5x91sqz";
       }
     }/modules/vscode-server/home.nix"
  ];

  services.vscode-server.enable = true;

  # need to have wget installed for vscode to download the binary
  # also need to run this to enable the service
  # systemctl --user start auto-fix-vscode-server.service
}
