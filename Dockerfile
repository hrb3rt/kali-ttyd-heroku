FROM kalilinux/kali-rolling

ENV TTY_VER 1.6.1
ENV USER kali
ENV PASSWORD kali

RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sLk https://github.com/tsl0922/ttyd/releases/download/${TTY_VER}/ttyd_linux.x86_64 -o ttyd_linux && \
    chmod +x ttyd_linux && \
    cp ttyd_linux /usr/local/bin/

RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	kali-tools-database \
	sudo \
	openvpn \
	-y --show-progress 

COPY run_ttyd.sh /run_ttyd.sh
RUN chmod 744 /run_ttyd.sh

CMD ["/bin/bash","/run_ttyd.sh"]
