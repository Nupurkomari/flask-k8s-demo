# Use official Python image as base
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all app files to container
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]
