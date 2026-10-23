# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
# Replace '/app/your_directory_path' with the actual path you want to use
WORKDIR /app/

# Install system dependencies if needed (uncomment below if your app requires compilation tools)
# RUN apt-get update && apt-get install -y --no-install-recommends build-essential

# Upgrade pip and install Python dependencies if a requirements.txt exists
COPY copy.txt

# Copy the rest of your project code into the container's working directory
COPY . .

# Specify the command to run your application (modify as needed)
CMD ["python", "main.py"]