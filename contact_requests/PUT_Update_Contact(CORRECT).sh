curl --request PUT \
  --url 'http://localhost:3000/contacts/{contact_id}' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Updated Contact Name",
    "email": "updatedcontact@example.com",
    "phone": "1234567890"
}'