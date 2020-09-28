# quickstart-with-telegraf-influxdb-grafana-monitoring
Quickstart Guide to Setup Telegraf, InfluxDB and Grafana Monitoring using docker-compose

# Setup Monitoring on Local

```
git clone https://github.com/azmathasan92/quickstart-with-telegraf-influxdb-grafana-monitoring.git
cd quickstart-with-telegraf-influxdb-grafana-monitoring
./quickstart.sh

```

**To view logs:**

```
docker-compose logs
```

**Log in to Grafana with admin/admin**

```
http://localhost:3000

Enter the username: admin and password: admin
```

**Configure InfluxDB Datasource in grafana**

```

1. Click on the configuration and select DataSource
2. Click on add DataSource and select influxDB

Provide the following configuration:

Name: InfluxDB
Query Language: InfluxQL
URL: http://localhost:8086
Access: Browser
Database: mydb
HttpMethod: GET

Click on Save and Test

``` 

**Import the telegraf Host metircs dashboard**

```
Click on the create(+) icon and select import 

Click on the import Json file and select the json file from the repo

click on save dashboard

Verify the metrics by clicking the dashboard
```

**Clean Up:**

```
docker-compose stop
docker-compose rm
```

By default telegraf scrape host metrics, If you want configure Telegraf for other metrics like jvm, databases etc, edit the telegraf.conf to yours needs and restart the docker compose.
