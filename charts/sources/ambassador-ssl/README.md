# ambassador-ssl
Helm chart to Install Let's Encrypt certificate for Ambassador in your Kubernetes cluster

Run commands:

```
$ helm repo add nhtua https://raw.githubusercontent.com/nhtua/charts/master/
$ helm show values nhtua/ambassador-ssl > values.yaml
```

You need to update configurations in values.yaml

```
admin_email: your_email@gmail.com
host: your-website.com
service:
  # name of your service run in k8s.
  name: my-app-service
  port: 80
```

Finally, install Let's Encrypt certificate by
```
$ helm install mywebsite-ssl nhtua/ambassador-ssl -f values.yaml
```
