curl -XDELETE http://localhost:9200/_river/cposc

#CHECK FOR IP OF COUCHDB INSTANCE
curl -XPOST http://localhost:9200/_river/cposc/_meta -d '{
  "type": "couchdb",
  "couchdb": {
    "host" : "172.17.0.9",
    "port" : 5984,
    "db" : "cposc",
    "script": "ctx.doc.newfield = ctx.doc.group.name + \" meets about the topic: \" + ctx.doc.name"
  },
  "index" : {
    "index" : "cposc",
    "type" : "meeting",
    "bulk_size" : "10",
    "bulk_timeout" : "100ms"
  }
}'
