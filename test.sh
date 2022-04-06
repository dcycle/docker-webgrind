set -e
docker pull php:apache
docker build -t local-dcycle-webgrind-image .
