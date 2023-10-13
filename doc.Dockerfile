FROM squidfunk/mkdocs-material
RUN pip install mkdocs-material


WORKDIR /app
COPY docs/ /app/docs
COPY mkdocs.yml /app/


CMD ["docker run --rm -v mkdocs build"]
