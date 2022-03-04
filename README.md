# cpcuv2x/infra

### How to Setup
1. Clone this repo.
2. `cd` into folder "compose".
3. Add .env here.
4. Run `docker-compose up -d --build`.
5. Run `docker-compose exec web-service pnpx prisma migrate dev`.
6. Run `docker-compose exec kafka /bin/kafka-topics --bootstrap-server localhost:9092 --create --topic cpcuv2x-json-events`.
7. Run `docker-compose restart web-service`.
