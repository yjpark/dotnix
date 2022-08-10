{ config, pkgs, ... }: {
  imports = [
    "${fetchTarball {
        url = "https://github.com/msteen/nixos-vscode-server/tarball/867d5691871acc039fb47d45018c69e9ac751d95";
        sha256 = "sha256:1dr3v3mlf61nrs3f3d9qx74y8v5jihkk8wd1li4sglx22aqh4xf6";
       }
     }/modules/vscode-server/home.nix"
  ];

  services.vscode-server.enable = true;

  # need to have wget installed for vscode to download the binary
  # also need to run this to enable the service
  # systemctl --user start auto-fix-vscode-server.service
}
