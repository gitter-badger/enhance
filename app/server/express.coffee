express = require('express')
{join} = require 'path'

app = module.exports = express()

app.use express.static join(__dirname, '../public')
app.use '/', require './routes/.router'

app.server = require('http').createServer(app);