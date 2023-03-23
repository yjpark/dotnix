{ config, pkgs, ... }: {
  imports = [
    "${fetchTarball {
        url = "https://github.com/msteen/nixos-vscode-server/tarball/57f1716bc625d2892579294cc207956679e3d94c";
        sha256 = "sha256:1dr3v3mlf61nrs3f3d9qx74y8v5jihkk8wd1li4sglx22aqh4xf6";
       }
     }/modules/vscode-server/home.nix"
  ];

  services.vscode-server.enable = true;

  # need to have wget installed for vscode to download the binary
  # also need to run this to enable the service
  # systemctl --user start auto-fix-vscode-server.service
}
