#!/bin/bash

# Configure gitweb.conf
## Set base URL
## If BASE_URL isn't set, 'localhost' will be used.
echo "Setting base URL..."

if [[ -z ${BASE_URL} ]]
then
  echo "BASE URL is not specified. 'localhost' will be used."
else
  echo "'${BASE_URL}' is specified as GitWeb's base url."
  sed -i 's/localhost/${BASE_URL}/g' /etc/gitweb.conf
fi

echo "Done."

# Execute lighttpd
echo "Executing lighttpd..."

lighttpd -D -f /etc/lighttpd/lighttpd.conf
