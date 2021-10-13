FROM python:3.7-slim

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -U -r /tmp/requirements.txt

COPY producer.py .
CMD ["producer.py"]
ENTRYPOINT ["python3"]
