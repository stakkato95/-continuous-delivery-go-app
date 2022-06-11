$name = "postgresql"

echo "`nwaiting for pod to be ready..."
kubectl wait -n default --for=condition=Ready $(kubectl get pod -n default -l app.kubernetes.io/name=$name -o=name)
kubectl port-forward -n default svc/continuous-delivery-go-app-$name 5432:5432