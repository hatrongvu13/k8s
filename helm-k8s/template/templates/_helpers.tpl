{{/* Deployment labels*/}}
{{- define "deployment.labels" -}}
    app: {{ .Release.Name }}
{{- end }}

{{/* annotations */}}
{{- define "ingress.annotations" -}}
    kubernetes.io/ingress.class: nginx
    cert-manager.io/issuer: "letsencrypt-{{ .Release.Name }}"
{{- end }}