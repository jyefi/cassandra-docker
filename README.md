# cassandra-docker
docker shell and compose to get cassandra services

##Use

To get Cassandra docker and run the cqlsh console:
wget https://links.uv.es/jaiyever/docker.sh && sh docker.sh

To stop and remove docker:
sh stop_cassandra.sh

The scripts makes 3 directories:
-- Cassandra
----data
----scripts

and make volumes on data and scripts
