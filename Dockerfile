# Use the official Nginx image
FROM nginx:alpine

# Copy your index.html into Nginx's default web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP
EXPOSE 8080
