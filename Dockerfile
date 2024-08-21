FROM ubuntu:22.04

WORKDIR /tests

RUN apt-get update && apt-get install -y python3 && apt-get install -y build-essential

COPY . .

RUN chmod +x test.py

ENTRYPOINT ["python3", "test.py"]
