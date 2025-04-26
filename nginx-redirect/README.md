# nginx-redirect

![Version: v0.4.2](https://img.shields.io/badge/Version-v0.4.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.28.0](https://img.shields.io/badge/AppVersion-1.28.0-informational?style=flat-square)

A simple deployment to redirect requests.

## Usage

Direct URL: `oci://mrmhub.io/mikemrm/nginx-redirect`

Chart Dependency:

```yaml
dependencies:
  - name: nginx-redirect
    repository: 'oci://mrmhub.io/mikemrm'
    version: 'v0.4.2'
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.30.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| deployment.annotations | object | `{}` |  |
| deployment.image.digest | string | `""` |  |
| deployment.image.pullPolicy | string | `"IfNotPresent"` |  |
| deployment.image.registry | string | `""` |  |
| deployment.image.repository | string | `"nginx"` |  |
| deployment.image.tag | string | `""` |  |
| deployment.labels | object | `{}` |  |
| deployment.podLabels | object | `{}` |  |
| deployment.resources | object | `{}` |  |
| deployment.resourcesPreset | string | `"nano"` |  |
| fullnameOverride | string | `""` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | list | `[]` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| otel.batchCount | int | `4` | the number of pending batches per worker, spans exceeding the limit are dropped. |
| otel.batchSize | int | `512` | the maximum number of spans to be sent in one batch per worker. |
| otel.context | string | `"inject"` | specifies how to propagate trace context. Options:  - `extract` uses an existing trace context from the request, so that the identifiers of a trace and the parent span are inherited from the incoming request.  - `inject` adds a new context to the request, overwriting existing headers, if any.  - `propagate` updates the existing context (combines extract and i nject).  - `ignore` skips context headers processing. |
| otel.enabled | bool | `false` |  |
| otel.endpoint | string | `""` | the address of OTLP/gRPC endpoint that will accept telemetry data. |
| otel.interval | string | `"5s"` | the maximum interval between two exports. |
| otel.serviceName | string | .Release.Name | sets the "service.name" attribute of the OTel resource. |
| otel.spanAttributes | object | `{"http.referer":"$http_referer"}` | defines additional attributes on the span. |
| otel.spanName | string | `""` | defines the name of the OTel span. |
| proxy_real_ip_from | list | `[]` |  |
| redirects | object | `{}` |  |
| resolver | string | `"kube-dns.kube-system.svc.cluster.local"` |  |

