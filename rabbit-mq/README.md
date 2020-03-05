# Rabbit-mq DockerFiles 

The intent of this project is to share dockerfiles we use in our processes as Softdocs. This enables us to contribute to the Open-source community. 
With the lack of official supported Windows containers we found we needed to make a Rabbit-mq Windows container that suited our needs. We found a lovely way of doing this over at https://github.com/cortside/dockerfiles/tree/master/rabbitmq . There were a few things we needed to add to our container, and we expect others would need this too.

## Getting Started

To use this project you need to be running a form of windows with docker installed. Look at Microsoft's support for windows containers => https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/version-compatibility?tabs=windows-server-2016%2Cwindows-10-1909 .

### Prerequisites
Docker & Windows

## Deployment

To Deploy this pull from Docker hub, as there is a repo with this image built and tagged accordingly. 

## Built With

* [Docker](https://docs.docker.com/) - Used to containerize. 
* [Rabbitmq](https://www.rabbitmq.com/) - The service we were containerizing.
* [Powershell](https://docs.microsoft.com/en-us/powershell/) - Used to configure image. 
* [Chocolatey](https://chocolatey.org/) - Used for package management

## Acknowledgments
* Thanks to the wonderful work done by cortside, https://hub.docker.com/r/cortside/rabbitmq. This was a great help to get rabbit containerized. 
* As we just made some changes to make it fit our pattern better. 