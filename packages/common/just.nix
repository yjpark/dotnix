{ pkgs, ... }: {
  home.packages = [
    pkgs.just
 ];
 home.file.".config/justfile".source = ./justfile;
}
