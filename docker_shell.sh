# Create "cassandra" folder (si aún no existe)
if [ ! -d "cassandra" ]; then
  mkdir cassandra
fi

# Create folders "data" y "scripts" inside "cassandra" folder
mkdir -p cassandra/data
mkdir -p cassandra/scripts

# Download "docker-compose.yml" file from GitHub
curl -o docker-compose.yml https://raw.githubusercontent.com/jyefi/cassandra-docker/main/docker-compose.yml

# Executes docker-compose up
docker-compose up
