1. Get [Twitter API Credentials](https://developer.twitter.com/en/docs/twitter-api/getting-started/getting-access-to-the-twitter-api)
2. Create env file named `config.env` with the below (replacing XXX with your actual keys). This will be ignored by .gitignore. 
   ```
   CONSUMER_KEY = "XXX"
   CONSUMER_SECRET = "XXX"
   ACCESS_TOKEN_KEY = "XXX"
   ACCESS_TOKEN_SECRET = "XXX"
   ```
3. Setup [Confluent Cloud Free](https://www.confluent.io/get-started/) and get [api credentials](https://docs.confluent.io/cloud/current/access-management/authenticate/api-keys/api-keys.html) and [create topic](https://docs.confluent.io/cloud/current/get-started/index.html#step-2-create-a-ak-topic) with 6 partitions.
4. Setup [DataBricks community cloud](https://databricks.com/try-databricks)
5. Load the Databricks Notebook
6. Create your config file `vi ~/.confluent/python.config` replace HOST, API_KEY, API_SECRET with the values from Confluent Cloud
   ```
   #kafka
   bootstrap.servers={HOST}:9092
   security.protocol=SASL_SSL
   sasl.mechanisms=PLAIN
   sasl.username={API_KEY}
   sasl.password={API_SECRET}   
   ```
9. Build and run the Docker Container `bash run.sh`
