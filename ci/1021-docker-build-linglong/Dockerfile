FROM openos365/openos365-10042-deepinlinux-v23-docker-main-root:latest

# 1
COPY files/ /files/

RUN /files/install.sh

# 3
RUN rm -rf /files/
