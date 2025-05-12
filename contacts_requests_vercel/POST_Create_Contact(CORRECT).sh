curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE0NmExY2Y3Y2NhNGUzOWI0YzZmMSIsImlhdCI6MTc0NzAxMTYzNywiZXhwIjoxNzQ3MDE1MjM3fQ.u7zMaAcfkB6w0Ctm6Dwg6l32w-JSW37hKELDRuotVFk' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "John Doe",
    "email": "john.doe@example.com",
    "phone": "1234567890"
  }'
