{ pkgs, ... }: {
  programs.fish.shellAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    reset-proxy = "set -ge https_proxy; set -ge http_proxy; set -ge all_proxy; set -ge NIX_CURL_FLAGS";
    show-proxy = "env | grep _proxy; env | grep NIX_CURL_FLAGS";
    set-proxy = "set -gx https_proxy http://proxy:31102; set -gx http_proxy http://proxy:31102; set -gx all_proxy http://proxy:31102; set -gx NIX_CURL_FLAGS -x http://proxy:31102";
    set-proxy-trojan = "set -gx https_proxy http://127.0.0.1:31102; set -gx http_proxy http://127.0.0.1:31102; set -gx all_proxy http://127.0.0.1:31102; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:31102";
    set-proxy-mitm = "set -gx https_proxy http://127.0.0.1:1111; set -gx http_proxy http://127.0.0.1:1111; set -gx all_proxy http://127.0.0.1:1111";
    set-proxy-edger = "set -gx https_proxy http://172.22.1.2:31102; set -gx http_proxy http://172.22.1.2:31102; set -gx all_proxy http://172.22.1.2:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.2:31102";
    set-proxy-p2 = "set -gx https_proxy http://172.22.1.5:31102; set -gx http_proxy http://172.22.1.5:31102; set -gx all_proxy http://172.22.1.5:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.5:31102";
    set-proxy-a13 = "set -gx https_proxy http://172.22.1.6:31102; set -gx http_proxy http://172.22.1.6:31102; set -gx all_proxy http://172.22.1.6:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.6:31102";
    set-proxy-pc = "set -gx https_proxy http://172.22.1.9:31102; set -gx http_proxy http://172.22.1.9:31102; set -gx all_proxy http://172.22.1.9:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.9:31102";
    set-proxy-edger_lan = "set -gx https_proxy http://10.0.1.2:31102; set -gx http_proxy http://10.0.1.2:31102; set -gx all_proxy http://10.0.1.2:31102; set -gx NIX_CURL_FLAGS -x http://10.0.1.2:31102";
    set-proxy-p2_lan = "set -gx https_proxy http://10.0.1.5:31102; set -gx http_proxy http://10.0.1.5:31102; set -gx all_proxy http://10.0.1.5:31102; set -gx NIX_CURL_FLAGS -x http://10.0.1.5:31102";
    set-proxy-a13_lan = "set -gx https_proxy http://10.0.1.6:31102; set -gx http_proxy http://10.0.1.6:31102; set -gx all_proxy http://10.0.1.6:31102; set -gx NIX_CURL_FLAGS -x http://10.0.1.6:31102";
    set-proxy-g1 = "set -gx https_proxy http://172.22.1.8:31102; set -gx http_proxy http://172.22.1.8:31102; set -gx all_proxy http://172.22.1.8:31102; set -gx NIX_CURL_FLAGS -x http://172.22.1.8:31102";
    set-proxy-g1_lan = "set -gx https_proxy http://10.0.1.8:31102; set -gx http_proxy http://10.0.1.8:31102; set -gx all_proxy http://10.0.1.8:31102; set -gx NIX_CURL_FLAGS -x http://10.0.1.8:31102";
  };
}
