
## Prepare Application

### Tutorial to containerize spring boot applications
https://spring.io/guides/gs/spring-boot-kubernetes/

## Create test applications
> Create deployment (done)
```
kubectl create deployment spring-boot --image=arey/springboot-petclinic --dry-run=client -o=yaml > spring-deployment.yaml
```

> Create service (done)
```
kubectl create service clusterip spring-boot --tcp=80:8080 --dry-run=client -o=yaml > spring-svc.yaml
```

> only need that needs to be run:
```
./spring-boot-application/deploy-application-resources.sh
```

> to remove resources at the end
```
./spring-boot-application/clean-application-resources.sh
```

Port fwding
```
k port-forward svc/spring-boot-lb 8080:8080
```

####  Do I need ingress here? > would GCP be easy hosting solution (enable in UI)

## Deploy Agent

```
./backend-services/cluster-agent/install-cluster-agent.sh
```

### To clean-up at the end

