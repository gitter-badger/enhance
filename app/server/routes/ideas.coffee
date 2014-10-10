router = require './.router'
es = require '../es'
Promise = require 'bluebird'
{pluck} = require 'lodash'

router.get '/ideas', Promise.method (req, res)->
  params =
    index: 'enhance',
    type: 'idea',
    body:
      query:
        match:
          status: 'open'

  es.search params
  .then (resp)->
    pluck resp.hits.hits, 'title', 'description'
