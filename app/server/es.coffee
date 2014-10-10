Elasticsearch = require 'elasticsearch'

es = module.exports = new Elasticsearch.Client
  host: process.env.BONSAI_URL
