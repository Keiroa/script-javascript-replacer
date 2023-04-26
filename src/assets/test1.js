const express = require('express')
const app = express()
const path = require('path')
const port = 3000

app.get('/', (request, response) => {
  response.sendFile(path.join(__dirname, '../dist/index.html'))
})

app.use(express.static(path.join(__dirname, '../dist')))

app.listen(port)

console.log('Test Asset starting in http://localhost:' + port)
