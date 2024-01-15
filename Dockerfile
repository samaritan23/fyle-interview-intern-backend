FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y dos2unix
RUN dos2unix /app/run.sh
RUN chmod +x run.sh
CMD ["bash", "run.sh"]