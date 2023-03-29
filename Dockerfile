# Use the latest version of Busybox as the base image
FROM busybox:latest

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy index.html from the local directory to the container's html directory
COPY index.html .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Busybox HTTP server to serve the index.html file
CMD ["httpd", "-f", "-p", "80", "-h", "/var/www/html"]