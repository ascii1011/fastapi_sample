
FROM alpine:latest

EXPOSE 8081
WORKDIR /app

RUN echo "Install Packages" &&\
    apk add py3-pip

RUN mkdir -p /opt/scripts

COPY requirements.txt /opt/scripts/requirements.txt
RUN pip install -r /opt/scripts/requirements.txt

COPY entrypoint.sh /opt/scripts/entrypoint.sh
RUN chmod +x /opt/scripts/entrypoint.sh

ENTRYPOINT ["/opt/scripts/entrypoint.sh"]
