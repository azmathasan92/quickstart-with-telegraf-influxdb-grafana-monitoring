# quickstart-with-telegraf-influxdb-grafana-monitoring
Quickstart Guide to Setup Telegraf, InfluxDB and Grafana Monitoring using docker-compose

# Setup Monitoring on Local

```
git clone https://github.com/azmathasan92/quickstart-with-telegraf-influxdb-grafana-monitoring.git
cd quickstart-with-telegraf-influxdb-grafana-monitoring
./quickstart.sh

```

To view logs:

```
docker-compose logs
```

Log in to Grafana with admin/admin

```
http://localhost:3000

Enter the username: admin and password: admin

then import the host metrics dashboard json to test the monitoring setup.
``` 

Clean Up:

```
docker-compose stop
docker-compose rm
```

By default telegraf scrape host metrics, If you want configure Telegraf for other metrics like jvm, databases etc, edit the telegraf.conf to yours needs and restart the docker compose.
