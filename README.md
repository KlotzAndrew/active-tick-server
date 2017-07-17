sample run command
```bash
docker run -d \
  --name at_server \
  -p 5000:5000 \
  -e CLIENT_PORT="5000" \
  -e SERVER_HOST="activetick1.activetick.com" \
  -e API_KEY="api_key" \
  -e AT_USER_ID="at_user_id" \
  -e AT_PASSWORD="at_password" \
  klotzandrew/at_server
```
