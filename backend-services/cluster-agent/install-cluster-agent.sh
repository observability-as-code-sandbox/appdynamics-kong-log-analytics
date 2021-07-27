echo "========Pull AppDynamics helm charts========"
helm repo add appdynamics-devnet-charts https://ciscodevnet.github.io/appdynamics-charts

helm repo list
echo "========Validate if AppDynamics charts are in the list========"
# NAME                    URL                                                                                    
# appdynamics-devnet-charts  https://ciscodevnet.github.io/appdynamics-charts  

echo "========Create a Namespace========"
kubectl create ns appdynamics

echo "========Install CLuster Agent========"
helm install --set controllerInfo.accessKey="2498dd59-KEY-HERE-8dc2f3efa112" --set clusterAgent.appName="cluster-agent-name-here" cluster-agent appdynamics-devnet-charts/cluster-agent -f values.yaml -n appdynamics
