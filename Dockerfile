FROM python:3

LABEL Name=ntag424-backend Version=0.0.1
EXPOSE 5000

WORKDIR /app
ADD . /app

RUN python3 -m pip install -r requirements.txt
RUN cp config.dist.py config.py
CMD [ "python3", "app.py", "--host", "0.0.0.0", "--port", "5000" ]

