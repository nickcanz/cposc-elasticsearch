# http://localhost:9200/_plugin/head/
curl -XPUT 'http://localhost:9200/cposc/' -d '{
  "settings" : {
    "index": {
      "number_of_shards": 10,
      "number_of_replicas": 1
    }
  },
  "mappings" : {
    "meeting" : {
      "properties" : { }
    }
  }
}'
