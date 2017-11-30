FROM microsoft/dotnet:2.0.3-sdk
RUN apt-get update -y
RUN apt-get install -y rsync 
