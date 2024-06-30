# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /python-docker

# Copy project files
COPY static /python-docker/static
COPY templates /python-docker/templates
COPY app.py /python-docker/app.py
COPY requirements.txt /python-docker/requirements.txt
COPY wsgi.py /python-docker/wsgi.py
COPY README.md /python-docker/README.md
COPY LICENSE /python-docker/LICENSE

# Install Python and pip
RUN apt update -y && apt install -y python3 python3-pip python3-venv

# Create and activate virtual environment
RUN python3 -m venv portfolio
RUN /bin/bash -c "source portfolio/bin/activate"

# Install project requirements
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8080

# Start the Flask application with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]
