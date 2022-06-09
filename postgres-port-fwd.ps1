$name = "postgresql"

echo "`nwaiting for pod to be ready..."
kubectl wait --for=condition=Ready $(kubectl get pod -l app.kubernetes.io/name=$name -o=name)
kubectl port-forward svc/app-$name 5432:5432