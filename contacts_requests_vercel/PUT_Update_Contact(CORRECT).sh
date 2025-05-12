curl --request PUT \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts/{6821650eb222a7e8fb7bccf4}' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE2NGFmYjIyMmE3ZThmYjdiY2NmMCIsImlhdCI6MTc0NzAxODkzNCwiZXhwIjoxNzQ3MDIyNTM0fQ.lNulZ_nkmkFy7pxefRHa_2_qkRRffYGdpHSoQqE2Vok' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Updated Contact Name",
    "email": "updatedcontact@example.com",
    "phone": "1234567890"
  }'
