curl --request POST \
  --url 'http://localhost:3000/contacts' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "",
    "email": "invalid-email",
    "phone": ""
}'