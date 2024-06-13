FROM mcr.microsoft.com/azure-cli
COPY azure-login.sh /usr/local/bin/azure-login.sh
RUN chmod +x /usr/local/bin/azure-login.sh
CMD ["/bin/bash", "azure-login.sh"]