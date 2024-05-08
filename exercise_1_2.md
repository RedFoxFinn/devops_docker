# Ex 1.2

### Stopped influxdb instances listed
#### docker ps -a:

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
| ------------ | ----- | ------- | ------- | ------ | ----- | ----- |
| 0dfc64eb79c7 | influxdb | "/entrypoint.sh infl…" | 3 minutes ago | Exited (2) 9 seconds ago | | sweet_bassi |
| b481ddacfd6a | nginx:latest | "/docker-entrypoint.…" | 13 minutes ago | Up 13 minutes | 80/tcp | hardcore_feistel |
| 5598c7e24e9d | influxdb | "/entrypoint.sh infl…" | 13 minutes ago | Exited (2) 3 seconds ago | | nervous_keldysh |

### Removed stopped and unwanted containers and images
#### docker ps -a:

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
| ------------ | ----- | ------- | ------- | ------ | ----- | ----- |
| b481ddacfd6a | nginx:latest | "/docker-entrypoint.…" | 30 minutes ago | Up 30 minutes | 80/tcp | hardcore_feistel |

#### docker images:

| REPOSITORY | TAG | IMAGE ID | CREATED | SIZE |
| ---------- | --- | -------- | ------- | ---- |
| nginx | latest | 1d668e06f1e5 | 3 days ago | 188MB |
