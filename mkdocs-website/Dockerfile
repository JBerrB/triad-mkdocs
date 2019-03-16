FROM mkdocs
RUN mkdocs new tri-ad
WORKDIR ${MKDOCS_FOLDER}/tri-ad
COPY mkdocs.yml .
EXPOSE 8000
ENTRYPOINT ["mkdocs","serve"]
