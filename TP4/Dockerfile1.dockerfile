FROM python:3.11

RUN apt update
RUN apt upgrade
RUN pip3 install --upgrade pip3
RUN pip install flask-mysqldb
RUN pip install mysql-connector-python

COPY index.html /srv/
COPY app_1.py /srv/

CMD ["flask","--app","/srv/app1","run","--host=0.0.0.0"]