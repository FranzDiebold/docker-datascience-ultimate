FROM jupyter/all-spark-notebook:latest

RUN pip install jupyterlab_darkside_ui plotly

COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json