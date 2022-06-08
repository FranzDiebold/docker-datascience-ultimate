# Data Science Ultimate Docker images

[![CI](https://github.com/FranzDiebold/docker-datascience-ultimate/actions/workflows/ci.yml/badge.svg)](https://github.com/FranzDiebold/docker-datascience-ultimate/actions/workflows/ci.yml)
[![GitHub](https://img.shields.io/github/license/FranzDiebold/docker-datascience-ultimate)](./LICENSE)

Customized [JupyterLab](https://jupyter.org/) [Spark](https://spark.apache.org/docs/latest/api/python/) [Docker](https://www.docker.com/) images packed with everything you need.

![docker-datascience-ultimate Screenshot](images/datascience-ultimate_screenshot.png)

## Selecting an Image

The main question is: _Do you work in the browser or not?_

### [JupyterLab](./datascience-ultimate/)

[![Docker Hub: franzdiebold/datascience-ultimate](https://img.shields.io/badge/Docker%20Hub-franzdiebold%2Fdatascience--ultimate-2496ed)](https://hub.docker.com/r/franzdiebold/datascience-ultimate)

If you want to run JupyterLab in the _browser_, `franzdiebold/datascience-ultimate` is the image to go!

### [Jupyter Server](./datascience-ultimate-server/)

[![Docker Hub: franzdiebold/datascience-ultimate-server](https://img.shields.io/badge/Docker%20Hub-franzdiebold%2Fdatascience--ultimate--server-2496ed)](https://hub.docker.com/r/franzdiebold/datascience-ultimate-server)

If you only want to run a Jupyter Server and use a different software for your notebooks (i.e. [JetBrains DataSpell](https://www.jetbrains.com/de-de/dataspell/)) you should use the `franzdiebold/datascience-ultimate-server` image.

## Build images locally

```bash
make build-arm  # linux/arm64 architecture
make build-amd  # linux/amd64 architecture
```
