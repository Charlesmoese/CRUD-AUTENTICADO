curl --request DELETE \
  --url 'http://localhost:3000/contacts/{contact_id}' \
  --header 'Content-Type: application/json' \
  --data '{
    "message": "Contact deleted successfully"
  }'