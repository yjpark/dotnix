if test -d ~/.nix/bin/common
    set -x PATH $PATH ~/.nix/bin/common
end

uname -v | grep NixOS > /dev/null
if [ $status -eq 0 ]
    set -x PATH $PATH ~/.nix/bin/nixos
end