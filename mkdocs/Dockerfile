FROM ubuntu:18.04
ARG PROJECT_NAME
ENV MKDOCS_FOLDER=/usr/local/mkdocs LC_ALL=C.UTF-8 LANG=C.UTF-8
RUN apt-get update && apt install -y mkdocs && mkdir ${MKDOCS_FOLDER}
WORKDIR ${MKDOCS_FOLDER}
RUN mkdocs new ${PROJECT_NAME}
WORKDIR ${MKDOCS_FOLDER}/${PROJECT_NAME}
COPY files .
EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]
