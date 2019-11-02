FROM python:stretch
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install flask==1.1.1 pyjwt==1.7.1 gunicorn==19.9.0 pytest==5.2.2

ENTRYPOINT ["gunicorn","-b", ":8080", "main:APP"]