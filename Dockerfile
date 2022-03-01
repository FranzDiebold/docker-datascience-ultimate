FROM jupyter/all-spark-notebook:latest

LABEL org.opencontainers.image.authors="franz@diebold.io"

RUN mamba install --quiet --yes \
    'jupyterlab-git=0.34.2' \
    'plotly=5.6.0' \
    'xgboost' \
    'python-graphviz=0.19.1' \
    'black[jupyter]=22.1.0' \
    'isort=5.10.1' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json