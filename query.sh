curl -X GET -u 'user:password' 'https://search-datamass-amowh3utbvohruqg7ycouy7p7y.eu-central-1.es.amazonaws.com/jeopardy/_search' -H 'Content-Type: application/json' -d \
'
{
  "size": 2,
  "query": {
    "query_string": {
      "default_field": "category",
      "query": "country"
    }
  }
}
'