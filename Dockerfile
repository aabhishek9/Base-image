FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies (e.g., from requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container (adjust based on your app)
EXPOSE 8080

# Define environment variable (optional)
ENV APP_ENV=production

# Run the application
CMD ["python", "app.py"]
