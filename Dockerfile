# Python version
From python:3.9

# Work directory for the application
WORKDIR /app/backend

# Copy requirements.txt file from local to container
COPY requirements.txt /app/backend

# System updates
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install app dependencies
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

# Copy application codes from local to work directory in the container
COPY . /app/backend

# Define port number
EXPOSE 8000