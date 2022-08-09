{ pkgs, ... }: {
  programs.fish.shellAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    set-proxy-off = "set -ge https_proxy; set -ge http_proxy; set -ge ALL_PROXY";
    gf = ''find . -path "*/.git/*" -prune -o -path "*/.svn/*" -prune -o -path "*/.hg/*" -prune -o -path "*/.silp_backup/*" -prune -o -path "*/.silp_test/*" -prune -o -print | grep -i'';
    set-proxy-trojan = "set -gx https_proxy 127.0.0.1:1102; set -gx http_proxy 127.0.0.1:1102; set -gx ALL_PROXY http://127.0.0.1:1102; set -gx NIX_CURL_FLAGS http://127.0.0.1:1102";
    set-proxy-panda = "set -gx https_proxy 127.0.0.1:1104; set -gx http_proxy 127.0.0.1:1104; set -gx ALL_PROXY http://127.0.0.1:1104; set -gx NIX_CURL_FLAGS http://127.0.0.1:1104";
    set-proxy-cow = "set -gx https_proxy 127.0.0.1:1100; set -gx http_proxy 127.0.0.1:1100; set -gx ALL_PROXY http://127.0.0.1:1100; set -gx NIX_CURL_FLAGS http://127.0.0.1:1100";
    set-proxy-mitm = "set -gx https_proxy 127.0.0.1:1111; set -gx http_proxy 127.0.0.1:1111; set -gx ALL_PROXY http://127.0.0.1:1111";
    set-proxy-lan = "set -gx https_proxy 10.0.1.6:1102; set -gx http_proxy 10.0.1.6:1102; set -gx ALL_PROXY http://10.0.1.6:1102; set -gx NIX_CURL_FLAGS http://10.0.1.6:1102";
    set-proxy-desktop = "set -gx https_proxy 10.0.1.9:1102; set -gx http_proxy 10.0.1.9:1102; set -gx ALL_PROXY http://10.0.1.9:1102; set -gx NIX_CURL_FLAGS http://10.0.1.9:1102";
  };
}
