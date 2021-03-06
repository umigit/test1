FROM python:3.7.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN pip install pip -U
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
