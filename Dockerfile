# Use a lightweight web server to serve the static site
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy website files into nginx web root
# Root index.html
COPY index.html /usr/share/nginx/html/index.html

# Calculator app (and its assets)
COPY calculator/ /usr/share/nginx/html/calculator/

EXPOSE 80

# nginx:alpine already has a working default command

