# Use nginx as base image
FROM nginx:alpine   

# Copy the static files to nginx's default serving directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]