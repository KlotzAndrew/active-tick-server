#!/usr/bin/env bash

code/atfeed-httpserver/bin/ActiveTickFeedHttpServer \
  0.0.0.0 \
  ${CLIENT_PORT} \
  ${SERVER_HOST} \
  ${API_KEY} \
  ${AT_USER_ID} \
  ${AT_PASSWORD}
