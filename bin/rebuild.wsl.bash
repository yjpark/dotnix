#!/usr/bin/env bash

cd `dirname $0`
cd ..

sudo nixos-rebuild --flake .#wsl $@
