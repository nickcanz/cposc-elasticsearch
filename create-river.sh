curl -XDELETE http://localhost:9200/_river/phillydevops

#CHECK FOR IP OF COUCHDB INSTANCE
curl -XPOST http://localhost:9200/_river/phillydevops/_meta -d '{
  "type": "couchdb",
  "couchdb": {
    "host" : "172.17.0.9",
    "port" : 5984,
    "db" : "phillydevops",
    "script": "ctx.doc.newfield = ctx.doc.group.name + \" meets about the topic: \" + ctx.doc.name"
  },
  "index" : {
    "index" : "phillydevops",
    "type" : "meeting",
    "bulk_size" : "10",
    "bulk_timeout" : "100ms"
  }
}'
