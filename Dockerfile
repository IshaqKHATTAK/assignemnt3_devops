FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install Flask==0.12.2
RUN pip install scikit-learn
RUN pip install pandas


ENV DB_HOST=ubuntu
ENV DB_USER=root
ENV DB_PASSWORD=test
ENV DB_NAME=mariadb

EXPOSE 8000

CMD ["python","application.py"]
