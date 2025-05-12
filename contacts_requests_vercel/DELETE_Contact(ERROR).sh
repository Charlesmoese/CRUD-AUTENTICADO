curl --request DELETE \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts/contacts/invalid_contact_id' \
  --header 'Authorization: Bearer <your_jwt_token>' \
  --header 'Content-Type: application/json'
