#get python 2.7 as runtime for parent image
FROM python:2.7-slim

#set working directory to /app
WORKDIR /app

#copy current directory conents into container /app dir
COPY . /app

#install needed pakages including from requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#expose port 80
EXPOSE 80

#define an environment variable
ENV NAME World

#Run app.py when the container launches
CMD ["python", "app.py"]

