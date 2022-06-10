$name = "postgresql"

echo "`nwaiting for pod to be ready..."
kubectl wait -n test --for=condition=Ready $(kubectl get pod -n test -l app.kubernetes.io/name=$name -o=name)
kubectl port-forward -n test svc/continuous-delivery-go-app-$name 5432:5432