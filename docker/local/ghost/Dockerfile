FROM node:18.18.1-buster-slim
LABEL maintainer="xergioalex@gmail.com"

ARG AWS_CLI_LINUX_TARGET

RUN apt-get update -y && \
  apt-get install less git wget unzip curl make groff -y && \
  # --- Clean ---
  apt-get remove wget unzip -y && \
  rm -Rf /tmp/aws /tmp/awscliv2.zip && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Add custom commands for container
RUN echo 'source /home/node/app/docker/custom_commands.sh' >> /root/.bashrc
