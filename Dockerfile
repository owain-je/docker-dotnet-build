FROM microsoft/dotnet:2.0.3-sdk
RUN apt-get update -y
RUN apt-get install -y rsync ruby python-pip
RUN pip install awscli --upgrade --user
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"
RUN apt-get install -y docker-ce


