FROM python:3.12.4

RUN pip install pipenv

RUN mkdir app/
COPY . /app
WORKDIR /app
RUN pipenv install --ignore-pipfile

ENTRYPOINT [ "pipenv", "run", "gunicorn" ]
CMD [ "-w", "4", "-b", "0.0.0.0:80", "api:api_app" ]
