<<<<<<< HEAD
FROM docker.io/library/nginx:latest

COPY container/ /usr/share/nginx/html/
=======
FROM pierrezemb/gostatic
COPY ./kevinisageek-org.fly.dev/ /srv/http/

>>>>>>> f8714703a9f6681e0722d3bd954bc5db32f019f0
