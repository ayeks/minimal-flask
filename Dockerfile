FROM python:slim

ENV FLASK_APP=run.py

ADD requirements.txt requirements.txt
ADD run.py run.py

RUN pip install -r requirements.txt

# TODO: running it as root is not a good idea
# TODO: running it with flask and not a proper server is not a good idea either
CMD flask run --host=0.0.0.0

