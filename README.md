# docker-jupyter-spark

A customized [Jupyter](https://jupyter.org/) [Spark](https://spark.apache.org/docs/latest/api/python/) [Docker](https://www.docker.com/) image.

## What's in?

- Everything from [jupyter/all-spark-notebook](https://hub.docker.com/r/jupyter/all-spark-notebook)
  - [Python 3.9](https://www.python.org/)
  - [Spark](https://spark.apache.org/docs/latest/api/python/)
  - [Jupyter](https://jupyter.org/)
- Theme: [Jupyterlab Darkside UI](https://github.com/dunovank/jupyterlab_darkside_ui)
- More packages:
  - [Plotly](https://plotly.com/python/)

## How to use?

```bash
docker pull franzdiebold/jupyter-spark
docker run -p 8888:8888 -p 4040:4040 franzdiebold/jupyter-spark
```

## Use it in your daily routine :rocket:

In your `.zshrc` / `.bashrc` file add:

```bashrc
alias jupyter='docker run --rm -p 8888:8888 -p 4040:4040 -v "${PWD}":/home/jovyan franzdiebold/jupyter-spark:latest'
```
