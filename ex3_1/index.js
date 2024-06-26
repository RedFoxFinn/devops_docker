const express = require('express')
const app = express()
const path = require('path')

app.use('/', express.static(path.join(__dirname, 'content')))

const PORT = 8080

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
