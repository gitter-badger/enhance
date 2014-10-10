express = require './express'
{keys} = require 'lodash'
port = process.env.PORT || 8000

express.server.listen port, ->
  console.log 'listening on port', port