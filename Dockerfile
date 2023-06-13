# Use the official Nginx image as the base image
FROM nginx:latest

WORKDIR /usr/share/nginx/html
COPY . .


# Copy the index.html file from the /helloworld directory to the default Nginx web root
#COPY /helloworld/index.html /usr/share/nginx/html

# Expose port 80 to allow incoming traffic
EXPOSE 80
CMD ["service", "nginx", "restart"]
