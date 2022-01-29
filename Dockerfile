FROM jupyter/all-spark-notebook:latest

LABEL org.opencontainers.image.authors="franz@diebold.io"

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json