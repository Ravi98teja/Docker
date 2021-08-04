FROM python:3.6

WORKDIR /fastapi-app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app/ ./app

CMD ["python","./app/main.py"]

