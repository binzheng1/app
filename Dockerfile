# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set environment variables for Back4App
ENV PORT 8050

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on (Back4App uses the PORT environment variable)
EXPOSE 8050

# Define environment variable for production
ENV DASH_ENV=production

# Command to run your Dash app using gunicorn
CMD gunicorn --bind 0.0.0.0:$PORT myfirstapp:server

