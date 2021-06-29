ARG OS_VERSION=ltsc201
FROM mcr.microsoft.com/windows/servercore:$OS_VERSION

ARG RABBIT_VERSION=3.8.11
ENV RABBIT_VERSION=$RABBIT_VERSION
ARG ERLANG_VERSION=22.3
ENV ERLANG_VERSION=$ERLANG_VERSION

ENV chocolateyUseWindowsCompression false
ENV ERLANG_SERVICE_MANAGER_PATH="C:\Program Files\erl8.3\erts-8.3\bin"
ENV RABBITMQ_SERVER="C:\Program Files\RabbitMQ Server\rabbitmq_server-${RABBIT_VERSION}"
ENV ADMIN_PASSWORD=password1234@1
ENV BASE_PASSWORD=password1234@1
ENV BASE_USERNAME=baseuser

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'));
RUN choco install -y erlang --version $env:ERLANG_VERSION
RUN choco install -y rabbitmq --version $env:RABBIT_VERSION

COPY provisioning/ C:/
COPY provisioning/ C:/Users/ContainerAdministrator/AppData/Roaming/RabbitMQ/

EXPOSE 4369
EXPOSE 5672
EXPOSE 5671
EXPOSE 15672

WORKDIR C:/Program\ Files/RabbitMQ\ Server/rabbitmq_server-${RABBIT_VERSION}/sbin
COPY ./startUp.ps1 ./
COPY ./firstStart.ps1 ./firstStart.ps1
CMD ["powershell", "-Command", "./startUp.ps1"]