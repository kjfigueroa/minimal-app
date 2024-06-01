FROM python:3.12-alpine

# Python Environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Make Working Directory
WORKDIR /minimal-app

# Copy the requirements to install in the Container
COPY requirements.txt .

# Installing dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copying the application code
COPY . .

# Port to run the application
EXPOSE 3000

# Command to run when Container is started
CMD ["python", "source/minimal-flask.py"]