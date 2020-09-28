#!/bin/bash

sudo mkdir -p ~/docker/grafana/data
sudo mkdir -p ~/docker/influxdb/data

docker-compose up -d

sudo chown -R 472:472 ~/docker/grafana/data

echo "Create new database"
curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'

echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"
