FROM python:3.11-slim-buster

#FROM python:3.12-rc-slim-bookworm

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8033", "app:app"]