FROM squidfunk/mkdocs-material
RUN pip install mkdocs-material


WORKDIR /app
COPY public/ /app/public
COPY src/ /app/src