FROM nginx:alpine 
#use nginx to serve static files

#Copy all html , css and images to nginx default directory
COPY *.html /usr/share/nginx/html/
COPY *.css /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.jpg /usr/share/nginx/html/
COPY *.jpeg /usr/share/nginx/html/
COPY *.webp /usr/share/nginx/html/

RUN mv /usr/share/nginx/html/homepage.html /usr/share/nginx/html/index.html
# Expose port 80 (standard web port)
EXPOSE 80
