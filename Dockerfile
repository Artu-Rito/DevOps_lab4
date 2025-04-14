FROM python:3.11

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY src /app/src

ENV PYTHONPATH=/app

CMD ["python", "-m", "src.main"]