curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/users/register' \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "newuser",
    "email":"newuser@example.com",
    "password": "securepassword"
    }'