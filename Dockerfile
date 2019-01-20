FROM debian:jessie

# Install required packages.
RUN apt-get update
RUN apt-get install -y git gitweb lighttpd highlight

# Copy configuration files and an entrypoint script to the image.
ADD ./docker-entrypoint.sh /
ADD ./gitweb.conf /etc/gitweb.conf
ADD ./lighttpd.conf /etc/lighttpd/lighttpd.conf

# Expose an HTTP port. SSH will not be used.
EXPOSE 80

#ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
ENTRYPOINT ["/docker-entrypoint.sh"]
