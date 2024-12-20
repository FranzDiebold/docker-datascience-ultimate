FROM franzdiebold/datascience-ultimate-server:latest

LABEL org.opencontainers.image.authors="franz@diebold.io"

ENV DOCKER_STACKS_JUPYTER_CMD=lab

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY --chown=${NB_UID}:${NB_GID} settings/overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json
COPY --chown=${NB_UID}:${NB_GID} user-settings/@jupyterlab/apputils-extension/ "/home/${NB_USER}/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/"
