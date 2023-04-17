# YJ Park's NixOS and Home Manager Configuration

I'm using NixOS as the main Linux distribution right now, this repo contains all the configurations for my linux machines (including under Windows 10 and 11 via WSL2).

Using Home Manager to setup user configurations too (also support macOS), which is not complete at the moment, this is way better than more traditional ways IMO.

Since I barely understand anything about the Nix language, I am using it mainly as a configuration declaration language, which is quite nice.

The language features I'm using is fairly simple, though it's very tricky to get started with the whole NixOS eco-system, took me quite some time to get the current status which I'm quite satisfied, will write some blog articles about more details about why I choose this way, and explaining some technical details.

## SOPS

Sample to setup age key for sops:

```
export SOPS_AGE_KEY_FILE=${PWD}/.age.key
```

## Notes

- Using [Nix Flakes](https://nixos.wiki/wiki/Flakes)
- Using [Home Manager](https://github.com/nix-community/home-manager)

## Useful Links

- [Home Manager configuration options](https://nix-community.github.io/home-manager/options.html)
- [Search for all NixOS configurations](https://mynixos.com/)
- [Search for Nix package](https://nixos.org/)
