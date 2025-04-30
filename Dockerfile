# Use the official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Koyeb will use
EXPOSE 8000

# Run the application using Gunicorn and bind to the dynamic Koyeb port
CMD ["gunicorn", "bot:app", "--bind", "0.0.0.0:$PORT", "--workers", "1", "--threads", "2"]
