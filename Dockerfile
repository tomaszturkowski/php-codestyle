FROM library/php:7.1-cli
MAINTAINER Tomasz Turkowski <tomasz.turkowski.de@gmail.com>

RUN apt-get update && apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

RUN curl -OLs http://static.phpmd.org/php/latest/phpmd.phar
RUN mv phpmd.phar /usr/local/bin/phpmd
RUN chmod +x /usr/local/bin/phpmd

RUN curl -OLs https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
RUN mv phpcs.phar /usr/local/bin/phpcs
RUN chmod +x /usr/local/bin/phpcs

RUN curl -OLs https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
RUN mv phpcbf.phar /usr/local/bin/phpcbf
RUN chmod +x /usr/local/bin/phpcbf

WORKDIR /var/www

ENTRYPOINT ["docker-php-entrypoint"]
