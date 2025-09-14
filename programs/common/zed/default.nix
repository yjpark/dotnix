{ config, pkgs, ... }: {

  imports = [
    ./zed-101.nix
  ];


  programs.zed-editor = {
    enable = true;
    installRemoteServer = true;
    extensions = [
      "just" "nix"
    ];
  };
}
