FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /usr/share/nginx/html

# Copy custom HTML file
COPY index.html .

# Expose port 80
EXPOSE 80

# Define command to run nginx
CMD ["nginx", "-g", "daemon off;"]
