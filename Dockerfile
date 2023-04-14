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

COPY config/dotnix.sshd/sshd_config /etc/ssh/sshd_config
RUN ssh-keygen -A

# RUN nix-env -iA nixpkgs.shadow
# RUN useradd sshd --no-create-home --system

EXPOSE 22

ENTRYPOINT ["/root/.nix-profile/bin/sshd"]
CMD ["-D", "-e"]
