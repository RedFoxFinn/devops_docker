
# Ex 1.7 (run in directory ex1_7)

### build image
docker build . -t curler

### run image as container
docker run -it curler

#### output
input website:

#### enter site
helsinki.fi

#### output
Searching..
`<html>`
`<head><title>301 Moved Permanently</title></head>`
`<body>`
`<center><h1>301 Moved Permanently</h1></center>`
`<hr><center>nginx/1.22.1</center>`
`</body>`
`</html>`
