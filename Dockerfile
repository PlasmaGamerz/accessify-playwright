FROM mcr.microsoft.com/playwright:v1.63.0-noble

RUN useradd -m -d /home/container -s /bin/bash container

ENV USER=container
ENV HOME=/home/container

WORKDIR /home/container

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
    && chown container:container /entrypoint.sh

USER container

CMD ["/bin/bash", "/entrypoint.sh"]
