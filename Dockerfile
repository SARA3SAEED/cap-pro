
# Dockerfile

# Step 1: Use an official Python image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 for Flask
EXPOSE 5000

# Step 6: Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Step 7: Run the Flask application
CMD ["flask", "run"]