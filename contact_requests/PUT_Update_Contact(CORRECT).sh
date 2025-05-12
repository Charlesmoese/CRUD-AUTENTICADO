curl --request PUT \
  --url 'http://localhost:3000/contacts/{68215b72229f13f2e1fce914}' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE1OTdiMjI5ZjEzZjJlMWZjZTkwYSIsImlhdCI6MTc0NzAxNjA2OSwiZXhwIjoxNzQ3MDE5NjY5fQ.dAmy3X_dzU036d2OP9us68qI6broqR7QeimrHunr1Rk' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Updated Contact Name",
    "email": "updatedcontact@example.com",
    "phone": "1234567890"
  }'