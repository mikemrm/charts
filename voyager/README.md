# voyager

![Version: v0.7.10](https://img.shields.io/badge/Version-v0.7.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.35.1](https://img.shields.io/badge/AppVersion-2.35.1-informational?style=flat-square)

voyager

## Usage

Direct URL: `oci://mrmhub.io/mikemrm/voyager`

Chart Dependency:

```yaml
dependencies:
  - name: voyager
    repository: 'oci://mrmhub.io/mikemrm'
    version: 'v0.7.10'
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.31.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | list | `[]` |  |
| envFrom | list | `[]` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"ghcr.io"` |  |
| image.repository | string | `"aeharding/voyager"` |  |
| image.tag | string | `""` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | list | `[]` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | list | `[]` |  |
| labels | object | `{}` |  |
| lemmyServers | list | `[]` |  |
| proxy.config.allowedProxies | list | `[]` |  |
| proxy.config.enabled | bool | `true` |  |
| proxy.config.lemmyServer | string | `""` |  |
| proxy.enabled | bool | `false` |  |
| proxy.image.digest | string | `""` |  |
| proxy.image.pullPolicy | string | `"IfNotPresent"` |  |
| proxy.image.registry | string | `""` |  |
| proxy.image.repository | string | `"nginx"` |  |
| proxy.image.tag | string | `"1-alpine"` |  |
| proxy.ingress.annotations | object | `{}` |  |
| proxy.ingress.enabled | bool | `false` |  |
| proxy.ingress.hosts | list | `[]` |  |
| proxy.ingress.ingressClassName | string | `""` |  |
| proxy.ingress.tls | list | `[]` |  |
| proxy.labels | object | `{}` |  |
| proxy.resources | object | `{}` |  |
| proxy.resourcesPreset | string | `"nano"` |  |
| resources | object | `{}` |  |
| resourcesPreset | string | `"nano"` |  |
| service.enabled | bool | `false` |  |

