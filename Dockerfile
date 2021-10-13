FROM python:3.7-slim

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -U -r /tmp/requirements.txt

COPY producer/ /producer

CMD [ "python3", "producer/producer.py", "-f", "/root/.confluent/librdkafka.config", "-t", "streaming_test_6" ]