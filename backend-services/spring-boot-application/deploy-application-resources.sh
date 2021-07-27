kubectl create namespace test
# Deploy the applications
kubectl -n test apply -f .
# Verify the deployment
kubectl -n test get deployments
kubectl -n test get services
sleep 3
echo "========Now running the below pods in test namespace========"
kubectl -n test get pods -o wide