FROM ubuntu:18.04
ENV MKDOCS_FOLDER=/usr/local/mkdocs LC_ALL=C.UTF-8 LANG=C.UTF-8
RUN apt-get update && apt install -y mkdocs && mkdir ${MKDOCS_FOLDER}
WORKDIR ${MKDOCS_FOLDER}
