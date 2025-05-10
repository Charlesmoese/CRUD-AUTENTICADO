curl --request POST \
  --url 'http://localhost:3000/contacts' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "phone": "1234567890"
  }'