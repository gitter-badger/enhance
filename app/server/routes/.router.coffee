module.exports = require('express-promise-router')()
{readdirSync,statSync} = require 'fs'

# load routes
(recurse = (dir) ->
  readdirSync(dir).forEach (file)->
    if file.charAt(0) == '.' then return

    path = dir + '/' + file

    if statSync(path).isDirectory()
      recurse(path)

    else
      require path
)(__dirname)