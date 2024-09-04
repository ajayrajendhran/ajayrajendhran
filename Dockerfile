# Use the official Python image
FROM python:3.9-slim

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Install Flask
RUN pip install flask

# Copy the Flask application into the container
COPY app.py /app/app.py

# Set the working directory
WORKDIR /app

# Expose port 5000
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run"]
