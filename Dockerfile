# Use an official Nginx image as a parent image
FROM nginx:alpine

# Copy the static files (HTML, JavaScript, and CSS) to the Nginx web server directory
COPY public/ /usr/share/nginx/html

# Expose port 80 to serve the application
EXPOSE 80