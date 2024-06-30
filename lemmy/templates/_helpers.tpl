{{- define "lemmy.service.fullname" }}
{{- printf "%s-%s" (include "common.names.fullname" .context | trunc (sub 62 (len .name) | int) | trimSuffix "-") .name -}}
{{- end }}
