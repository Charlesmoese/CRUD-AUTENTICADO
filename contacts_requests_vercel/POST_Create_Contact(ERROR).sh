curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts/contacts' \
  --header 'Authorization: Bearer <your_jwt_token>' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "",
    "email": "invalid@example.com",
    "phone": ""
  }'
