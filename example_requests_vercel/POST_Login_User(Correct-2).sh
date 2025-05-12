curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/users/login' \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "newuser23",
    "email":"newuser@example23.com",
    "password": "securepassword123"
    }'