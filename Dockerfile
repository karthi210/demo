# Use lightweight Python image
FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Copy static website files
COPY index.html .
COPY style.css .
COPY script.js .

# Expose port 8000
EXPOSE 8000

# Start Python HTTP server on port 8000
CMD ["python", "-m", "http.server", "8000"]
