# Active Tick Server

Get up and running quickly with the active tick api!

To make api requests you need to start an active tick server, which is a web
server that handles requests to active tick for data.

By default, this will run on port 5000 of your docker host (e.g. `http://192.168.99.100:5000/quoteData?symbol=GOOG+AAPL&field=4+10+11`).

### What you need
Valid Active Tick credentials
  * API_KEY
  * USER_ID
  * PASSWORD

### Multiple ways to get started


docker run command

```bash
# replace env vars with your own
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

docker-compose

```bash
cp .env.sample .env # replace .env variables with your own
docker-compose -f docker-compose-production.yml up
```

alternatively, clone the repo and call the init script directly
```bash
git clone https://github.com/KlotzAndrew/active-tick-server.git
cd active-tick-server

cp .env.sample .env # replace .env variables with your own
./atfeed-httpserver/bin/init.sh
```
