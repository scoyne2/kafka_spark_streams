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
7. Setup a [Databricks community cloud account](https://databricks.com/try-databricks)
8. Create a [Databricks cluster](https://docs.databricks.com/clusters/create.html)
9. Import the [kafka_test notebook](https://databricks-prod-cloudfront.cloud.databricks.com/public/4027ec902e239c93eaaa8714f173bcfc/3402980763131908/2678721410506964/1622946240933120/latest.html)
10. In the first cell of the notebook, replace the XXX with your values for `confluentApiKey`, `confluentSecret` and `host` which you will find in the Confluent UI in step 6
11. Create a kafka config file by running `vi ~/.confluent/python.config`. In the file replace HOST, API_KEY, API_SECRET with the values from Confluent Cloud
   ```
   #kafka
   bootstrap.servers={HOST}:9092
   security.protocol=SASL_SSL
   sasl.mechanisms=PLAIN
   sasl.username={API_KEY}
   sasl.password={API_SECRET}   
   ```
9. Build and run the Docker Container `bash run.sh`
