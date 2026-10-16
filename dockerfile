
FROM httpd:2.4-alpine

# Copy portfolio files into Apache's web root
COPY index.html /usr/local/apache2/htdocs/index.html
COPY style.css /usr/local/apache2/htdocs/style.css
COPY script.js /usr/local/apache2/htdocs/app.js

# Apache listens on port 80
EXPOSE 80

CMD ["httpd-foreground"]
