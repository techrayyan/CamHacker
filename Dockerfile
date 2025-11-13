# Dockerfile

# Script       : CamHacker
# Author       : KasRoudra
# Github       : https://github.com/techrayyan
# Messenger    : https://m.me/
# Email        : techrayyan002@gmail.com
# Date         : 14-11-2025
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/techrayyan/CamHacker"

# Working directory
WORKDIR /CamHacker/
# Add files 
ADD . /CamHacker

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t techrayyan/camhacker:latest", "sudo docker run --rm -it techrayyan/pyphisher:latest"

## "sudo docker pull techrayyan/camhacker", "sudo docker run --rm -it techrayyan/camhacker"
