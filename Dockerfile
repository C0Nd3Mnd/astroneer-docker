FROM debian:12

RUN apt-get update

RUN apt-get install -y wine python3-pip python3-venv git

RUN git clone https://github.com/JoeJoeTV/AstroTuxLauncher.git /astrotux

VOLUME /astrotux/AstroneerServer/Astro/Saved
# VOLUME /astrotux/launcher.toml

EXPOSE 7777/udp

COPY --chmod=0755 ./install.sh /install.sh
COPY --chmod=0755 ./entrypoint.sh /entrypoint.sh

RUN /install.sh

ENTRYPOINT [ "/entrypoint.sh" ]
