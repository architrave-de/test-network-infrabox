FROM nicolaka/netshoot

RUN wget https://raw.githubusercontent.com/profitbricks/ionos-troubleshooting-tools/master/check-net-config.sh && chmod +x check-net-config.sh

CMD ./check-net-config.sh -t s3-de-central.profitbricks.com
