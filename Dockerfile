# Mon docker file test
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY ./mycrm/requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY ./mycrm /code/
EXPOSE 8000
CMD ["python", "./mycrm/manage.py", "runserver", "45.90.220.14:8000"]

echo \ "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
