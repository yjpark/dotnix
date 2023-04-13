FROM nixos/nix:2.15.0

LABEL maintainer="YJ Park <yjpark@gmail.com>"

RUN nix-channel --update

RUN nix-env -iA nixpkgs.home-manager
RUN which home-manager

RUN nix-env -iA nixpkgs.openssh
RUN which sshd

COPY . /root/.nix
WORKDIR /root/.nix

RUN mkdir -p /root/.ssh/
RUN chmod 700 /root/.ssh/
COPY config/yjpark.ssh/authorized_keys /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

RUN mkdir -p /root/.config/
RUN echo "linux.session" > /root/.config/dotnix.hostname

RUN nix-env --set-flag priority 0 nix-2.15.0

RUN home-manager --extra-experimental-features "nix-command flakes" --flake .#root@linux.session build

RUN home-manager --extra-experimental-features "nix-command flakes" --flake .#root@linux.session switch

RUN echo "#!/bin/sh" > /entrypoint.sh
RUN echo "ssh-keygen -A" > /entrypoint.sh
RUN echo "exec /root/.nix-profile/bin/sshd -D -e \"$@\"" > /entrypoint.sh

RUN cat /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
