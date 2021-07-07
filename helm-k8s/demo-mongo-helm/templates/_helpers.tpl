{{/* config-map data */}}
{{- define "configmap.data" -}}
{{ .Values.db_url }}: {{ .Release.Name }}db-service
{{- end }}

{{/* server secret data */}}
{{- define "secret.data" -}}
{{ .Values.root_user }}: {{ .Values.root_user_values }}
{{ .Values.root_password }}: {{ .Values.root_password_values }}
{{- end }}