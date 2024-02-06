# Use a lightweight base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the application files to the working directory
COPY . .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the nginx web server
CMD ["nginx", "-g", "daemon off;"]
