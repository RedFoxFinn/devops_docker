
# Ex 1.10

### Run container

#### docker run -p 3456:8080 --name devops_uh_p web-server server

#### output:

[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2024/05/07 - 14:08:34 | 200 |      47.457µs |      172.17.0.1 | GET      "/"
[GIN] 2024/05/07 - 14:08:35 | 200 |      22.023µs |      172.17.0.1 | GET      "/favicon.ico"

#### localhost:3456:

{
"message": "You connected to the following path: /",
"path": "/"
}

