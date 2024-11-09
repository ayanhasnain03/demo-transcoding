FROM ubuntu:focal

# Update package list and install curl
RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    /usr/bin/apt-get update && \
    /usr/bin/apt-get upgrade -y && \
    /usr/bin/apt-get install -y nodejs ffmpeg

# Set the working directory
WORKDIR /home/app

# Set the entrypoint to bash
ENTRYPOINT [ "bash" ]
