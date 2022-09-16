# Setup

1. Run minikube cluster
2. Generate images using 

```
./docker/setup-images.sh
```

3. Deploy images in minikube

```
 minikube image load <image>
```

Alternatively, push images in external registry and change imageRegistry and imagePullPolicy properties in values file

4. Deploy app

```
helm install devops-challenge -f helm/values.yaml helm/
```

5. Enable service external IP

```
minikube tunnel
```

6. calc service will be ready to receive requests under:

```
http://<acceleration-calc-svc external-ip>/<query> 
```

Note: If you are using linux based device, & sign need to be escaped
