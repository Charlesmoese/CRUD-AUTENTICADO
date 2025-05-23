curl --request PUT \
  --url 'http://localhost:3000/contacts/{6821672b7de56794f38ec78c}' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MjE2NjgwN2RlNTY3OTRmMzhlYzc4OCIsImlhdCI6MTc0NzAxOTM5OCwiZXhwIjoxNzQ3MDIyOTk4fQ.5yOw6ecuhpErnEOPVoYbIjQZOxpclLD4jOvRdPZoXX8' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Updated Contact Name",
    "email": "updatedcontact@example.com",
    "phone": "1234567890"
  }'