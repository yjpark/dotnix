{ pkgs, ... }: {
  imports = [
    ./abbrs.nix
    ./aliases.nix
    ./functions
    ./plugins.nix
  ];

  programs.fish = {
    enable = true;
    interactiveShellInit = builtins.concatStringsSep "\n\n\n" [
      (builtins.readFile ./init/path.fish)
    ];
  };
}
