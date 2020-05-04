FROM lsiobase/nginx:3.9

RUN \
	apk add --no-cache --upgrade \
	curl \
	php7-curl \
	php7-ldap \
	php7-pdo_sqlite \
	php7-sqlite3 \
	php7-zip

# add local files
COPY root/ /
COPY . /var/www/html/.

# ports and volumes
VOLUME /config
