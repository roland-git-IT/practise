FROM python:3

WORKDIR /usr/src/app/

COPY ./practise.zip ./
RUN unzip practise.zip
WORKDIR /usr/src/app/practise/
RUN ls -a
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "app.py" ]
