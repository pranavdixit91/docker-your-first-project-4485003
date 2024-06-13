# This is comment 
# How to Write -> INSTRUCTION ARGUMENTS 
# E.g.            WORKDIR     /app  

# Use Official Python runtime as Base Image
FROM python:3.12-rc-bookworm

# Set working direcotry in Container to /app
WORKDIR /app

# Copy current Directory contents into Container at the /app location 
# COPY <From_Machine_location> <Location_in_container_where_we_want_to_copy>
COPY . /app

# Install required packages which are needed to run the application
# --no-cache-dir -> Tells not to Cache Libs in Cache Dir
# - pip install is to install packages of Python
RUN pip install --no-cache-dir -r requirements.txt

# Set Env Variable for Flask 
ENV FLASK_APP=app.py

# Run command to run the Flask App 
CMD ["flask", "run","--host=0.0.0.0"]