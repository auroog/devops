# Use the Python 3.13 image based on Bullseye
FROM python:3.13-bullseye

# Update apt package list and upgrade the specific package 'libheif1'
RUN apt-get update && apt-get install --only-upgrade -y libheif1

# Set the working directory inside the container
WORKDIR /myapp

# Copy all files from the current directory on your local machine to /myapp in the container
COPY . /myapp

# Install the required Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run your application when the container starts
CMD ["python", "main.py"]
