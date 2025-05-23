curl --request POST \
  --url 'http://localhost:3000/contacts' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE2NjgwN2RlNTY3OTRmMzhlYzc4OCIsImlhdCI6MTc0NzAxOTM5OCwiZXhwIjoxNzQ3MDIyOTk4fQ.5yOw6ecuhpErnEOPVoYbIjQZOxpclLD4jOvRdPZoXX8' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "",
    "email": "invalid@example.com",
    "phone": ""
  }'