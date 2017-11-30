FROM microsoft/dotnet:2.0.3-sdk
RUN apt-get update -y
RUN apt-get install -y rsync ruby python-pip
RUN echo "deb http://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D 
RUN apt-get update && \
    apt-cache policy docker-engine && \
    apt-get install docker-engine -y 
RUN pip install awscli --upgrade --user
