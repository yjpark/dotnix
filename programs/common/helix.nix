{ pkgs, ... }: {
  programs.helix = {
    enable = true;
    # https://nix-community.github.io/home-manager/options.html#opt-programs.helix.languages
    # https://docs.helix-editor.com/languages.html
    languages = [{
      name = "rust";
      auto-format = false;
    }];
  };
}
