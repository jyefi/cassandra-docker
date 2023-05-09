# Create "cassandra" folder (si aún no existe)
if [ ! -d "cassandra" ]; then
  mkdir cassandra
fi

# Create folders "data" y "scripts" inside "cassandra" folder
mkdir -p cassandra/data
mkdir -p cassandra/scripts

# Starts Cassandra Docker
docker run -d --name cassandra-lab -v $(pwd)/cassandra/data:/var/lib/cassandra -v $(pwd)/cassandra/scripts:/scripts cassandra:latest

echo "Waiting 4 Cassandra starts..."
while ! docker logs cassandra-lab | grep -q "Startup complete"; do
    sleep 1
done

# Executes cqlsh console
docker exec -it cassandra-lab cqlsh

echo "docker stop cassandra-lab">stop_cassandra.sh
echo "docker rm cassandra-lab">>stop_cassandra.sh
echo "rm $(realpath $0)">>stop_cassandra.sh

echo "To eliminates docker run \"sh stop_cassandra.sh\""

#harakiri
rm "$0"
