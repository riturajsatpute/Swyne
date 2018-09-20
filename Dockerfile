FROM python:3

# Set the working directory to /app
WORKDIR /bryne

# Copy the current directory contents into the container at /app
ADD . /bryne

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# EXPOSE port 8000 to allow communication to/from server
EXPOSE 8000 8001

# CMD specifcies the command to execute to start the server running.
CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]
# done!