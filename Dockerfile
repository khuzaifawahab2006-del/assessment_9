# Step 1: Pull the latest lightweight Nginx server image based on Alpine Linux
FROM nginx:alpine

# Step 2: Delete default static files provided by the Nginx image
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy our custom Portal webpage code into Nginx execution space
COPY index.html /usr/share/nginx/html/index.html

# Step 4: Expose external web network communication port 80
EXPOSE 80

# Step 5: Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]

