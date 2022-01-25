FROM jupyter/all-spark-notebook:latest

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json