FROM ubuntu:latest
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install openssh-server screen vim && rm /etc/ssh/ssh_host_*
RUN mkdir -p /var/run/sshd
RUN echo "HostKey /hostkeys/etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config && \
	echo "HostKey /hostkeys/etc/ssh/ssh_host_ecdsa_key" >> /etc/ssh/sshd_config && \
	echo "HostKey /hostkeys/etc/ssh/ssh_host_ed25519_key" >> /etc/ssh/sshd_config && \
	echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
VOLUME /hostkeys/etc/ssh
EXPOSE 22
ENTRYPOINT ["/tini", "--"]
ENV USER_NAME fa2k
RUN useradd -m -s /usr/bin/bash "$USER_NAME"
RUN mkdir /home/"$USER_NAME"/.ssh
ADD authorized_keys /home/"$USER_NAME"/.ssh/authorized_keys
RUN chown -R "$USER_NAME":"$USER_NAME" /home/"$USER_NAME"/.ssh
RUN chmod 700 /home/"$USER_NAME"/.ssh
RUN chmod 600 /home/"$USER_NAME"/.ssh/authorized_keys
#CMD ssh-keygen -A -f /hostkeys && \
#        /usr/sbin/sshd -e -D -o AllowUsers=$USER_NAME -o LogLevel=DEBUG3
CMD ssh-keygen -A -f /hostkeys && \
        /usr/sbin/sshd -e -D -o AllowUsers=$USER_NAME
