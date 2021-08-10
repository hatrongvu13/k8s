{{/* Common labels */}}
{{- define "common.labels" }}
    app: ngix
    type: demo
    indentity_key : {{ .Values.indentity_key }}
{{- end }}