FROM python:3-slim
LABEL maintainer="paul.basil@gmail.com"
ENV PROJECT_ROOT /apps
WORKDIR $PROJECT_ROOT
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD python manage.py runserver 0.0.0.0:80