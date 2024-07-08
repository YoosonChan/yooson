FROM debian:12

# Install curl
RUN apt-get update && apt-get install curl sudo -y

# Install Nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install nodejs -y

# Install Nginx
RUN sudo apt-get install nginx -y

# Prepare the built file 
RUN mkdir /home/yooson
COPY ./ /home/yooson
WORKDIR /home/yooson

# Building
RUN npm install && npm run build && rm /var/www/html/* && cp -r /home/yooson/dist/* /usr/share/nginx/html

# Remove source code and Nodejs
RUN rm -rf /home/yooson && sudo apt-get remove -y nodejs

# Remove apt-get update downloaded files && set timezone and update configure
RUN rm -rf /var/lib/apt/lists/* && echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

# Mount volumes
VOLUME ["/etc/nginx/conf.d", "/home/certs"]

# Run Nginx in foreground
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

# Expose port
EXPOSE 80
EXPOSE 443
