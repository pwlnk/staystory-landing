# Use nginx alpine for a lightweight image
FROM nginx:alpine

# Copy the landing page files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images

# Copy custom nginx configuration if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 8888
EXPOSE 8888

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
