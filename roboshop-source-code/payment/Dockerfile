FROM    python:3.6
RUN     mkdir /app
WORKDIR /app
COPY    requirements.txt .
COPY payment.ini .
COPY payment.py .
COPY rabbitmq.py .
RUN pip3.6 install -r requirements.txt
ENTRYPOINT ["uwsgi", "--ini", "payment.ini"]

