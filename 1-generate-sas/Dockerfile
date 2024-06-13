FROM mcr.microsoft.com/azure-cli
COPY generate-sas.sh /usr/local/bin/generate-sas.sh
RUN chmod +x /usr/local/bin/generate-sas.sh
CMD ["/bin/bash", "generate-sas.sh"]