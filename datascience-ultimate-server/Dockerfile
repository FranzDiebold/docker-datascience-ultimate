# Base image for X86 architecture
FROM quay.io/jupyter/all-spark-notebook:x86_64-latest AS base-amd64

# Base image for ARM architecture
FROM quay.io/jupyter/all-spark-notebook:aarch64-latest AS base-arm64

# Actual base image to be used
FROM base-${TARGETARCH}

LABEL org.opencontainers.image.authors="franz@diebold.io"

ENV DOCKER_STACKS_JUPYTER_CMD=server

USER root

# Graphviz
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends graphviz && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}

# GCC (needed for XGBoost)
RUN mamba install --quiet --yes gcc && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
