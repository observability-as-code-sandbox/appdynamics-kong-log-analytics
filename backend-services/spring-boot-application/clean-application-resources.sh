kubectl -n test delete -f .
# Verify the deployment
echo "========Now running the below pods in test namespace========"
kubectl -n test get pods -o wide
# Delete namespace
kubectl delete namespace test