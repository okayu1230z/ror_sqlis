#!/bin/bash
set -e

rm -f /myapp/tmp/pids/server.pid

rails db:migrate:reset
rake db:seed

exec "$@"