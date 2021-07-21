## How-to

To start a Kong service:

```
docker-compose up
```

To stop a service:

```
docker-compose down
```

When service is up, refer to the file for /metrics, /status and other Kong endpoints
```
kong-endpoints.http
```

An example of request/reponse logs can be found here:
```
request-response-log.example
```

Note that the volume with logs is mounted:
> ./log-mount/
