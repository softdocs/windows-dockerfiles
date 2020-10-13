ARG OS_VERSION=ltsc2019
FROM mcr.microsoft.com/windows/servercore:$OS_VERSION
ENV ClamPath "c:/program files/clamav/"
WORKDIR c:/
RUN mkdir logs
COPY ["clam.zip", "BaltimoreCyberTrustRootCA.p7b", "./"]
RUN powershell import-certificate -filepath BaltimoreCyberTrustRootCA.p7b -certstorelocation Cert:\LocalMachine\Root ; expand-archive -Path 'c:\clam.zip' -DestinationPath 'c:\'
COPY ["clamd.conf", "freshclam.conf", "${ClamPath}"]
WORKDIR ${ClamPath}
RUN freshclam

EXPOSE 3310
ENTRYPOINT [ "clamd" ]