# nginx-redirect

![Version: v0.1.0](https://img.shields.io/badge/Version-v0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.27.3](https://img.shields.io/badge/AppVersion-1.27.3-informational?style=flat-square)

A simple deployment to redirect requests.

## Usage

Direct URL: `oci://mrmhub.io/mikemrm/nginx-redirect`

Chart Dependency:

```yaml
dependencies:
  - name: nginx-redirect
    repository: 'oci://mrmhub.io/mikemrm'
    version: 'v0.1.0'
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.27.2 |

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
| ingress.tls | object | `{}` |  |
| nameOverride | string | `""` |  |
| redirects | object | `{}` |  |

