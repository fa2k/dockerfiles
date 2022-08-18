FROM ubuntu:latest
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
RUN apt-get update && apt-get -y install openssh-server sudo screen htop && rm /etc/ssh/ssh_host_*
RUN mkdir -p /var/run/sshd
RUN sed -i 's/\(^%sudo.*\)ALL$/\1NOPASSWD: ALL/g' /etc/sudoers
VOLUME /etc/ssh
EXPOSE 22
ENTRYPOINT ["/tini", "--"]
CMD useradd -G sudo -s /usr/bin/bash -u "$USER_ID" "$USER_NAME" && ssh-keygen -A && /usr/sbin/sshd -e -D -o AllowUsers=$USER_NAME -o PasswordAuthentication=no