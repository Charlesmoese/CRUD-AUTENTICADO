curl --request POST \
  --url 'http://localhost:3000/users/register' \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "newuser02",
    "email":"newuser02@example.com",
    "password": "securepassword123"
    }'