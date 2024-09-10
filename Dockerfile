# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy everything from the current directory (src) to the Nginx directory
COPY . /usr/share/nginx/html

# Set the correct file permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
