FROM ubuntu:20.10
ARG VER=0.8.11
ARG TARGET_DIR=/opt/easyeda
RUN apt-get update && \
 apt-get install -y curl unzip && \
 mkdir -p ${TARGET_DIR}
WORKDIR ${TARGET_DIR}
RUN echo "Downloading EasyEDA v${VER}..." && \
 curl https://image.easyeda.com/files/EasyEDA-Router-v${VER}.zip -o easyeda.zip && \
 unzip easyeda.zip && \
 chmod +x lin64.sh && \
 sed -i 's/127.0.0.1/0.0.0.0/g' config/local/main.json
EXPOSE 3579
ENTRYPOINT [ "./lin64.sh" ]
