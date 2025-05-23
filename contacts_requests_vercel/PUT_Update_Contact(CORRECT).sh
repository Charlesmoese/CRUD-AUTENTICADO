curl --request PUT \
  --url 'https://crud-autenticado-kappa.vercel.app/contacts/{6821695ddb46ddbece1e9ef4}' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE2OGZhZGI0NmRkYmVjZTFlOWVlZSIsImlhdCI6MTc0NzAyMDAzNSwiZXhwIjoxNzQ3MDIzNjM1fQ.SoS1LDVSZXeXkePNxnI7yu38Z7lVOsOGExycmIXVrWU' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Updated Contact Name",
    "email": "updatedcontact@example.com",
    "phone": "1234567890"
  }'
