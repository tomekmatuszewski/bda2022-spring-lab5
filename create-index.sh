#!/bin/sh
curl -X PUT -s -u 'user:password' 'https://search-datamass-amowh3utbvohruqg7ycouy7p7y.eu-central-1.es.amazonaws.com/jeopardy' -H 'Content-Type: application/json' -d \
'
{
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 1
    }
  },
  "mappings": {
    "properties": {
      "show_number": {"type": "integer"},
      "value": {"type": "integer"}
    }
  }
}
'
# delete the index
#curl -X DELETE -s -u 'user:password' 'https://search-datamass-amowh3utbvohruqg7ycouy7p7y.eu-central-1.es.amazonaws.com/jeopardy'