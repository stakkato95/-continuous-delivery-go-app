cd helm

rm Chart.lock
rm -r charts
helm dependency build
helm install app .

cd ..