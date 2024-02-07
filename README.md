# Zerok Community Kubernetes Helm Charts

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/zerok-ai)](https://artifacthub.io/packages/search?org=zerok-ai&cncf=true) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) ![Release Charts](https://github.com/zerok-ai/helm-charts/actions/workflows/release.yaml/badge.svg?branch=main) [![Releases downloads](https://img.shields.io/github/downloads/zerok-ai/helm-charts/total.svg)](https://github.com/zerok-ai/helm-charts/releases)

This functionality is in beta and is subject to change. The code is provided as-is with no warranties. Beta features are not subject to the support SLA of official GA features.

## Get Helm Repositories Info

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repository as follows:

```console
helm repo add zerok-ai https://zerok-ai.github.io/helm-charts
```

You can then run `helm search repo zerok-ai` to see the charts.

## Install Helm Chart

```console
helm install [RELEASE_NAME] zerok-ai/zk-client
```

_See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation._

## Uninstall Helm Chart

```console
helm uninstall [RELEASE_NAME]
```

This removes all the Kubernetes components associated with the chart and deletes the release.

_See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation._

## Upgrading Helm Chart

```console
helm upgrade [RELEASE_NAME] [CHART] --install
```

_See [helm upgrade](https://helm.sh/docs/helm/helm_upgrade/) for command documentation._


[//]: # (## Contributing)
## Source Code

The source code of all [Zerok](https://zerok.ai) community [Helm](https://helm.sh) charts can be found on Github: <https://github.com/zerok-ai/helm-charts/>

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->

[//]: # (We'd love to have you contribute! Please refer to our [contribution guidelines]&#40;https://github.com/zerok-ai/helm-charts/blob/main/CONTRIBUTING.md&#41; for details.)

## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
[Apache 2.0 License](https://github.com/zerok-ai/helm-charts/blob/main/LICENSE).

## Helm charts build status

![Release Charts](https://github.com/zerok-ai/helm-charts/actions/workflows/release.yaml/badge.svg?branch=main)
