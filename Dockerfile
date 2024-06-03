FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
COPY . /app

CMD python3 bot.py & python3 bot2.py
