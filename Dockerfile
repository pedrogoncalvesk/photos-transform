FROM python:2.7

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -U pip setuptools

RUN pip install -r requirements.txt

ADD . /app

CMD ["python", "hog-iterator.py"]