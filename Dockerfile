FROM nixos/nix:2.15.0

LABEL maintainer="YJ Park <yjpark@gmail.com>"

RUN mkdir -p /root/.ssh/
RUN chmod 700 /root/.ssh/
COPY config/yjpark.ssh/authorized_keys /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

RUN mkdir -p /root/.config/
RUN echo "linux.session" > /root/.config/dotnix.hostname

RUN nix-channel --update

RUN nix-env -iA nixpkgs.home-manager
RUN which home-manager

RUN nix-env -q

COPY . /root/.nix
WORKDIR /root/.nix

# RUN home-manager --extra-experimental-features "nix-command flakes" --flake .#root@linux.session switch

RUN which sshd
COPY config/dotnix.sshd/sshd_config /etc/ssh/sshd_config

RUN echo "#!/bin/sh" > /entrypoint.sh
RUN echo "ssh-keygen -A" >> /entrypoint.sh
RUN echo "exec /root/.nix-profile/bin/sshd -D -e \"$@\"" >> /entrypoint.sh

RUN chmod 755 /entrypoint.sh

RUN cat /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
