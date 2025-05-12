curl --request PUT \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts/{contact_id}' \
  --header 'Authorization: Bearer <your_jwt_token>' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Updated Contact Name",
    "email": "updatedcontact@example.com",
    "phone": "1234567890"
  }'
