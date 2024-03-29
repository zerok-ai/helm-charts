{{/*
Expand the name of the chart.
*/}}
{{- define "zk-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "zk-operator.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "zk-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "zk-operator.labels" -}}
helm.sh/chart: {{ include "zk-operator.chart" . }}
{{ include "zk-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "zk-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "zk-operator.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "zk-operator.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "zk-operator.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
fetch a chart version from chart.yaml and using this as a image tag in deployment.yaml
*/}}
{{- define "zk-operator.chartVersion" -}}
  {{- required "Error: chart version is required" .Chart.Version }}
{{- end -}}

{{/*
fetch a chart version from chart.yaml and using this as a image tag in deployment.yaml
*/}}
{{- define "zk-operator.appVersion" -}}
  {{- required "Error: App version is required" .Chart.AppVersion }}
{{- end -}}