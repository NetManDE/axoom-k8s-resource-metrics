# Kubernetes Resource Metrics

[![Docker Build Status](https://img.shields.io/docker/cloud/build/axoom/k8s-resource-metrics.svg)](https://hub.docker.com/r/axoom/k8s-resource-metrics)

Exposes the status field of a specific kind of Kubernetes Resource (e.g. Pod) as a [Prometheus](https://prometheus.io/) metric.

We recommend deploying this using the [Kubernetes Resource Metrics Helm Chart](https://github.com/AXOOM/charts/blob/master/charts/k8s-resource-metrics/README.md)

You can also configure it manually by setting the following environment variables:

| Name            | Default            | Description                                                                      |
|-----------------|--------------------|----------------------------------------------------------------------------------|
| `RESOURCE_TYPE` | `pods`             | The plural name of the Kubernetes resource to monitor (e.g. `serviceinstances`). |
| `STATUS_COLUMN` | `4`                | The `kubectl get` column that contains status of the resource (e.g. `5`).        |
| `FILTER_ARGS`   | `--all-namespaces` | kubectl arguments for filtering Kubernetes resources (e.g. `-n mynamepsace`).    |
