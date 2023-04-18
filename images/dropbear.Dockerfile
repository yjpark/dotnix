FROM ubuntu:22.04

LABEL maintainer="YJ Park <yjpark@gmail.com>"

RUN apt update && apt install -y dropbear sudo fish tmux git

RUN useradd -rm -d /home/yjpark -s /usr/bin/fish -G sudo -u 1000 yjpark

COPY yjpark.authorized_keys /home/yjpark/.ssh/authorized_keys

RUN chmod 700 /home/yjpark/.ssh \
    && chmod 600 /home/yjpark/.ssh/authorized_keys \
    && chown -R yjpark:yjpark /home/yjpark

RUN echo "yjpark  ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY yjpark.gitconfig /home/yjpark/.gitconfig

RUN apt install -y age command-not-found wget inetutils-ping inetutils-telnet \
    && cd /tmp \
    && wget https://github.com/mozilla/sops/releases/download/v3.7.3/sops_3.7.3_amd64.deb \
    && dpkg -i sops_3.7.3_amd64.deb

RUN apt install -y mysql-client mycli

EXPOSE 22

CMD ["/usr/sbin/dropbear", "-R", "-F"]
