{{/* Chart名称 */}}
{{- define "app.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{/* Release完整名称 release-chartname */}}
{{- define "app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "app.name" .) -}}
{{- end -}}

{{/* 统一标准标签：输出键值对，供labels下渲染 */}}
{{- define "app.commonLabels" -}}
app: {{ include "app.name" . }}
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}
