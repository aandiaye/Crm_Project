# Mon docker file
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY ./mycrm/requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY ./mycrm /code/
EXPOSE 8000
CMD ["python", "./mycrm/manage.py", "runserver", "0.0.0.0:8000"]
