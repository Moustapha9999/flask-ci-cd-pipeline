# Use a minimal base image
FROM python:3.12.alpine

# Set the working directory
WORKDIR /app

# Copy only necessary files
COPY requirements.txt .  

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY app.py . 

# Expose the application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]