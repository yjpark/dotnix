{ pkgs, ... }: {
  programs.fish = {
    enable = true;
    shellAbbrs = {
      g = "git";
      e = "nvim";
      a = "rg";
      vi = "nvim";
      vim = "nvim";
      cat = "bat";
      top = "btm";
      ta = "tmux attach";
    };
    shellAliases = {
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      cb = "clear_buffer";
      set-proxy-off = "set -ge https_proxy; set -ge http_proxy; set -ge ALL_PROXY";
      gf = ''find . -path "*/.git/*" -prune -o -path "*/.svn/*" -prune -o -path "*/.hg/*" -prune -o -path "*/.silp_backup/*" -prune -o -path "*/.silp_test/*" -prune -o -print | grep -i'';
      set-proxy-trojan = "set -gx https_proxy 127.0.0.1:1102; set -gx http_proxy 127.0.0.1:1102; set -gx ALL_PROXY http://127.0.0.1:1102; set -gx NIX_CURL_FLAGS http://127.0.0.1:1102";
      set-proxy-panda = "set -gx https_proxy 127.0.0.1:1104; set -gx http_proxy 127.0.0.1:1104; set -gx ALL_PROXY http://127.0.0.1:1104; set -gx NIX_CURL_FLAGS http://127.0.0.1:1104";
      set-proxy-cow = "set -gx https_proxy 127.0.0.1:1100; set -gx http_proxy 127.0.0.1:1100; set -gx ALL_PROXY http://127.0.0.1:1100; set -gx NIX_CURL_FLAGS http://127.0.0.1:1100";
      set-proxy-mitm = "set -gx https_proxy 127.0.0.1:1111; set -gx http_proxy 127.0.0.1:1111; set -gx ALL_PROXY http://127.0.0.1:1111";
      set-proxy-lan = "set -gx https_proxy 10.0.1.6:1102; set -gx http_proxy 10.0.1.6:1102; set -gx ALL_PROXY http://10.0.1.6:1102; set -gx NIX_CURL_FLAGS http://10.0.1.6:1102";
      set-proxy-desktop = "set -gx https_proxy 10.0.1.9:1102; set -gx http_proxy 10.0.1.9:1102; set -gx ALL_PROXY http://10.0.1.9:1102; set -gx NIX_CURL_FLAGS http://10.0.1.9:1102";
    };
    interactiveShellInit = ''
    '';
    functions = {
      clear_buffer = ''
        echo -e -n "\\0033c"
        # https://superuser.com/questions/59682/how-can-i-clear-the-scrollback-buffer-in-konsole-from-bash
        echo -e -n "\e[3J"
        if set -q TMUX
            tmux clear-history
        end
      '';
    };
    plugins = [
      {
        name = "replay";
        src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "replay.fish";
          rev = "bd8e5b89ec78313538e747f0292fcaf631e87bd2";
          sha256 = "sha256-bM6+oAd/HXaVgpJMut8bwqO54Le33hwO9qet9paK1kY=";
        };
      }
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "85f863f20f24faf675827fb00f3a4e15c7838d76";
          sha256 = "sha256-+FUBM7CodtZrYKqU542fQD+ZDGrd2438trKM0tIESs0=";
        };
      }
      {
        name = "fishmarks";
        src = pkgs.fetchFromGitHub {
          owner = "yjpark";
          repo = "fishmarks";
          rev = "c40c83bfe9394f4c51f95f0fec7a3d801ac670f4";
          sha256 = "sha256-Czis1UrjS60sIq4CG1RHWoyqKqc7d1aaerGD1iFugpE=";
        };
      }
    ];
  };
}
