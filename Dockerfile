FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
ADD . /app/
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
RUN pip freeze > requirements.txt
COPY . /app/

