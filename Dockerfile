# Use official Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy all project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Koyeb health checks
EXPOSE 8000

# Start the application using Python (since bot.py starts the Flask server in a thread)
CMD ["python", "bot.py"]


