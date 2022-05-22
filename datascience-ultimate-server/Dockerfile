FROM jupyter/all-spark-notebook:latest

LABEL org.opencontainers.image.authors="franz@diebold.io"

ENV DOCKER_STACKS_JUPYTER_CMD=server

RUN mamba install --quiet --yes \
    'plotly=5.8.0' \
    'python-graphviz=0.20' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
