FROM python

ENV FLASK_APP=run.py

ADD requirements.txt requirements.txt
ADD run.py run.py

RUN pip install -r requirements.txt

CMD flask run --host=0.0.0.0

