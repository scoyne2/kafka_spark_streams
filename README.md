1. Get twitter credentials
2. Setup [Confluent Clud Free](https://www.confluent.io/get-started/) and get [api credentials](https://docs.confluent.io/cloud/current/access-management/authenticate/api-keys/api-keys.html) and [create topic](https://docs.confluent.io/cloud/current/get-started/index.html#step-2-create-a-ak-topic) with 6 partitions.
3. Setup [DataBricks community cloud](https://databricks.com/try-databricks)
4. Load the Databricks Notebook
5. Create env file
6. Build and run the Docker Container
  ```
  docker build -t kafka_demo .
  docker run -it kafka_demo producer.py
  ```
