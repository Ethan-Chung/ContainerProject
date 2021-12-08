FROM python:3.8.0-buster

#Make a directory for app
WORKDIR /app

#Copy contents into working dir
COPY . . 

#Installing dependencies
COPY requirements.txt . 
RUN pip install -r requirements.txt

#Define the command to start container
ENTRYPOINT [ "python" ]
CMD ["app.py"]

