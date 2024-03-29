# Pull base image
FROM python:rc-alpine

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD . /code

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt