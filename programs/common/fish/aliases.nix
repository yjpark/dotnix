{ pkgs, ... }: {
  programs.fish.shellAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    template-list = "just --justfile ~/projects/edger-dev/templates/justfile -l";
    template-run = "just --justfile ~/projects/edger-dev/templates/justfile -d .";
    reset-proxy = "set -ge https_proxy; set -ge http_proxy; set -ge all_proxy; set -ge NIX_CURL_FLAGS";
    show-proxy = "env | grep _proxy; env | grep NIX_CURL_FLAGS";
    set-proxy-trojan = "set -gx https_proxy http://127.0.0.1:1102; set -gx http_proxy http://127.0.0.1:1102; set -gx all_proxy http://127.0.0.1:1102; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:1102";
    set-proxy-panda = "set -gx https_proxy http://127.0.0.1:1104; set -gx http_proxy http://127.0.0.1:1104; set -gx all_proxy http://127.0.0.1:1104; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:1104";
    set-proxy-cow = "set -gx https_proxy http://127.0.0.1:1100; set -gx http_proxy http://127.0.0.1:1100; set -gx all_proxy http://127.0.0.1:1100; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:1100";
    set-proxy-mitm = "set -gx https_proxy http://127.0.0.1:1111; set -gx http_proxy http://127.0.0.1:1111; set -gx all_proxy http://127.0.0.1:1111";
    set-proxy-edger = "set -gx https_proxy http://172.22.1.2:31102; set -gx http_proxy http://172.22.1.2:31102; set -gx all_proxy http://172.22.1.2:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.2:31102";
    set-proxy-a13 = "set -gx https_proxy http://172.22.1.6:31102; set -gx http_proxy http://172.22.1.6:31102; set -gx all_proxy http://172.22.1.6:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.6:31102";
    set-proxy-pc = "set -gx https_proxy http://172.22.1.9:1102; set -gx http_proxy http://172.22.1.9:1102; set -gx all_proxy http://172.22.1.9:1102; set -gx NIX_CURL_FLAGS -x http://172.22.1.9:1102";
  };
}
