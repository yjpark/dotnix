if test -d ~/.nix/bin/common
    set -x PATH $PATH ~/.nix/bin/common
end

if test -d ~/.nix.private/bin/common
    set -x PATH $PATH ~/.nix.private/bin/common
end

uname -v | grep NixOS > /dev/null
if [ $status -eq 0 ]
    if test -d ~/.nix/bin/nixos
        set -x PATH $PATH ~/.nix/bin/nixos
    end
    if test -d ~/.nix.private/bin/nixos
        set -x PATH $PATH ~/.nix.private/bin/nixos
    end
end

if test -d ~/.cargo/bin
    set -x PATH $PATH ~/.cargo/bin
end


