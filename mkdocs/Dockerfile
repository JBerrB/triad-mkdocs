FROM ubuntu:18.04
ENV MKDOCS_FOLDER=/usr/local/mkdocs LC_ALL=C.UTF-8 LANG=C.UTF-8
RUN apt-get update && apt install -y mkdocs && mkdir ${MKDOCS_FOLDER}
WORKDIR ${MKDOCS_FOLDER}
RUN mkdocs new tri-ad
WORKDIR ${MKDOCS_FOLDER}/tri-ad
COPY files .
EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]
