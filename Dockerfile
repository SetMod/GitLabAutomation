# Use an official Python runtime as a parent image
FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

# Define the command to run your application
CMD ["python3", "app.py"]
