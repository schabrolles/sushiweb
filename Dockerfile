FROM registry.access.redhat.com/ubi8/httpd-24:1-143

COPY website/ /var/www/html

RUN ARCH=$(uname -m) \
	&& sed s/_ARCHITECTURE_/$ARCH/ /var/www/html/index_template.html > /var/www/html/index.html
