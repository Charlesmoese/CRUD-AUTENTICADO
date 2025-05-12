curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts' \
  --header 'Authorization: Bearer <your_jwt_token>' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "phone": "1234567890"
  }'
