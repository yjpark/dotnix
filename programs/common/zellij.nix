{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    #settings = {
    #  theme = "molokai-dark";
    #  pane_frames = false;
    #};
  };
  # https://github.com/nix-community/home-manager/pull/4465
  # it's quite tricky to config mappings with home-manager
  home.file.".config/zellij/config.kdl".source = ./zellij/config.kdl;
  home.file.".config/zellij/layouts/default.kdl".source = ./zellij/layouts/default.kdl;
  home.file.".config/zellij/plugins/zjstatus.wasm".source = ./zellij/plugins/zjstatus.wasm;
}
