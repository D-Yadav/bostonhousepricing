FROM python:3.9 
COPY . /app
WORKDIR /app
RUN pip install -r requiremets.txt
EXPOSE $PORT
CMD gunicorm --workers=4 --bind 0.0.0.0:$PORT app:app