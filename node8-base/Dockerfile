FROM ubuntu:16.04

RUN apt update -y && \
    apt install -y curl

RUN useradd -m germanium

USER germanium
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash &&\
    export NVM_DIR=/home/germanium/.nvm && \
    . /home/germanium/.nvm/nvm.sh && \
    nvm install v8.11.1
ENV PATH="/home/germanium/.nvm/versions/node/v8.11.1/bin:$PATH"

#============================================================================
# Install node + webpack
#============================================================================

