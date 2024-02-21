# Go environment with MySQL in docker
docker compose to deploy completely isolated Go dev env with full ssh access and its own MySQL in 2 min

## setup
check example.env and example.authorized_keys and save them as .env and authorized_keys, respectively

## run
`docker compose up -d` will start both containers, with sshd listening at 0.0.0.0:2022, and mysqld available inside of go contaner at db:3306 and outside at 0.0.0.0:3336 (if you don't want MySQL to be exposed just comment out corresponding line in docker-compose.yml)
