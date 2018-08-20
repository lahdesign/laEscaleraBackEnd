#!/bin/bash
curl "http://localhost:4741/colors" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "color": {
      "value": "'"${VALUE}"'",
      "question_one": "'"${QUESTION_ONE}"'",
      "question_two": "'"${QUESTION_TWO}"'",
      "question_three": "'"${QUESTION_THREE}"'"
    }
  }'

echo

curl "http://localhost:4741/colors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "color": {
      "value": "'"${VALUE}"'"
    }
  }'

echo
