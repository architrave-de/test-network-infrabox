FROM python:3.6

RUN apt-get update && apt-get install -y wget mtr net-tools

WORKDIR /usr/src/app

RUN wget https://raw.githubusercontent.com/profitbricks/ionos-troubleshooting-tools/master/check-net-config.sh && chmod +x check-net-config.sh && mkdir -p /infrabox/upload/archive

CMD ./check-net-config.sh -t s3-de-central.profitbricks.com | tee /infrabox/upload/archive/results.txt
