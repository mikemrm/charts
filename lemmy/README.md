# lemmy

![Version: v0.1.4](https://img.shields.io/badge/Version-v0.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.19.7](https://img.shields.io/badge/AppVersion-0.19.7-informational?style=flat-square)

lemmy

## Usage

Direct URL: `oci://mrmhub.io/mikemrm/lemmy`

Chart Dependency:

```yaml
dependencies:
  - name: lemmy
    repository: 'oci://mrmhub.io/mikemrm'
    version: 'v0.1.4'
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.27.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| pictrs.enabled | bool | `true` |  |
| pictrs.external.apiKey | string | `""` |  |
| pictrs.external.url | string | `""` |  |
| pictrs.image.digest | string | `""` |  |
| pictrs.image.pullPolicy | string | `"IfNotPresent"` |  |
| pictrs.image.registry | string | `""` |  |
| pictrs.image.repository | string | `"asonix/pictrs"` |  |
| pictrs.image.tag | string | `"0.5.16"` |  |
| pictrs.labels | object | `{}` |  |
| pictrs.resources | object | `{}` |  |
| pictrs.resourcesPreset | string | `"micro"` |  |
| proxy.config.allowedProxies | list | `[]` |  |
| proxy.config.enabled | bool | `false` |  |
| proxy.enabled | bool | `false` |  |
| proxy.image.digest | string | `""` |  |
| proxy.image.pullPolicy | string | `"IfNotPresent"` |  |
| proxy.image.registry | string | `""` |  |
| proxy.image.repository | string | `"nginx"` |  |
| proxy.image.tag | string | `"1-alpine"` |  |
| proxy.ingress.annotations | object | `{}` |  |
| proxy.ingress.enabled | bool | `false` |  |
| proxy.ingress.hosts | list | `[]` |  |
| proxy.ingress.tls | list | `[]` |  |
| proxy.labels | object | `{}` |  |
| proxy.resources | object | `{}` |  |
| proxy.resourcesPreset | string | `"nano"` |  |
| server.config.corsOrigins | list | `[]` |  |
| server.config.database.database | string | `""` |  |
| server.config.database.host | string | `""` |  |
| server.config.database.password | string | `""` |  |
| server.config.database.passwordSecret | string | `""` |  |
| server.config.database.poolSize | int | `0` |  |
| server.config.database.port | int | `0` |  |
| server.config.database.uri | string | `""` |  |
| server.config.database.uriSecret | string | `""` |  |
| server.config.database.user | string | `""` |  |
| server.config.email.smtp.fromAddress | string | `""` |  |
| server.config.email.smtp.login | string | `""` |  |
| server.config.email.smtp.password | string | `""` |  |
| server.config.email.smtp.passwordSecret | string | `""` |  |
| server.config.email.smtp.server | string | `""` |  |
| server.config.email.tls.type | string | `""` |  |
| server.config.enabled | bool | `true` |  |
| server.config.hostname | string | `""` |  |
| server.config.opentelemetryURL | string | `""` |  |
| server.config.retryCount | int | `0` |  |
| server.config.setup.admin.email | string | `""` |  |
| server.config.setup.admin.password | string | `""` |  |
| server.config.setup.admin.username | string | `""` |  |
| server.config.setup.site.name | string | `""` |  |
| server.config.workerCount | int | `0` |  |
| server.image.digest | string | `""` |  |
| server.image.pullPolicy | string | `"IfNotPresent"` |  |
| server.image.registry | string | `""` |  |
| server.image.repository | string | `"dessalines/lemmy"` |  |
| server.image.tag | string | `""` |  |
| server.ingress.annotations | object | `{}` |  |
| server.ingress.enabled | bool | `false` |  |
| server.ingress.hosts | list | `[]` |  |
| server.ingress.tls | list | `[]` |  |
| server.labels | object | `{}` |  |
| server.resources | object | `{}` |  |
| server.resourcesPreset | string | `"micro"` |  |
| server.serviceMonitor.enabled | bool | `false` |  |
| server.serviceMonitor.labels | object | `{}` |  |
| ui.enabled | bool | `true` |  |
| ui.external.host | string | `""` |  |
| ui.external.https | bool | `false` |  |
| ui.image.digest | string | `""` |  |
| ui.image.pullPolicy | string | `"IfNotPresent"` |  |
| ui.image.registry | string | `""` |  |
| ui.image.repository | string | `"dessalines/lemmy-ui"` |  |
| ui.image.tag | string | `""` |  |
| ui.ingress.annotations | object | `{}` |  |
| ui.ingress.enabled | bool | `false` |  |
| ui.ingress.hosts | list | `[]` |  |
| ui.ingress.tls | list | `[]` |  |
| ui.labels | object | `{}` |  |
| ui.resources | object | `{}` |  |
| ui.resourcesPreset | string | `"nano"` |  |

