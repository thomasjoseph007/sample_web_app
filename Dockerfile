FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip install flask

COPY app.py /opt/app.py

ENTRYPOINT ["/usr/bin/python3", "/opt/app.py"] flask run --host=0.0.0.0
