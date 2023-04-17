FROM ubuntu:22.04

LABEL maintainer="YJ Park <yjpark@gmail.com>"

RUN apt update && apt install -y dropbear sudo fish tmux git

RUN useradd -rm -d /home/yjpark -s /usr/bin/fish -G sudo -u 1000 yjpark

COPY yjpark.authorized_keys /home/yjpark/.ssh/authorized_keys

RUN chmod 700 /home/yjpark/.ssh \
    && chmod 600 /home/yjpark/.ssh/authorized_keys \
    && chown -R yjpark:yjpark /home/yjpark

RUN echo "yjpark  ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

EXPOSE 22

CMD ["/usr/sbin/dropbear", "-R", "-F"]
