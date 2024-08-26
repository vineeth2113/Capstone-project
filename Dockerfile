#Dockerfile
#Using the Ngnix webserver base image.
FROM nginx:latest

#copying the files from machine to container.
COPY build /usr/share/nginx/html

#Exposing the port.
EXPOSE 80

#command to start the command.
CMD ["nginx", "-g", "daemon off;"]
