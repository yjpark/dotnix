FROM nixos/nix:2.15.0

LABEL maintainer="YJ Park <yjpark@gmail.com>"

COPY config/yjpark.ssh/authorized_keys /root/.ssh/authorized_keys
RUN chmod 700 /root/.ssh/ \
    && chmod 600 /root/.ssh/authorized_keys

RUN mkdir -p /root/.config/
RUN echo "linux.session" > /root/.config/dotnix.hostname

RUN nix-channel --update

RUN nix-env -iA nixpkgs.home-manager
RUN which home-manager

RUN nix-env -q

RUN nix-env -iA nixpkgs.dropbear

RUN mkdir /etc/dropbear
RUN echo "/nix/store/bap4d0lpcrhpwmpb8ayjcgkmvfj62lnq-bash-interactive-5.1-p16/bin/bash" > /etc/shells

COPY . /root/.nix
WORKDIR /root/.nix
RUN home-manager --extra-experimental-features "nix-command flakes" --flake .#root@linux.session build

EXPOSE 22

ENTRYPOINT ["/root/.nix-profile/bin/dropbear"]
CMD ["-F", "-R", "-E"]
