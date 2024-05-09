FROM python:3.12
ENV PYTHONBUFFERED 1
WORKDIR /app
ADD . /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 8000
CMD [ "python","manage.py","runserver" ]
