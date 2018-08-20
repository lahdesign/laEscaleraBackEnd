#!/bin/bash
curl "http://localhost:4741/colors" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "color": {
      "value": "'"${VALUE}"'"
    }
  }'

echo
