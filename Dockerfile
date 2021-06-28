FROM python

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN git clone https://github.com/anfederico/Flaskex
WORKDIR /usr/src/app/Flaskex

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python", "./app.py"]

