1. Get twitter credentials
2. Setup [Confluent Cloud Free](https://www.confluent.io/get-started/) and get [api credentials](https://docs.confluent.io/cloud/current/access-management/authenticate/api-keys/api-keys.html) and [create topic](https://docs.confluent.io/cloud/current/get-started/index.html#step-2-create-a-ak-topic) with 6 partitions.
3. Setup [DataBricks community cloud](https://databricks.com/try-databricks)
4. Load the Databricks Notebook
5. Create your config file `vi ~/.confluent/python.config` replace HOST, API_KEY, API_SECRET with the values from Confluent Cloud
   ```
   #kafka
   bootstrap.servers={HOST}:9092
   security.protocol=SASL_SSL
   sasl.mechanisms=PLAIN
   sasl.username={API_KEY}
   sasl.password={API_SECRET}   
   ```
7. Create env file named `config.env` with the below (replacing XXX with your actual keys). This will be ignored by .gitignore. 
   ```
   CONSUMER_KEY = "XXX"
   CONSUMER_SECRET = "XXX"
   ACCESS_TOKEN_KEY = "XXX"
   ACCESS_TOKEN_SECRET = "XXX"

   ```
9. Build and run the Docker Container
  ```
  docker build -t kafka_demo .
  docker run -v ~/.confluent/python.config:/root/.confluent/librdkafka.config -it --rm kafka_demo bash
  docker run -v $HOME/.confluent/librdkafka.config:/root/.confluent/librdkafka.config -it --rm cloud-demo-python bash
  ```
