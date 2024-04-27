# Use the official Python image as a base
FROM python:3.8

# Set environment variables for Python to run in unbuffered mode
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . /app/

# Expose the port that the development server will run on
EXPOSE 8000

# Change directorycls
WORKDIR /app/mysite/

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
