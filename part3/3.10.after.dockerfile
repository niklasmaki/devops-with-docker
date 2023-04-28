FROM python:3.6-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

RUN adduser -D appuser && chown appuser .
USER appuser

CMD python src/app.py
