FROM nginx:alpine 
#use nginx to serve static files
# FROM = start with this base image
# nginx:alpine = lightweight web server (only ~5MB)
# nginx = the web server software
# alpine = minimal Linux version (small & fast)

#Copy all html , css and images to nginx default directory
COPY *.html /usr/share/nginx/html/
COPY *.css /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.jpg /usr/share/nginx/html/
COPY *.jpeg /usr/share/nginx/html/
COPY *.webp /usr/share/nginx/html/


# Expose port 80 (standard web port)
EXPOSE 80
#tell docker this container run on port 80 