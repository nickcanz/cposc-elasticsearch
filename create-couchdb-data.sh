docker run -d -p 5984:5984 klaemo/couchdb
# http://localhost:5984/_utils/index.html
curl -XPUT http://localhost:5984/cposc

bash meetings.data
