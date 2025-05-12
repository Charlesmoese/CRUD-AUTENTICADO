curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE2MzE5YjIyMmE3ZThmYjdiY2NlMiIsImlhdCI6MTc0NzAxODUyOSwiZXhwIjoxNzQ3MDIyMTI5fQ.LMvw4sRP3iAh4vzXpgJ2bhN0xRaHPL78KBneFe1oy9w' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "",
    "email": "invalid@example.com",
    "phone": ""
  }'
