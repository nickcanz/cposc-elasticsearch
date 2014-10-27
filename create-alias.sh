curl -XPUT http://localhost:9200/cposc2

curl -XPOST http://localhost:9200/_aliases -d'
{
"actions":[
{"add":{"index":"cposc2","alias":"cposc_forealz"}}
]
}'


curl -XPOST http://localhost:9200/_aliases -d'
{
"actions":[
  {"remove": {"index":"cposc2","alias":"cposc_forealz"}},
  {"add": {"index":"cposc","alias":"cposc_forealz"}}
]
}'
