FROM        amazon/aws-cli
RUN         yum install jq -y
COPY        init-container.sh /
ENTRYPOINT  [ "bash", "/init-container.sh" ]

