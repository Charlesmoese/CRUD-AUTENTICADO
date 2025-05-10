curl --request DELETE \
  --url 'http://localhost:3000/contacts/invalid_contact_id' \
  --header 'Content-Type: application/json' \
  --data '{
    "message": "This contact does not exist."
}'