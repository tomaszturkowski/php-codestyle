# PHP Codestyle Docker Container
Simple container based on php7.1-cli with tools phpmd, phpcs, phpcbf onboard.

### Working directory
Default working directory is set to `/var/www`. Keep in mind to change it using `--workdir` parameter.

### Mounting data
You have to mount data to the container to be able to run the tools against your code. To do that use `--volume` or     `--volumes-from` parameter.

### Usage

##### phpmd
`docker run [--volume --workidr] tomaszturkowski/php-codestyle phpmd --help`

##### phpcs
`docker run [--volume --workidr] tomaszturkowski/php-codestyle phpcs --help`

##### phpcbf
`docker run [--volume --workidr] tomaszturkowski/php-codestyle phpcbf --help`
