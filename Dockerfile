FROM ubuntu:22.04

# Install Docker (since we need Docker-in-Docker)
RUN apt-get update && apt-get install -y \
    docker.io \
    docker-compose \
    curl \
    gnupg \
    ca-certificates \
    lsb-release \
    sudo

# Add a user for codespaces
RUN useradd -ms /bin/bash codespace && echo "codespace ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER codespace
WORKDIR /home/codespace
