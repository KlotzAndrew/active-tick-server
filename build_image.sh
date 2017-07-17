#!/usr/bin/env bash

set -e

docker build -t klotzandrew/at_server .

docker push klotzandrew/at_server
