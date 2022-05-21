# Data Science Ultimate Server Docker image

[![Docker Hub: franzdiebold/datascience-ultimate-server](https://img.shields.io/badge/Docker%20Hub-franzdiebold%2Fdatascience--ultimate--server-2496ed)](https://hub.docker.com/r/franzdiebold/datascience-ultimate-server)
[![Docker Pulls](https://img.shields.io/docker/pulls/franzdiebold/datascience-ultimate-server)](https://hub.docker.com/r/franzdiebold/datascience-ultimate-server)
[![GitHub: FranzDiebold/docker-datascience-ultimate](https://img.shields.io/badge/GitHub-FranzDiebold%2Fdocker--datascience--ultimate-0969da)](https://github.com/FranzDiebold/docker-datascience-ultimate)
[![GitHub](https://img.shields.io/github/license/FranzDiebold/docker-datascience-ultimate)](./LICENSE)

A customized [JupyterLab](https://jupyter.org/) [Spark](https://spark.apache.org/docs/latest/api/python/) [Docker](https://www.docker.com/) image packed with everything you need.

## What's in?

- Everything from [jupyter/all-spark-notebook](https://hub.docker.com/r/jupyter/all-spark-notebook)
  - [Python v3.9](https://www.python.org/)
  - [Scala v2.12](https://www.scala-lang.org/) (via `spylon-kernel`)
  - [R v4.1](https://www.r-project.org/)
  - [Spark v3.2](https://spark.apache.org/docs/latest/api/python/)
  - [JupyterLab v3.3](https://jupyter.org/)
  - [Pandas v1.4](https://pandas.pydata.org/)
  - [Numpy v1.21](https://numpy.org/)
  - [scikit-learn v1.0](https://scikit-learn.org/)
  - [SciPy v1.7](https://scipy.org/)
  - [Seaborn v0.11](https://seaborn.pydata.org/)
- More packages:
  - [XGBoost v1.6](https://xgboost.ai/)
  - [Plotly v5.8](https://plotly.com/python/)
  - [Polars v0.13](https://www.pola.rs/)
  - [Graphviz v0.20](https://github.com/xflr6/graphviz)

## How to use?

```bash
docker run -p 8888:8888 -p 4040:4040 franzdiebold/datascience-ultimate-server
```

The following endpoints / web apps will be available:

- Jupyter Server: [http://localhost:8888/](http://localhost:8888/)
- Spark Web UI: [http://localhost:4040/](http://localhost:4040/)

## Use it in your daily routine :rocket:

In your `.zshrc` / `.bashrc` file add:

```bashrc
alias jupyter='docker run --rm -p 8888:8888 -p 4040:4040 -v "${PWD}":/home/jovyan franzdiebold/datascience-ultimate-server:latest'
```

> 💪 For an even better integration into your daily Data Science routine, check out the [dockerize-datascience](https://github.com/FranzDiebold/dockerize-datascience) repo.

## Build image locally

```bash
make build-server-arm  # linux/arm64 architecture
make build-server-amd  # linux/amd64 architecture
```
