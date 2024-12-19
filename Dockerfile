# Use the official Python image from the Docker Hub
FROM python:3.9-slim AS base

# Set the working directory in the container
WORKDIR /app
# Copy the requirements.txt file into the container
COPY . .

# Install the necessary packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]

