# Use the official Ubuntu image as the base image
FROM ubuntu

# Install Nginx
RUN apt update && apt install -y nginx && apt clean

# Remove the default Nginx configuration file (optional, if needed)
#RUN rm /etc/nginx/sites-enabled/default

# Copy a custom Nginx configuration file (optional)
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose the Nginx default HTTP port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
