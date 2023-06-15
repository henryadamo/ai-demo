FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN ai_demo create-db
RUN ai_demo populate-db
RUN ai_demo add-user -u admin -p admin
EXPOSE 5000
CMD ["ai_demo", "run"]
