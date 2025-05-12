curl --request DELETE \
  --url 'http://localhost:3000/contacts/{contact_id}' \
  --header 'Authorization: Bearer <your_jwt_token>' \
  --header 'Content-Type: application/json'