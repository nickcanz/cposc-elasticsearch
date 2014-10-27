curl -XPUT http://localhost:9200/phillydevops2

curl -XPOST http://localhost:9200/_aliases -d'
{
"actions":[
{"add":{"index":"phillydevops2","alias":"phillydevops_forealz"}}
]
}'


curl -XPOST http://localhost:9200/_aliases -d'
{
"actions":[
  {"remove": {"index":"phillydevops2","alias":"phillydevops_forealz"}},
  {"add": {"index":"phillydevops","alias":"phillydevops_forealz"}}
]
}'
