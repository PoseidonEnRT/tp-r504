FROM python:3.11

RUN apt update
RUN apt upgrade
RUN pip install --upgrade pip
RUN pip install flask-mysqldb
RUN pip install mysql-connector-python

COPY index.html /srv/
COPY app_1.py /srv/

CMD ["flask","--app","/srv/app_1","run","--host=127.0.0.1"]