if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

docker stop $(docker ps -a -q)
docker build -t kafka_demo:latest .

docker run -v ~/.confluent/python.config:/root/.confluent/librdkafka.config -e CONSUMER_KEY=$CONSUMER_KEY -e CONSUMER_SECRET=$CONSUMER_SECRET -e ACCESS_TOKEN_KEY=$ACCESS_TOKEN_KEY -e ACCESS_TOKEN_SECRET=$ACCESS_TOKEN_SECRET kafka_demo
