# Ex 1.1

### Ran 2 instances of influxdb & 1 nginx detached

#### docker ps -a:

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
| ------------ | ----- | ------- | ------- | ------ | ----- | ----- |
| 0dfc64eb79c7 | influxdb | "/entrypoint.sh infl…" | 3 seconds ago | Up 2 seconds | 8086/tcp | sweet_bassi |
| b481ddacfd6a | nginx:latest | "/docker-entrypoint.…" | 10 minutes ago | Up 9 minutes | 80/tcp | hardcore_feistel |
| 5598c7e24e9d | influxdb | "/entrypoint.sh infl…" | 10 minutes ago | Up 10 minutes | 8086/tcp | nervous_keldysh |

### Stopped influxdb instances

#### docker ps -a:

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
| ------------ | ----- | ------- | ------- | ------ | ----- | ----- |
| 0dfc64eb79c7 | influxdb | "/entrypoint.sh infl…" | 3 minutes ago | Exited (2) 9 seconds ago | | sweet_bassi |
| b481ddacfd6a | nginx:latest | "/docker-entrypoint.…" | 13 minutes ago | Up 13 minutes | 80/tcp | hardcore_feistel |
| 5598c7e24e9d | influxdb | "/entrypoint.sh infl…" | 13 minutes ago | Exited (2) 3 seconds ago | | nervous_keldysh |
