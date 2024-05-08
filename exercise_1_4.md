# Ex 1.4

### Download ubuntu image
#### docker pull ubuntu

### Run 'beautiful' oneliner command
#### docker run -it --name ubuntu ubuntu sh -c 'apt update && apt install -y curl && while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'

### Asks input
#### enter 'helsinki.fi'
#### outputs:

Searching..
`<html>`
`<head><title>301 Moved Permanently</title></head>`
`<body>`
`<center><h1>301 Moved Permanently</h1></center>`
`<hr><center>nginx/1.22.1</center>`
`</body>`
`</html>`

