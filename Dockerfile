# Use Python 3.11.9 on Bullseye Debian as the base image
FROM python:3.11.9-bullseye

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the local files (application code) into the container
COPY . .

# Install Python dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 on the container
EXPOSE 5000

# Set environment variables for Flask application
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Specify the default command to run when the container starts
CMD ["flask", "run"]
