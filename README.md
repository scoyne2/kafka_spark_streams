1. Get [Twitter API Credentials](https://developer.twitter.com/en/docs/twitter-api/getting-started/getting-access-to-the-twitter-api)
2. Create env file named `.env` with the below (replacing XXX with your actual keys). This will be ignored by .gitignore. 
   ```
   CONSUMER_KEY = "XXX"
   CONSUMER_SECRET = "XXX"
   ACCESS_TOKEN_KEY = "XXX"
   ACCESS_TOKEN_SECRET = "XXX"
   ```
3. Create a free [Confluent Cloud account](https://www.confluent.io/get-started/)
4. Create a [Kafka cluster in Confluent Cloud](https://docs.confluent.io/cloud/current/get-started/index.html#step-1-create-a-ak-cluster-in-ccloud)
5. Create a [Kafka topic](https://docs.confluent.io/cloud/current/get-started/index.html#step-2-create-a-ak-topic) named `streaming_test_6` with 6 partitions.
6. Get [api credentials](https://docs.confluent.io/cloud/current/access-management/authenticate/api-keys/api-keys.html) and 
7. Setup [DataBricks community cloud](https://databricks.com/try-databricks)
8. Load the Databricks Notebook
9. Create your config file `vi ~/.confluent/python.config` replace HOST, API_KEY, API_SECRET with the values from Confluent Cloud
   ```
   #kafka
   bootstrap.servers={HOST}:9092
   security.protocol=SASL_SSL
   sasl.mechanisms=PLAIN
   sasl.username={API_KEY}
   sasl.password={API_SECRET}   
   ```
9. Build and run the Docker Container `bash run.sh`
