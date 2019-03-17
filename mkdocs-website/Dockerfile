FROM mkdocs
RUN mkdocs new tri-ad
WORKDIR ${MKDOCS_FOLDER}/tri-ad
COPY files .
EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]
