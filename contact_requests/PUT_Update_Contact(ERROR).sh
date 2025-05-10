curl --request PUT \
  --url 'http://localhost:3000/contacts/{id}' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "",
    "email": "invalid-email",
    "phone": "12345"
  }'