curl --request PUT \
  --url 'http://localhost:3000/contacts/{contact_id}' \
  --header 'Authorization: Bearer <your_jwt_token>' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "",
    "email": "invalid@example.com",
    "phone": ""
  }'