FROM debian:jessie

# Install required packages.
RUN apt-get update
RUN apt-get install -y git gitweb lighttpd highlight

# Copy configuration files and an entrypoint script to the image.
ADD ./docker-entrypoint.sh /
ADD ./gitweb.conf /etc/gitweb.conf
ADD ./lighttpd.conf /etc/lighttpd/lighttpd.conf

# Expose an HTTP and a SSH port.
EXPOSE 80
EXPOSE 22

ENTRYPOINT ["/docker-entrypoint.sh"]
