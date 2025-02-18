FROM python:3.9
WORKDIR /app
COPY . .

RUN python -m venv /opt/venv

# Activate the virtual environment and install dependencies
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install -r requirements.txt
RUN python manage.py migrate

CMD ["python","manage.py","runserver"]

EXPOSE 8000
