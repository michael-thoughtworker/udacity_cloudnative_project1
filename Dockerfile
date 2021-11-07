FROM python:2.7

WORKDIR /usr/src/app

ADD ./techtrends /usr/src/app

RUN pip install -r requirements.txt

RUN python init_db.py

EXPOSE 3111

CMD ["python", "./app.py"]