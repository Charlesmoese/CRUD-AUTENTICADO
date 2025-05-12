curl --request POST \
  --url 'https://crud-autenticado-kappa.vercel.app/users/login' \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "newuser2",
    "email":"newuser@example2.com",
    "password": "securepassword123"
    }'