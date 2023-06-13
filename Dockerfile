FROM node:16

# Create app directory
WORKDIR /hello-world

COPY . .


EXPOSE 3000
CMD ["npm", "start"]
