# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML file to the Nginx html directory 
COPY index.html /usr/share/nginx/html/

# Expose the port that Nginx will use
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
