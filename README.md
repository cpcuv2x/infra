# cpcuv2x/infra

### How To Setup On Local
1. Clone this repo.
2. `cd` into folder "dev-local".
3. Add .env here.
4. Run `docker-compose up -d --build`.
5. Run `docker-compose exec web-service pnpx prisma migrate dev`.
6. Run `docker-compose exec kafka /bin/kafka-topics --bootstrap-server localhost:9092 --create --topic cpcuv2x-events-web-service`.
7. Run `docker-compose exec kafka /bin/kafka-topics --bootstrap-server localhost:9092 --create --topic cpcuv2x-events-telegraf`.
8. Run `docker-compose restart web-service`.
9. Open "http://localhost:8086". Login with INFLUXDB_INIT_USERNAME and INFLUXDB_INIT_PASSWORD.
10. Go to Data > Telegraf > Create Configuration > Docker > Fill in name and description > Create and Verify. 
11. Replace .env TELEGRAF_INFLUX_TOKEN value with the provided API token.
13. Run `docker-compose up -d`.
