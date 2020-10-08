ARG OS_VERSION=ltsc2019
FROM mcr.microsoft.com/windows/servercore:$OS_VERSION
ENV ClamPath "c:/program files/ClamAV-x64"
WORKDIR c:/
RUN mkdir logs
RUN mkdir db
COPY clam.zip C:/clam.zip

RUN powershell -Command "expand-archive -Path 'c:\clam.zip' -DestinationPath 'c:\'"

COPY clamd.conf ${ClamPath}
COPY freshclam.conf ${ClamPath}

WORKDIR ${ClamPath}

RUN freshclam

EXPOSE 3310
ENTRYPOINT [ "clamd" ]