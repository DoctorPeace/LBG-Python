# syntax=docker/dockerfile:1

 

# use python 3.11 release

FROM python:3.11

# set a directory for the app

WORKDIR /app

# copy all the files to the container (source followed by destination)

COPY requirements.txt .

# install dependencies

RUN pip install -r requirements.txt
COPY . .

# define the port number the container should expose

EXPOSE 3000

# execute the command

CMD ["python", "lbg.py"]