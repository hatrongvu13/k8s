{{/* common.label*/}}
{{- define "common.labels" -}}
    app: {{ .Release.Name }}
    author: jax-helm
{{- end }}

{{/* containers detail*/}}
{{- define "common.containers" -}}
    containers:
    - name: mongodb
    image: mongo
    ports:
    - containerPort: 27017
    env:
    - name: {{ .Values.env.name }}
      valueFrom:
      secretKeyRef:
        name: 
{{- end }}