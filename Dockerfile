#Use an official Python runtime as a parent image
FROM python:latest

MAINTAINER TRADEBYTE

#Create a working directory app
RUN mkdir -p /app

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Export environment variables

RUN export $(cat .env | xargs)

# Run app.py when the container launches
CMD ["python", "hello.py"]

# Make port 8000 available to the world outside this container
EXPOSE 8000
