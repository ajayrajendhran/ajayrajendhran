# Use the official Nginx image as a base
FROM nginx:latest

# Copy custom Nginx configuration file (if needed)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files to the Nginx HTML directory
COPY html/ /usr/share/nginx/html/

