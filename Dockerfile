# Use an existing image as a base
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the app will be running on
EXPOSE 8000

# Run the command to start the app
CMD ["python", "app.py"]


# In this example, we are using the python:3.8-slim-buster image as the base image, setting the working directory to /app, 
# and copying the contents of the current directory into the container. We then install the required packages using pip, 
# expose port 8000, and start the app using the CMD command.