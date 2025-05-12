curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE2NGFmYjIyMmE3ZThmYjdiY2NmMCIsImlhdCI6MTc0NzAxODkzNCwiZXhwIjoxNzQ3MDIyNTM0fQ.lNulZ_nkmkFy7pxefRHa_2_qkRRffYGdpHSoQqE2Vok' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "phone": "1234567890"
  }'
