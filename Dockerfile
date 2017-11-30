FROM microsoft/dotnet:2.0.3-sdk
RUN apt-get update -y
RUN apt-get install -y rsync ruby python-pip
RUN echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    apt-get update && \
    apt-cache policy docker-engine && \
    apt-get install docker-engine -y && \
    pip install awscli --upgrade --user
