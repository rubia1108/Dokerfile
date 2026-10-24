FROM python:3.11-slim

WORKDIR /app

COPY ruby.txt /app/ruby.txt
COPY main.py /app/main.py

CMD ["python", "-u", "main.py"]