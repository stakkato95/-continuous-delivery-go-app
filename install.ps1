cd helm

rm Chart.lock
rm -r charts
helm dependency build
helm install continuous-delivery-go-app . -n test

cd ..