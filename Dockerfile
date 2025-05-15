# Use the official NGINX image as a base
FROM nginx:latest

# Copy custom content (optional)
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

