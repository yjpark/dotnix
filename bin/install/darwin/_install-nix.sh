#!/bin/sh

# This script installs the Nix package manager on your system by
# downloading a binary distribution and running its installer script
# (which in turn creates and populates /nix).

{ # Prevent execution if this script was only partially downloaded
oops() {
    echo "$0:" "$@" >&2
    exit 1
}

umask 0022

tmpDir="$(mktemp -d -t nix-binary-tarball-unpack.XXXXXXXXXX || \
          oops "Can't create temporary directory for downloading the Nix binary tarball")"
cleanup() {
    rm -rf "$tmpDir"
}
trap cleanup EXIT INT QUIT TERM

require_util() {
    command -v "$1" > /dev/null 2>&1 ||
        oops "you do not have '$1' installed, which I need to $2"
}

case "$(uname -s).$(uname -m)" in
    Linux.x86_64)
        hash=072233243981802196f290a82e0f6f529bfab097e4408365171ce61828143d47
        path=v5ghk9mdld8axvv6c2q67v2a2sdbmmiv/nix-2.23.2-x86_64-linux.tar.xz
        system=x86_64-linux
        ;;
    Linux.i?86)
        hash=28b62f52b2c9a16b79009682e6fafe35323c10529aef9bf0ad4b5a40dc214710
        path=ws94bccri6dj1jvjbyfvgfwxc5h88sxv/nix-2.23.2-i686-linux.tar.xz
        system=i686-linux
        ;;
    Linux.aarch64)
        hash=9833945bf17143f85d93ee48315603d4cb6c60a8a27f516b8e9c927e0503f58c
        path=3vb0ja4s5pdp9saf450rjk0farilhfjq/nix-2.23.2-aarch64-linux.tar.xz
        system=aarch64-linux
        ;;
    Linux.armv6l)
        hash=161744e798bf2e96ca075f8b55e6da7aafcf040ba2ac16353ab780c96d3444f1
        path=4mg8kdaxjfjz4syjkga2n9y1gx1sj2k8/nix-2.23.2-armv6l-linux.tar.xz
        system=armv6l-linux
        ;;
    Linux.armv7l)
        hash=42b894c67a1bd01de9812fee0db79e8bbea3207bb96bb62640378be3483b8c83
        path=qhnzdrjwn03ynhp2rdilclvfb3w2zp77/nix-2.23.2-armv7l-linux.tar.xz
        system=armv7l-linux
        ;;
    Linux.riscv64)
        hash=f267ea071ecd1cbca9c67b3b5d8f1d2e6c7c6f7991785b01339bb840d4c9094a
        path=gmmg8z9787y7rsf5aqbzww9v6c5w1af6/nix-2.23.2-riscv64-linux.tar.xz
        system=riscv64-linux
        ;;
    Darwin.x86_64)
        hash=c334f699f91f612692fa5375828ca49cfcff0aa9a253a6da4da34c74a510417f
        path=vnyfggg5vhnvgqwsjyqcz3xp9cddlmw2/nix-2.23.2-x86_64-darwin.tar.xz
        system=x86_64-darwin
        ;;
    Darwin.arm64|Darwin.aarch64)
        hash=3a92462f49a6eea8eaf12340bfaf0c3a0bfb99da4f14089b45ea1d0d6f3d2498
        path=sjv5psbh1fihpp2m8bn8gvb0ksdjvdci/nix-2.23.2-aarch64-darwin.tar.xz
        system=aarch64-darwin
        ;;
    *) oops "sorry, there is no binary distribution of Nix for your platform";;
esac

# Use this command-line option to fetch the tarballs using nar-serve or Cachix
if [ "${1:-}" = "--tarball-url-prefix" ]; then
    if [ -z "${2:-}" ]; then
        oops "missing argument for --tarball-url-prefix"
    fi
    url=${2}/${path}
    shift 2
else
    url=https://releases.nixos.org/nix/nix-2.23.2/nix-2.23.2-$system.tar.xz
fi

tarball=$tmpDir/nix-2.23.2-$system.tar.xz

require_util tar "unpack the binary tarball"
if [ "$(uname -s)" != "Darwin" ]; then
    require_util xz "unpack the binary tarball"
fi

if command -v curl > /dev/null 2>&1; then
    fetch() { curl --fail -L "$1" -o "$2"; }
elif command -v wget > /dev/null 2>&1; then
    fetch() { wget "$1" -O "$2"; }
else
    oops "you don't have wget or curl installed, which I need to download the binary tarball"
fi

echo "downloading Nix 2.23.2 binary tarball for $system from '$url' to '$tmpDir'..."
fetch "$url" "$tarball" || oops "failed to download '$url'"

if command -v sha256sum > /dev/null 2>&1; then
    hash2="$(sha256sum -b "$tarball" | cut -c1-64)"
elif command -v shasum > /dev/null 2>&1; then
    hash2="$(shasum -a 256 -b "$tarball" | cut -c1-64)"
elif command -v openssl > /dev/null 2>&1; then
    hash2="$(openssl dgst -r -sha256 "$tarball" | cut -c1-64)"
else
    oops "cannot verify the SHA-256 hash of '$url'; you need one of 'shasum', 'sha256sum', or 'openssl'"
fi

if [ "$hash" != "$hash2" ]; then
    oops "SHA-256 hash mismatch in '$url'; expected $hash, got $hash2"
fi

unpack=$tmpDir/unpack
mkdir -p "$unpack"
tar -xJf "$tarball" -C "$unpack" || oops "failed to unpack '$url'"

script=$(echo "$unpack"/*/install)

[ -e "$script" ] || oops "installation script is missing from the binary tarball!"
export INVOKED_FROM_INSTALL_IN=1
"$script" "$@"

} # End of wrapping
