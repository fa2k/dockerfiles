FROM ubuntu:latest
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
RUN apt-get update && apt-get -y install openssh-server screen htop sudo git vim build-essential man && rm /etc/ssh/ssh_host_*
RUN yes | /usr/local/sbin/unminimize
RUN mkdir -p /var/run/sshd
RUN sed -i 's/\(^%sudo.*\)ALL$/\1NOPASSWD: ALL/g' /etc/sudoers
RUN echo "HostKey /hostkeys/etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config && \
	echo "HostKey /hostkeys/etc/ssh/ssh_host_ecdsa_key" >> /etc/ssh/sshd_config && \
	echo "HostKey /hostkeys/etc/ssh/ssh_host_ed25519_key" >> /etc/ssh/sshd_config && \
	echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
VOLUME /hostkeys/etc/ssh
EXPOSE 22
ENTRYPOINT ["/tini", "--"]
CMD useradd -G sudo -s /usr/bin/bash -u "$USER_ID" "$USER_NAME" && ssh-keygen -A -f /hostkeys && /usr/sbin/sshd -e -D -o AllowUsers=$USER_NAME
