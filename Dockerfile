FROM tiangolo/uwsgi-nginx-flask:python3.6
WORKDIR /app/
COPY templates /app/templates
COPY requirements.txt /app/
RUN pip install -r ./requirements.txt
COPY app.py __init__.py /app/
