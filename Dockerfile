FROM php:fpm-alpine

# We cannot put webgrind in root due to
# https://github.com/jokkedk/webgrind/issues/130
RUN mkdir -p /var/www/html && \
  cd /tmp && \
  apk add --no-cache git graphviz python3 && \
  git clone https://github.com/jokkedk/webgrind.git && \
  rm -rf /var/www/html/* && \
  echo '<a href="/webgrind">GO TO WEBGRIND</a>' > /var/www/html/index.html && \
  mv webgrind /var/www/html/ && \
  apt-get -y remove git
