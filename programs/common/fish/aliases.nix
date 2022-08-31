{ pkgs, ... }: {
  programs.fish.shellAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    reset-proxy = "set -ge https_proxy; set -ge http_proxy; set -ge all_proxy";
    show-proxy = "env | grep _proxy";
    set-proxy-trojan = "set -gx https_proxy 127.0.0.1:1102; set -gx http_proxy 127.0.0.1:1102; set -gx all_proxy http://127.0.0.1:1102; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:1102";
    set-proxy-panda = "set -gx https_proxy 127.0.0.1:1104; set -gx http_proxy 127.0.0.1:1104; set -gx all_proxy http://127.0.0.1:1104; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:1104";
    set-proxy-cow = "set -gx https_proxy 127.0.0.1:1100; set -gx http_proxy 127.0.0.1:1100; set -gx all_proxy http://127.0.0.1:1100; set -gx NIX_CURL_FLAGS -x http://127.0.0.1:1100";
    set-proxy-mitm = "set -gx https_proxy 127.0.0.1:1111; set -gx http_proxy 127.0.0.1:1111; set -gx all_proxy http://127.0.0.1:1111";
    set-proxy-2 = "set -gx https_proxy 10.0.1.2:1102; set -gx http_proxy 10.0.1.2:1102; set -gx all_proxy http://10.0.1.2:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.2:1102";
    set-proxy-3 = "set -gx https_proxy 10.0.1.3:1102; set -gx http_proxy 10.0.1.3:1102; set -gx all_proxy http://10.0.1.3:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.3:1102";
    set-proxy-4 = "set -gx https_proxy 10.0.1.4:1102; set -gx http_proxy 10.0.1.4:1102; set -gx all_proxy http://10.0.1.4:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.4:1102";
    set-proxy-5 = "set -gx https_proxy 10.0.1.5:1102; set -gx http_proxy 10.0.1.5:1102; set -gx all_proxy http://10.0.1.5:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.5:1102";
    set-proxy-6 = "set -gx https_proxy 10.0.1.6:1102; set -gx http_proxy 10.0.1.6:1102; set -gx all_proxy http://10.0.1.6:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.6:1102";
    set-proxy-7 = "set -gx https_proxy 10.0.1.7:1102; set -gx http_proxy 10.0.1.7:1102; set -gx all_proxy http://10.0.1.7:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.7:1102";
    set-proxy-8 = "set -gx https_proxy 10.0.1.8:1102; set -gx http_proxy 10.0.1.8:1102; set -gx all_proxy http://10.0.1.8:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.8:1102";
    set-proxy-9 = "set -gx https_proxy 10.0.1.9:1102; set -gx http_proxy 10.0.1.9:1102; set -gx all_proxy http://10.0.1.9:1102; set -gx NIX_CURL_FLAGS -x http://10.0.1.9:1102";
  };
}
