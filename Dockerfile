# Use the official Nginx image
FROM nginx:alpine

# Copy your index.html into Nginx's default web directory
COPY index.html /usr/share/nginx/html/index.html

# Configure nginx to listen on port 8080 instead of 80
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

# Expose port 8080 for HTTP
EXPOSE 8080
