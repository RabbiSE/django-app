
# Steps:
1. Clone the repo
git clone https://github.com/RabbiSE/django-app.git

2. Build the app using Dockerfile
docker build -t django-app .

3. Create bridge network:
docker network create django-app-network -d bridge

4. Create volume:
docker volume create django-app-mysql-volume

5. run docker-compose file:
docker compose up --build